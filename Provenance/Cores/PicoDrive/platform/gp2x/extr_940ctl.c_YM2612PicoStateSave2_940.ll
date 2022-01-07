; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612PicoStateSave2_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612PicoStateSave2_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@JOB940_PICOSTATESAVE2 = common dso_local global i32 0, align 4
@shared_ctl = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"code940 didn't return valid save data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612PicoStateSave2_940(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @JOB940_PICOSTATESAVE2, align 4
  %8 = call i32 @add_job_940(i32 %7)
  %9 = load i32, i32* @JOB940_PICOSTATESAVE2, align 4
  %10 = call i64 @CHECK_BUSY(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @JOB940_PICOSTATESAVE2, align 4
  %14 = call i32 @wait_busy_940(i32 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = call i32* (...) @YM2612GetRegs()
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 256
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1095978329
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %52

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 32)
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 256
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 256
  %35 = call i32 @memcpy(i32* %32, i32* %34, i32 48)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 184
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 184
  %40 = call i32 @memcpy(i32* %37, i32* %39, i32 72)
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 440
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 440
  %45 = call i32 @memcpy(i32* %42, i32* %44, i32 72)
  %46 = load i32, i32* %3, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 264
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 268
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @add_job_940(i32) #1

declare dso_local i64 @CHECK_BUSY(i32) #1

declare dso_local i32 @wait_busy_940(i32) #1

declare dso_local i32* @YM2612GetRegs(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
