; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCSetIPv4Parameters.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCSetIPv4Parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IPCSetIPv4Parameters(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = icmp eq %struct.TYPE_14__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = icmp eq %struct.TYPE_15__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %5
  store i32 0, i32* %6, align 4
  br label %96

22:                                               ; preds = %18
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = call i64 @CmpIpAddr(i32* %24, %struct.TYPE_15__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = call i32 @Copy(i32* %31, %struct.TYPE_15__* %32, i32 4)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = call i64 @CmpIpAddr(i32* %35, %struct.TYPE_15__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = call i32 @Copy(i32* %42, %struct.TYPE_15__* %43, i32 4)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = call i64 @CmpIpAddr(i32* %49, %struct.TYPE_15__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %58 = call i32 @Copy(i32* %56, %struct.TYPE_15__* %57, i32 4)
  br label %69

59:                                               ; preds = %40
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = call i32 @IsZeroIP(i32* %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = call i32 @Zero(i32* %67, i32 4)
  br label %69

69:                                               ; preds = %65, %54
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = call i32 @GetBroadcastAddress4(i32* %71, %struct.TYPE_15__* %72, %struct.TYPE_15__* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = icmp ne %struct.TYPE_15__* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %80, 1
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %86 = call i64 @Cmp(i32* %84, %struct.TYPE_15__* %85, i32 4)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  store i32 1, i32* %12, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %92 = call i32 @Copy(i32* %90, %struct.TYPE_15__* %91, i32 4)
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %77, %69
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %21
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @CmpIpAddr(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @Copy(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @IsZeroIP(i32*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @GetBroadcastAddress4(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i64 @Cmp(i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
