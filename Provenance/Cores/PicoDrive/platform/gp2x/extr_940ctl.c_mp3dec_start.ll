; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_mp3dec_start.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_mp3dec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@PicoOpt = common dso_local global i32 0, align 4
@POPT_EXT_FM = common dso_local global i32 0, align 4
@loaded_mp3 = common dso_local global i32* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Loading MP3...\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@mp3_mem = common dso_local global i32 0, align 4
@MP3_SIZE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Warning: mp3 was too large, not all data loaded.\0A\00", align 1
@shared_ctl = common dso_local global %struct.TYPE_2__* null, align 8
@JOB940_MP3DECODE = common dso_local global i32 0, align 4
@JOB940_INVALIDATE_DCACHE = common dso_local global i32 0, align 4
@reset_timing = common dso_local global i32 0, align 4
@JOB940_MP3RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp3dec_start(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @PicoOpt, align 4
  %7 = load i32, i32* @POPT_EXT_FM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %78

11:                                               ; preds = %2
  %12 = load i32*, i32** @loaded_mp3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ftell(i32* %19)
  %21 = icmp sgt i32 %20, 2097152
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @PicoMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i32 @fseek(i32* %25, i32 0, i32 %26)
  %28 = load i32, i32* @mp3_mem, align 4
  %29 = load i32, i32* @MP3_SIZE_MAX, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fread(i32 %28, i32 1, i32 %29, i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @feof(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ftell(i32* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %4, align 8
  store i32* %42, i32** @loaded_mp3, align 8
  %43 = load i32, i32* @JOB940_MP3DECODE, align 4
  %44 = call i64 @CHECK_BUSY(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @JOB940_MP3DECODE, align 4
  %48 = call i32 @wait_busy_940(i32 %47)
  br label %49

49:                                               ; preds = %46, %37
  %50 = load i32, i32* @JOB940_INVALIDATE_DCACHE, align 4
  %51 = call i32 @add_job_940(i32 %50)
  store i32 1, i32* @reset_timing, align 4
  br label %52

52:                                               ; preds = %49, %11
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @JOB940_MP3RESET, align 4
  %59 = call i32 @add_job_940(i32 %58)
  %60 = load i32, i32* @JOB940_MP3RESET, align 4
  %61 = call i64 @CHECK_BUSY(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @JOB940_MP3RESET, align 4
  %65 = call i32 @wait_busy_940(i32 %64)
  br label %66

66:                                               ; preds = %63, %52
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @JOB940_MP3DECODE, align 4
  %76 = call i32 @add_job_940(i32 %75)
  br label %77

77:                                               ; preds = %74, %66
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %10
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @PicoMessage(i8*) #1

declare dso_local i32 @fread(i32, i32, i32, i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @CHECK_BUSY(i32) #1

declare dso_local i32 @wait_busy_940(i32) #1

declare dso_local i32 @add_job_940(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
