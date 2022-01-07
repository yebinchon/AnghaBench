; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_sound_thread.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_sound_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"sthr: started, priority %i\0A\00", align 1
@sound_thread_exit = common dso_local global i32 0, align 4
@samples_made = common dso_local global i32 0, align 4
@samples_done = common dso_local global i32 0, align 4
@samples_block = common dso_local global i32 0, align 4
@sound_sem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sthr: sceKernelWaitSema: %i\0A\00", align 1
@PSP_AUDIO_VOLUME_MAX = common dso_local global i32 0, align 4
@snd_playptr = common dso_local global i64 0, align 8
@sndBuffer_endptr = common dso_local global i64 0, align 8
@sndBuffer = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"sthr: sceAudio_E0727056: %08x; pos %i/%i\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sthr: exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sound_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sound_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @sceKernelGetThreadCurrentPriority()
  %7 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %81, %41, %2
  %9 = load i32, i32* @sound_thread_exit, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %82

12:                                               ; preds = %8
  %13 = load i32, i32* @samples_made, align 4
  %14 = load i32, i32* @samples_done, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* @samples_block, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* @samples_made, align 4
  %21 = load i32, i32* @samples_done, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @samples_block, align 4
  %24 = mul nsw i32 %23, 2
  %25 = icmp sle i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @sound_thread_exit, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i1 [ false, %19 ], [ %29, %26 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i32, i32* @sound_sem, align 4
  %34 = call i32 @sceKernelWaitSema(i32 %33, i32 1, i32 0)
  store i32 %34, i32* %5, align 4
  br label %19

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %8

42:                                               ; preds = %12
  %43 = load i32, i32* @PSP_AUDIO_VOLUME_MAX, align 4
  %44 = load i64, i64* @snd_playptr, align 8
  %45 = call i32 @sceAudio_E0727056(i32 %43, i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @samples_block, align 4
  %47 = load i32, i32* @samples_done, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* @samples_done, align 4
  %49 = load i32, i32* @samples_block, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @snd_playptr, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* @snd_playptr, align 8
  %53 = load i64, i64* @snd_playptr, align 8
  %54 = load i64, i64* @sndBuffer_endptr, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i64, i64* @sndBuffer, align 8
  store i64 %57, i64* @snd_playptr, align 8
  br label %58

58:                                               ; preds = %56, %42
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @samples_done, align 4
  %64 = load i32, i32* @samples_made, align 4
  %65 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* @samples_made, align 4
  %68 = load i32, i32* @samples_done, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* @samples_block, align 4
  %71 = mul nsw i32 %70, 3
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32, i32* @samples_block, align 4
  %75 = load i32, i32* @samples_done, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @samples_done, align 4
  %77 = load i32, i32* @samples_block, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @snd_playptr, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* @snd_playptr, align 8
  br label %81

81:                                               ; preds = %73, %66
  br label %8

82:                                               ; preds = %8
  %83 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @sceKernelExitDeleteThread(i32 0)
  ret i32 0
}

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @sceKernelGetThreadCurrentPriority(...) #1

declare dso_local i32 @sceKernelWaitSema(i32, i32, i32) #1

declare dso_local i32 @sceAudio_E0727056(i32, i64) #1

declare dso_local i32 @sceKernelExitDeleteThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
