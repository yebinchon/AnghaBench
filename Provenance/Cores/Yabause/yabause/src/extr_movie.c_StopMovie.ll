; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_StopMovie.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_StopMovie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@Movie = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Recording = common dso_local global i64 0, align 8
@RecordingFileOpened = common dso_local global i64 0, align 8
@Stopped = common dso_local global i8* null, align 8
@MovieStatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Recording Stopped\00", align 1
@Playback = common dso_local global i64 0, align 8
@PlaybackFileOpened = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Playback Stopped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StopMovie() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %2 = load i64, i64* @Recording, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = load i64, i64* @RecordingFileOpened, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %9 = call i32 @WriteHeader(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %11 = call i32 @fclose(i32 %10)
  store i64 0, i64* @RecordingFileOpened, align 8
  %12 = load i8*, i8** @Stopped, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %14 = call i32 (...) @ClearInput()
  %15 = load i32, i32* @MovieStatus, align 4
  %16 = call i32 @strcpy(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %7, %4, %0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %19 = load i64, i64* @Playback, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i64, i64* @PlaybackFileOpened, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 1), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %29 = call i32 @fclose(i32 %28)
  store i64 0, i64* @PlaybackFileOpened, align 8
  %30 = load i8*, i8** @Stopped, align 8
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %32 = call i32 (...) @ClearInput()
  %33 = load i32, i32* @MovieStatus, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %27, %24, %21, %17
  ret void
}

declare dso_local i32 @WriteHeader(i32) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @ClearInput(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
