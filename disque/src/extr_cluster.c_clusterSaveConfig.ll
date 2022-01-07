; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSaveConfig.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSaveConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.stat = type { i64 }

@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@CLUSTER_TODO_FSYNC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterSaveConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %15 = call i64 @clusterGenNodesDescription(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @sdslen(i64 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i32 %18, i32 %21, i32 420)
  store i32 %22, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %86

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @fstat(i32 %26, %struct.stat* %6)
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @sdsgrowzero(i64 %35, i64 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @memset(i64 %41, i8 signext 10, i64 %45)
  br label %47

47:                                               ; preds = %34, %29
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @sdslen(i64 %51)
  %53 = call i64 @write(i32 %49, i64 %50, i64 %52)
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @sdslen(i64 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %86

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @fsync(i32 %68)
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @sdslen(i64 %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @ftruncate(i32 %76, i64 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %75, %70
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @close(i32 %82)
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @sdsfree(i64 %84)
  store i32 0, i32* %2, align 4
  br label %95

86:                                               ; preds = %57, %24
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @close(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @sdsfree(i64 %93)
  store i32 -1, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %81
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @clusterGenNodesDescription(i32) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @sdsgrowzero(i64, i64) #1

declare dso_local i32 @memset(i64, i8 signext, i64) #1

declare dso_local i64 @write(i32, i64, i64) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sdsfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
