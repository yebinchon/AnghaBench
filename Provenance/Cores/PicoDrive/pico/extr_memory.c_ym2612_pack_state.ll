; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_pack_state.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_pack_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@timer_a_next_oflow = common dso_local global i64 0, align 8
@TIMER_NO_OFLOW = common dso_local global i64 0, align 8
@timer_a_step = common dso_local global i64 0, align 8
@timer_b_next_oflow = common dso_local global i64 0, align 8
@timer_b_step = common dso_local global i64 0, align 8
@EL_YMTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"save: timer a %i/%i\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"save: timer b %i/%i\00", align 1
@POPT_EXT_FM = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ym2612_pack_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 4
  %6 = sub nsw i32 1024, %5
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 1), align 4
  %8 = sub nsw i32 256, %7
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @timer_a_next_oflow, align 8
  %10 = load i64, i64* @TIMER_NO_OFLOW, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %0
  %13 = load i64, i64* @timer_a_step, align 8
  %14 = load i64, i64* @timer_a_next_oflow, align 8
  %15 = sub nsw i64 %13, %14
  %16 = sitofp i64 %15 to double
  %17 = load i64, i64* @timer_a_step, align 8
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %16, %18
  %20 = load i32, i32* %1, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double %19, %21
  %23 = fmul double %22, 6.553600e+04
  %24 = fptosi double %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %0
  %26 = load i64, i64* @timer_b_next_oflow, align 8
  %27 = load i64, i64* @TIMER_NO_OFLOW, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64, i64* @timer_b_step, align 8
  %31 = load i64, i64* @timer_b_next_oflow, align 8
  %32 = sub nsw i64 %30, %31
  %33 = sitofp i64 %32 to double
  %34 = load i64, i64* @timer_b_step, align 8
  %35 = sitofp i64 %34 to double
  %36 = fdiv double %33, %35
  %37 = load i32, i32* %3, align 4
  %38 = sitofp i32 %37 to double
  %39 = fmul double %36, %38
  %40 = fmul double %39, 6.553600e+04
  %41 = fptosi double %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %25
  %43 = load i32, i32* @EL_YMTIMER, align 4
  %44 = load i32, i32* %2, align 4
  %45 = ashr i32 %44, 16
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @elprintf(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @EL_YMTIMER, align 4
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 16
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @elprintf(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @YM2612PicoStateSave2(i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @YM2612PicoStateSave2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
