; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_decode_thread.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_decode_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"decode_thread started with id %08x, priority %i\0A\00", align 1
@thread_exit = common dso_local global i64 0, align 8
@thread_job_sem = common dso_local global i32 0, align 4
@thread_busy_sem = common dso_local global i32 0, align 4
@working_buf = common dso_local global i64 0, align 8
@mp3_src_buffer = common dso_local global i64* null, align 8
@mp3_codec_struct = common dso_local global i32* null, align 8
@mp3_mix_buffer = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"sceAudiocodecDecode failed with %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"leaving decode thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @decode_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = call i32 (...) @sceKernelGetThreadId()
  %8 = call i32 (...) @sceKernelGetThreadCurrentPriority()
  %9 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %57, %2
  %11 = load i64, i64* @thread_exit, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32, i32* @thread_job_sem, align 4
  %16 = call i32 @psp_sem_lock(i32 %15)
  %17 = load i64, i64* @thread_exit, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %60

20:                                               ; preds = %14
  %21 = load i32, i32* @thread_busy_sem, align 4
  %22 = call i32 @psp_sem_lock(i32 %21)
  %23 = load i64, i64* @working_buf, align 8
  %24 = call i32 @read_next_frame(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = load i64*, i64** @mp3_src_buffer, align 8
  %29 = load i64, i64* @working_buf, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** @mp3_codec_struct, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  store i32 %32, i32* %34, align 4
  %35 = load i64*, i64** @mp3_mix_buffer, align 8
  %36 = load i64, i64* @working_buf, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** @mp3_codec_struct, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** @mp3_codec_struct, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 10
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** @mp3_codec_struct, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** @mp3_codec_struct, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 9
  store i32 4608, i32* %48, align 4
  %49 = load i32*, i32** @mp3_codec_struct, align 8
  %50 = call i32 @sceAudiocodecDecode(i32* %49, i32 4098)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %27
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %27
  br label %57

57:                                               ; preds = %56, %20
  %58 = load i32, i32* @thread_busy_sem, align 4
  %59 = call i32 @psp_sem_unlock(i32 %58)
  br label %10

60:                                               ; preds = %19, %10
  %61 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @sceKernelExitDeleteThread(i32 0)
  ret i32 0
}

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @sceKernelGetThreadId(...) #1

declare dso_local i32 @sceKernelGetThreadCurrentPriority(...) #1

declare dso_local i32 @psp_sem_lock(i32) #1

declare dso_local i32 @read_next_frame(i64) #1

declare dso_local i32 @sceAudiocodecDecode(i32*, i32) #1

declare dso_local i32 @psp_sem_unlock(i32) #1

declare dso_local i32 @sceKernelExitDeleteThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
