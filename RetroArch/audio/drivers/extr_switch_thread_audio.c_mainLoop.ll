; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_thread_audio.c_mainLoop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_thread_audio.c_mainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"[Audio]: start mainLoop cpu %u tid %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"[Audio]: audoutGetReleasedAudioOutBuffer failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"[Audio]: audoutAppendAudioOutBuffer failed: %d\0A\00", align 1
@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mainLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mainLoop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %125

17:                                               ; preds = %1
  %18 = call i32 (...) @svcGetCurrentProcessorNumber()
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %124, %17
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %125

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = call i32 @svcWaitSynchronization(i32* %10, i32* %34, i32 1, i32 33333333)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @svcResetSignal(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = call i64 @audio_ipc_output_get_released_buffer(i32* %41, i32* %4, %struct.TYPE_10__** %5)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @R_FAILED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load i64, i64* %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %125

52:                                               ; preds = %32
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %29
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  store i64 %62, i64* %7, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = call i32 @compat_mutex_lock(i32* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @fifo_read_avail(i32 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @MIN(i64 %70, i64 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %55
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %11, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @fifo_read(i32 %82, i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %75, %55
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = call i32 @compat_mutex_unlock(i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = call i32 @compat_condvar_wake_all(i32* %95)
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = udiv i64 %107, 2
  %109 = icmp uge i64 %104, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %90
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = call i64 @switch_audio_ipc_output_append_buffer(%struct.TYPE_9__* %111, %struct.TYPE_10__* %112)
  store i64 %113, i64* %3, align 8
  %114 = load i64, i64* %3, align 8
  %115 = call i64 @R_FAILED(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i64, i64* %3, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %110
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %124

122:                                              ; preds = %90
  %123 = call i32 @svcSleepThread(i32 16000000)
  br label %124

124:                                              ; preds = %122, %121
  br label %24

125:                                              ; preds = %16, %46, %24
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #1

declare dso_local i32 @svcGetCurrentProcessorNumber(...) #1

declare dso_local i32 @svcWaitSynchronization(i32*, i32*, i32, i32) #1

declare dso_local i32 @svcResetSignal(i32) #1

declare dso_local i64 @audio_ipc_output_get_released_buffer(i32*, i32*, %struct.TYPE_10__**) #1

declare dso_local i64 @R_FAILED(i64) #1

declare dso_local i32 @compat_mutex_lock(i32*) #1

declare dso_local i64 @fifo_read_avail(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @fifo_read(i32, i32*, i64) #1

declare dso_local i32 @compat_mutex_unlock(i32*) #1

declare dso_local i32 @compat_condvar_wake_all(i32*) #1

declare dso_local i64 @switch_audio_ipc_output_append_buffer(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @svcSleepThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
