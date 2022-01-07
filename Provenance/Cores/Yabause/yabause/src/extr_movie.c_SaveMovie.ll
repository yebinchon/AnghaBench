; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_SaveMovie.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_SaveMovie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32*, i64 }

@Movie = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Playback = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@RecordingFileOpened = common dso_local global i32 0, align 4
@framecounter = common dso_local global i64 0, align 8
@Recording = common dso_local global i64 0, align 8
@MovieStatus = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Recording Started\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SaveMovie(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i8* @malloc(i32 1024)
  store i8* %5, i8** %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %7 = load i64, i64* @Playback, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @StopMovie()
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @free(i8* %16)
  store i32 -1, i32* %2, align 4
  br label %29

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 1), align 8
  store i32 1, i32* @RecordingFileOpened, align 4
  store i64 0, i64* @framecounter, align 8
  %23 = load i64, i64* @Recording, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), align 8
  %24 = load i8*, i8** @MovieStatus, align 8
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 3), align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 2), align 8
  %27 = call i32 @WriteHeader(i32* %26)
  %28 = call i32 (...) @YabauseReset()
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @StopMovie(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @WriteHeader(i32*) #1

declare dso_local i32 @YabauseReset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
