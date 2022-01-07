; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_mmsp2_clock_set.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_mmsp2_clock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_CLK_FREQ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid cpuclk MHz: %u\0A\00", align 1
@memregs = common dso_local global i32* null, align 8
@cpuclk_was_changed = common dso_local global i32 0, align 4
@cpu_current_mhz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mmsp2_clock_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmsp2_clock_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 3, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 %9, %10
  %12 = mul i32 %11, 1000000
  %13 = load i32, i32* @SYS_CLK_FREQ, align 4
  %14 = udiv i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -256
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 8
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %26, 2
  %28 = shl i32 %27, 2
  %29 = or i32 %25, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** @memregs, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1160
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %46, %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 10000
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32*, i32** @memregs, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1153
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %35

49:                                               ; preds = %44, %35
  store i32 1, i32* @cpuclk_was_changed, align 4
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* @cpu_current_mhz, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
