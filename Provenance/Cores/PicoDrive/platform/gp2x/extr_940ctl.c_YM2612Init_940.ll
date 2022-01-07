; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612Init_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612Init_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@YM2612Init_940.oldrate = internal global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@crashed_940 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"YM2612Init_940()\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Mem usage: shared_data: %i, shared_ctl: %i\0A\00", align 1
@memregs = common dso_local global i32* null, align 8
@memregl = common dso_local global i32* null, align 8
@CODE940_FILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@g_screen_ptr = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to open required file:\00", align 1
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@shared_mem = common dso_local global i64 0, align 8
@shared_data = common dso_local global %struct.TYPE_8__* null, align 8
@shared_ctl = common dso_local global %struct.TYPE_8__* null, align 8
@loaded_mp3 = common dso_local global i32* null, align 8
@JOB940_INITALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612Init_940(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico, i32 0, i32 0, i32 0), align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, i64* @crashed_940, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @YM2612Init_940.oldrate, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %105

20:                                               ; preds = %15, %12, %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 8, i64 8)
  %23 = call i32 @reset940(i32 1, i32 2)
  %24 = call i32 @pause940(i32 1)
  %25 = load i32*, i32** @memregs, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 7584
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** @memregs, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7585
  store i32 1, i32* %28, align 4
  %29 = load i32*, i32** @memregl, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4417
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** @memregl, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4418
  store i32 -67108865, i32* %32, align 4
  %33 = load i64, i64* @crashed_940, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %37 = load i8*, i8** @CODE940_FILE, align 8
  %38 = call i32 @emu_make_path(i8* %36, i8* %37, i32 512)
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_screen_ptr, align 8
  %45 = call i32 @memset(%struct.TYPE_8__* %44, i32 0, i32 153600)
  %46 = call i32 @text_out16(i32 10, i32 100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i8*, i8** @CODE940_FILE, align 8
  %48 = call i32 @text_out16(i32 10, i32 110, i8* %47)
  %49 = call i32 (...) @gp2x_video_flip2()
  %50 = load i32, i32* @PBTN_MOK, align 4
  %51 = load i32, i32* @PBTN_MBACK, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @in_menu_wait(i32 %52, i32* null, i32 100)
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %65
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @fread(i8* %59, i32 1, i32 1024, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %76

65:                                               ; preds = %58
  %66 = load i64, i64* @shared_mem, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @memcpy(i64 %69, i8* %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %58

76:                                               ; preds = %64
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @fclose(i32* %77)
  store i64 0, i64* @crashed_940, align 8
  br label %79

79:                                               ; preds = %76, %20
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shared_data, align 8
  %81 = call i32 @memset(%struct.TYPE_8__* %80, i32 0, i32 8)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shared_ctl, align 8
  %83 = call i32 @memset(%struct.TYPE_8__* %82, i32 0, i32 8)
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @YM2612Init_(i32 %84, i32 %85)
  %87 = call i32 (...) @internal_reset()
  store i32* null, i32** @loaded_mp3, align 8
  %88 = load i32*, i32** @memregs, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 7587
  store i32 65535, i32* %89, align 4
  %90 = load i32*, i32** @memregl, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4416
  store i32 -1, i32* %91, align 4
  %92 = load i32*, i32** @memregl, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4420
  store i32 -1, i32* %93, align 4
  %94 = call i32 @reset940(i32 0, i32 2)
  %95 = call i32 @pause940(i32 0)
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shared_ctl, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shared_ctl, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @JOB940_INITALL, align 4
  %103 = call i32 @add_job_940(i32 %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* @YM2612Init_940.oldrate, align 4
  br label %105

105:                                              ; preds = %79, %19
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @reset940(i32, i32) #1

declare dso_local i32 @pause940(i32) #1

declare dso_local i32 @emu_make_path(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @gp2x_video_flip2(...) #1

declare dso_local i32 @in_menu_wait(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @YM2612Init_(i32, i32) #1

declare dso_local i32 @internal_reset(...) #1

declare dso_local i32 @add_job_940(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
