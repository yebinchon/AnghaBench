; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612PicoStateLoad2_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612PicoStateLoad2_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32* }

@shared_ctl = common dso_local global %struct.TYPE_2__* null, align 8
@JOB940_YM2612UPDATEONE = common dso_local global i32 0, align 4
@writebuff_ptr = common dso_local global i32 0, align 4
@JOB940_PICOSTATELOAD2_PREP = common dso_local global i32 0, align 4
@JOB940_PICOSTATELOAD2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YM2612PicoStateLoad2_940(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32* (...) @YM2612GetRegs()
  store i32* %8, i32** %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 256
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 1095978329
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 264
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 268
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @JOB940_YM2612UPDATEONE, align 4
  %27 = call i64 @CHECK_BUSY(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @JOB940_YM2612UPDATEONE, align 4
  %31 = call i32 @wait_busy_940(i32 %30)
  br label %32

32:                                               ; preds = %29, %17
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @writebuff_ptr, align 4
  %42 = and i32 %41, 65535
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 65535, i32* %44, align 4
  br label %53

45:                                               ; preds = %32
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @writebuff_ptr, align 4
  %50 = and i32 %49, 65535
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 65535, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = xor i32 %56, 1
  store i32 %57, i32* %55, align 8
  store i32 0, i32* @writebuff_ptr, align 4
  %58 = load i32, i32* @JOB940_PICOSTATELOAD2_PREP, align 4
  %59 = call i32 @add_job_940(i32 %58)
  %60 = load i32, i32* @JOB940_PICOSTATELOAD2_PREP, align 4
  %61 = call i64 @CHECK_BUSY(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @JOB940_PICOSTATELOAD2_PREP, align 4
  %65 = call i32 @wait_busy_940(i32 %64)
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @memcpy(i32* %67, i32* %68, i32 512)
  %70 = load i32, i32* @JOB940_PICOSTATELOAD2, align 4
  %71 = call i32 @add_job_940(i32 %70)
  %72 = load i32, i32* @JOB940_PICOSTATELOAD2, align 4
  %73 = call i64 @CHECK_BUSY(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @JOB940_PICOSTATELOAD2, align 4
  %77 = call i32 @wait_busy_940(i32 %76)
  br label %78

78:                                               ; preds = %75, %66
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32* @YM2612GetRegs(...) #1

declare dso_local i64 @CHECK_BUSY(i32) #1

declare dso_local i32 @wait_busy_940(i32) #1

declare dso_local i32 @add_job_940(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
