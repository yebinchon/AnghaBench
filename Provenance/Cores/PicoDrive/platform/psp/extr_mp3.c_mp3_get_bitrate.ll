; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_get_bitrate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_get_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_busy_sem = common dso_local global i64 0, align 8
@mp3_handle = common dso_local global i32 0, align 4
@PSP_O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sceIoOpen(%s) failed\0A\00", align 1
@mp3_src_pos = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"read_next_frame() failed (%s)\0A\00", align 1
@mp3_src_buffer = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unsupported samplerate (%s)\0A\00", align 1
@bitrates = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported bitrate (%s)\0A\00", align 1
@mp3_fname = common dso_local global i32* null, align 8
@mp3_last_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp3_get_bitrate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i64, i64* @thread_busy_sem, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* @thread_busy_sem, align 8
  %15 = call i32 @psp_sem_lock(i64 %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @mp3_handle, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @mp3_handle, align 4
  %21 = call i32 @sceIoClose(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @PSP_O_RDONLY, align 4
  %25 = call i32 @sceIoOpen(i8* %23, i32 %24, i32 511)
  store i32 %25, i32* @mp3_handle, align 4
  %26 = load i32, i32* @mp3_handle, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @lprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %70

31:                                               ; preds = %22
  store i64 0, i64* @mp3_src_pos, align 8
  %32 = call i32 @read_next_frame(i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @lprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %70

38:                                               ; preds = %31
  %39 = load i32**, i32*** @mp3_src_buffer, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 12
  %45 = ashr i32 %44, 2
  store i32 %45, i32* %7, align 4
  %46 = load i32**, i32*** @mp3_src_buffer, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @lprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %70

57:                                               ; preds = %38
  %58 = load i32*, i32** @bitrates, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @lprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %65, %54, %35, %28
  %71 = load i32, i32* @mp3_handle, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @mp3_handle, align 4
  %75 = call i32 @sceIoClose(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  store i32 -1, i32* @mp3_handle, align 4
  store i32* null, i32** @mp3_fname, align 8
  %77 = load i64, i64* @thread_busy_sem, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* @thread_busy_sem, align 8
  %81 = call i32 @psp_sem_unlock(i64 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 -1, i32* @mp3_last_error, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @psp_sem_lock(i64) #1

declare dso_local i32 @sceIoClose(i32) #1

declare dso_local i32 @sceIoOpen(i8*, i32, i32) #1

declare dso_local i32 @lprintf(i8*, i8*) #1

declare dso_local i32 @read_next_frame(i32) #1

declare dso_local i32 @psp_sem_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
