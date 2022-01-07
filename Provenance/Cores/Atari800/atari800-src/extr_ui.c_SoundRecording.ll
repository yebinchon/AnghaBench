; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui.c_SoundRecording.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui.c_SoundRecording.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32)* }

@.str = private unnamed_addr constant [14 x i8] c"atari%03d.wav\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Recording sound to file \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't write to file \22%s\22\00", align 1
@UI_driver = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"All atariXXX.wav files exist!\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Recording stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SoundRecording to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SoundRecording() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = call i32 (...) @SndSave_IsSoundFileOpen()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %22, %5
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @snprintf(i8* %7, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %11 = call i32 @Util_fileexists(i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %15 = call i64 @SndSave_OpenSoundFile(i8* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %20 = call i32 @FilenameMessage(i8* %18, i8* %19)
  br label %37

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  %25 = icmp slt i32 %24, 1000
  br i1 %25, label %6, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UI_driver, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i8*, i32)*, i32 (i8*, i32)** %28, align 8
  %30 = call i32 %29(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %37

31:                                               ; preds = %0
  %32 = call i32 (...) @SndSave_CloseSoundFile()
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UI_driver, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i8*, i32)*, i32 (i8*, i32)** %34, align 8
  %36 = call i32 %35(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %37

37:                                               ; preds = %13, %31, %26
  ret void
}

declare dso_local i32 @SndSave_IsSoundFileOpen(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @Util_fileexists(i8*) #1

declare dso_local i32 @FilenameMessage(i8*, i8*) #1

declare dso_local i64 @SndSave_OpenSoundFile(i8*) #1

declare dso_local i32 @SndSave_CloseSoundFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
