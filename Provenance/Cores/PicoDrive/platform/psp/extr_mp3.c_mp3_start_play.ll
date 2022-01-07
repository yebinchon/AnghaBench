; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_start_play.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_start_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mp3_start_play(%s) @ %i\0A\00", align 1
@thread_busy_sem = common dso_local global i32 0, align 4
@mp3_fname = common dso_local global i8* null, align 8
@mp3_handle = common dso_local global i64 0, align 8
@PSP_O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"sceIoOpen(%s) failed\0A\00", align 1
@PSP_SEEK_END = common dso_local global i32 0, align 4
@mp3_src_size = common dso_local global i64 0, align 8
@mp3_codec_struct = common dso_local global i32 0, align 4
@mp3_src_pos = common dso_local global i32 0, align 4
@PSP_SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"seek %i: %i/%i\0A\00", align 1
@mp3_job_started = common dso_local global i32 0, align 4
@mp3_play_bufsel = common dso_local global i64 0, align 8
@mp3_buffer_offs = common dso_local global i64 0, align 8
@mp3_samples_ready = common dso_local global i64 0, align 8
@working_buf = common dso_local global i64 0, align 8
@thread_job_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp3_start_play(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i32, i32* @initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %67

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  %14 = load i32, i32* @thread_busy_sem, align 4
  %15 = call i32 @psp_sem_lock(i32 %14)
  %16 = load i8*, i8** @mp3_fname, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load i64, i64* @mp3_handle, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19, %10
  %23 = load i64, i64* @mp3_handle, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @mp3_handle, align 8
  %27 = call i32 @sceIoClose(i64 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @PSP_O_RDONLY, align 4
  %31 = call i64 @sceIoOpen(i8* %29, i32 %30, i32 511)
  store i64 %31, i64* @mp3_handle, align 8
  %32 = load i64, i64* @mp3_handle, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @thread_busy_sem, align 4
  %38 = call i32 @psp_sem_unlock(i32 %37)
  br label %67

39:                                               ; preds = %28
  %40 = load i64, i64* @mp3_handle, align 8
  %41 = load i32, i32* @PSP_SEEK_END, align 4
  %42 = call i64 @sceIoLseek32(i64 %40, i32 0, i32 %41)
  store i64 %42, i64* @mp3_src_size, align 8
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** @mp3_fname, align 8
  br label %44

44:                                               ; preds = %39, %19
  %45 = load i32, i32* @mp3_codec_struct, align 4
  %46 = call i32 @sceAudiocodecInit(i32 %45, i32 4098)
  %47 = load i32, i32* %4, align 4
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %48, 1.023000e+03
  %50 = load i64, i64* @mp3_src_size, align 8
  %51 = sitofp i64 %50 to float
  %52 = fmul float %49, %51
  %53 = fptosi float %52 to i32
  store i32 %53, i32* @mp3_src_pos, align 4
  %54 = load i64, i64* @mp3_handle, align 8
  %55 = load i32, i32* @mp3_src_pos, align 4
  %56 = load i32, i32* @PSP_SEEK_SET, align 4
  %57 = call i64 @sceIoLseek32(i64 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @mp3_src_pos, align 4
  %60 = load i64, i64* @mp3_src_size, align 8
  %61 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59, i64 %60)
  store i32 1, i32* @mp3_job_started, align 4
  store i64 0, i64* @mp3_play_bufsel, align 8
  store i64 0, i64* @mp3_buffer_offs, align 8
  store i64 0, i64* @mp3_samples_ready, align 8
  store i64 0, i64* @working_buf, align 8
  %62 = load i32, i32* @thread_busy_sem, align 4
  %63 = call i32 @psp_sem_unlock(i32 %62)
  %64 = load i32, i32* @thread_job_sem, align 4
  %65 = call i32 @psp_sem_unlock(i32 %64)
  %66 = call i32 @sceKernelDelayThread(i32 1)
  br label %67

67:                                               ; preds = %44, %34, %9
  ret void
}

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @psp_sem_lock(i32) #1

declare dso_local i32 @sceIoClose(i64) #1

declare dso_local i64 @sceIoOpen(i8*, i32, i32) #1

declare dso_local i32 @psp_sem_unlock(i32) #1

declare dso_local i64 @sceIoLseek32(i64, i32, i32) #1

declare dso_local i32 @sceAudiocodecInit(i32, i32) #1

declare dso_local i32 @sceKernelDelayThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
