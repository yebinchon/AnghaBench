; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_FreeNativeNat.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_FreeNativeNat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeNativeNat(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = icmp eq %struct.TYPE_14__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %132

9:                                                ; preds = %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @Lock(i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 12
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %3, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @AddRef(i32 %24)
  br label %26

26:                                               ; preds = %21, %9
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @Unlock(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = call i32 @TubeFlushEx(%struct.TYPE_13__* %34, i32 1)
  %36 = call i32 @SleepThread(i32 100)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = call i32 @TubeDisconnect(%struct.TYPE_13__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = call i32 @ReleaseTube(%struct.TYPE_13__* %39)
  br label %41

41:                                               ; preds = %33, %26
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = call i32 @TubeDisconnect(%struct.TYPE_13__* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = call i32 @TubeDisconnect(%struct.TYPE_13__* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @Set(i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INFINITE, align 4
  %58 = call i32 @WaitThread(i32 %56, i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ReleaseThread(i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @DeleteLock(i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DeleteLock(i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ReleaseEvent(i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = call i32 @ReleaseTube(%struct.TYPE_13__* %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = call i32 @ReleaseTube(%struct.TYPE_13__* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = call i32 @NnClearQueue(%struct.TYPE_14__* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ReleaseQueue(i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ReleaseQueue(i32 %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ReleaseCancel(i32 %95)
  store i64 0, i64* %4, align 8
  br label %97

97:                                               ; preds = %116, %41
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @LIST_NUM(i32 %103)
  %105 = icmp slt i64 %98, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %97
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %4, align 8
  %113 = call %struct.TYPE_14__* @LIST_DATA(i32 %111, i64 %112)
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %5, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = call i32 @Free(%struct.TYPE_14__* %114)
  br label %116

116:                                              ; preds = %106
  %117 = load i64, i64* %4, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %4, align 8
  br label %97

119:                                              ; preds = %97
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = call i32 @ReleaseHashList(%struct.TYPE_15__* %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = call i32 @ReleaseHashList(%struct.TYPE_15__* %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %129 = call i32 @NnFreeIpCombineList(%struct.TYPE_14__* %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %131 = call i32 @Free(%struct.TYPE_14__* %130)
  br label %132

132:                                              ; preds = %119, %8
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @TubeFlushEx(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SleepThread(i32) #1

declare dso_local i32 @TubeDisconnect(%struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseTube(%struct.TYPE_13__*) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @WaitThread(i32, i32) #1

declare dso_local i32 @ReleaseThread(i32) #1

declare dso_local i32 @DeleteLock(i32) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @NnClearQueue(%struct.TYPE_14__*) #1

declare dso_local i32 @ReleaseQueue(i32) #1

declare dso_local i32 @ReleaseCancel(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_14__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Free(%struct.TYPE_14__*) #1

declare dso_local i32 @ReleaseHashList(%struct.TYPE_15__*) #1

declare dso_local i32 @NnFreeIpCombineList(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
