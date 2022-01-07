; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_configuration.c_config_get_default_audio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_configuration.c_config_get_default_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUDIO_DEFAULT_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rsound\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"audioio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oss\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"alsa\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"alsathread\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tinyalsa\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"roar\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreaudio\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"coreaudio3\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"openal\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"opensl\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"sdl\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sdl2\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"dsound\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"wasapi\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"xaudio\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"xenon360\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ps3\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"gx\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"AX\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"psp\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ps2\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"dsp\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"rwebaudio\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"jack\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_get_default_audio() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @AUDIO_DEFAULT_DRIVER, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %34 [
    i32 139, label %5
    i32 153, label %6
    i32 145, label %7
    i32 155, label %8
    i32 154, label %9
    i32 133, label %10
    i32 140, label %11
    i32 152, label %12
    i32 151, label %13
    i32 156, label %14
    i32 135, label %15
    i32 137, label %16
    i32 136, label %17
    i32 149, label %18
    i32 132, label %19
    i32 129, label %20
    i32 141, label %21
    i32 148, label %22
    i32 128, label %23
    i32 143, label %24
    i32 131, label %25
    i32 130, label %26
    i32 142, label %27
    i32 144, label %28
    i32 150, label %29
    i32 134, label %30
    i32 138, label %31
    i32 147, label %32
    i32 146, label %33
  ]

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %35

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %35

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %35

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %35

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %35

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %35

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %35

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %35

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %35

14:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %35

15:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  br label %35

16:                                               ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %1, align 8
  br label %35

17:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %1, align 8
  br label %35

18:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  br label %35

19:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %1, align 8
  br label %35

20:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %1, align 8
  br label %35

21:                                               ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %1, align 8
  br label %35

22:                                               ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %1, align 8
  br label %35

23:                                               ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %1, align 8
  br label %35

24:                                               ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %1, align 8
  br label %35

25:                                               ; preds = %0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %1, align 8
  br label %35

26:                                               ; preds = %0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %1, align 8
  br label %35

27:                                               ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %1, align 8
  br label %35

28:                                               ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %35

29:                                               ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** %1, align 8
  br label %35

30:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8** %1, align 8
  br label %35

31:                                               ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8** %1, align 8
  br label %35

32:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %1, align 8
  br label %35

33:                                               ; preds = %0
  br label %34

34:                                               ; preds = %0, %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %1, align 8
  br label %35

35:                                               ; preds = %34, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %36 = load i8*, i8** %1, align 8
  ret i8* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
