; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttimer.c_removeFromWheel.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttimer.c_removeFromWheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@wheels = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @removeFromWheel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @removeFromWheel(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wheels, align 8
  %10 = call i32 @tListLen(%struct.TYPE_10__* %9)
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wheels, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i64 %18
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_lock(i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wheels, align 8
  %27 = call i32 @tListLen(%struct.TYPE_10__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %88

29:                                               ; preds = %13
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = icmp eq %struct.TYPE_9__* %56, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %75
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %76, align 8
  br label %77

77:                                               ; preds = %66, %55
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wheels, align 8
  %79 = call i32 @tListLen(%struct.TYPE_10__* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = call i32 @timerDecRef(%struct.TYPE_9__* %86)
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %77, %13
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @pthread_mutex_unlock(i32* %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @tListLen(%struct.TYPE_10__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @timerDecRef(%struct.TYPE_9__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
