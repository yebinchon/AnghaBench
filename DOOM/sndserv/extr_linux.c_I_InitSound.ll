; ModuleID = '/home/carl/AnghaBench/DOOM/sndserv/extr_linux.c_I_InitSound.c'
source_filename = "/home/carl/AnghaBench/DOOM/sndserv/extr_linux.c_I_InitSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@audio_fd = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not open /dev/dsp\0A\00", align 1
@SNDCTL_DSP_SETFRAGMENT = common dso_local global i32 0, align 4
@SNDCTL_DSP_RESET = common dso_local global i32 0, align 4
@SNDCTL_DSP_SPEED = common dso_local global i32 0, align 4
@SNDCTL_DSP_STEREO = common dso_local global i32 0, align 4
@SNDCTL_DSP_GETFMTS = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not play signed 16 data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_InitSound(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @O_WRONLY, align 4
  %7 = call i64 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i64 %7, i64* @audio_fd, align 8
  %8 = load i64, i64* @audio_fd, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  store i32 131083, i32* %5, align 4
  %14 = load i64, i64* @audio_fd, align 8
  %15 = load i32, i32* @SNDCTL_DSP_SETFRAGMENT, align 4
  %16 = call i32 @myioctl(i64 %14, i32 %15, i32* %5)
  %17 = load i64, i64* @audio_fd, align 8
  %18 = load i32, i32* @SNDCTL_DSP_RESET, align 4
  %19 = call i32 @myioctl(i64 %17, i32 %18, i32* null)
  store i32 11025, i32* %5, align 4
  %20 = load i64, i64* @audio_fd, align 8
  %21 = load i32, i32* @SNDCTL_DSP_SPEED, align 4
  %22 = call i32 @myioctl(i64 %20, i32 %21, i32* %5)
  store i32 1, i32* %5, align 4
  %23 = load i64, i64* @audio_fd, align 8
  %24 = load i32, i32* @SNDCTL_DSP_STEREO, align 4
  %25 = call i32 @myioctl(i64 %23, i32 %24, i32* %5)
  %26 = load i64, i64* @audio_fd, align 8
  %27 = load i32, i32* @SNDCTL_DSP_GETFMTS, align 4
  %28 = call i32 @myioctl(i64 %26, i32 %27, i32* %5)
  %29 = load i32, i32* @AFMT_S16_LE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %13
  %34 = load i64, i64* @audio_fd, align 8
  %35 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %36 = call i32 @myioctl(i64 %34, i32 %35, i32* %5)
  br label %40

37:                                               ; preds = %13
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33
  ret void
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @myioctl(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
