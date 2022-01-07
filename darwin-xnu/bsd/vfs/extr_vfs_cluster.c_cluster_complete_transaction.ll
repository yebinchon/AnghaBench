; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_complete_transaction.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_complete_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@FALSE = common dso_local global i64 0, align 8
@B_TDONE = common dso_local global i32 0, align 4
@CL_ASYNC = common dso_local global i32 0, align 4
@CL_PAGEOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CL_KEEPCACHED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, i8*, i32*, i32, i32)* @cluster_complete_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_complete_transaction(%struct.TYPE_5__** %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  br label %20

20:                                               ; preds = %26, %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = call i32 @buf_biowait(%struct.TYPE_5__* %24)
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %11, align 8
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %5
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %11, align 8
  br label %34

34:                                               ; preds = %43, %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* @B_TDONE, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %11, align 8
  br label %34

47:                                               ; preds = %34
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @CL_ASYNC, align 4
  %52 = load i32, i32* @CL_PAGEOUT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* @CL_PAGEOUT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @vnode_isswap(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %63, %57, %47
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @cluster_iodone(%struct.TYPE_5__* %66, i8* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @CL_ASYNC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %73
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @CL_PAGEOUT, align 4
  %83 = load i32, i32* @CL_KEEPCACHED, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = load i32, i32* @CL_PAGEOUT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @ENXIO, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88, %80
  %93 = load i32, i32* %12, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  br label %103

95:                                               ; preds = %88
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @TRUE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %92
  br label %104

104:                                              ; preds = %103, %76, %73, %65
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %105, align 8
  ret void
}

declare dso_local i32 @buf_biowait(%struct.TYPE_5__*) #1

declare dso_local i64 @vnode_isswap(i32) #1

declare dso_local i32 @cluster_iodone(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
