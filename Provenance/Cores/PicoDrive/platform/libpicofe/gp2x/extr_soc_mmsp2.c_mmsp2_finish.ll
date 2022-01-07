; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_mmsp2_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_mmsp2_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gamma_was_changed = common dso_local global i64 0, align 8
@cpuclk_was_changed = common dso_local global i64 0, align 8
@reg0910 = common dso_local global i32 0, align 4
@memregs = common dso_local global i32* null, align 8
@memdev = common dso_local global i64 0, align 8
@touchdev = common dso_local global i64 0, align 8
@mixerdev = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmsp2_finish() #0 {
  %1 = call i32 @reset940(i32 1, i32 3)
  %2 = call i32 @pause940(i32 1)
  %3 = call i32 (...) @unset_lcd_custom_rate_()
  %4 = load i64, i64* @gamma_was_changed, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @set_lcd_gamma_(i32 100, i32 0)
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 (...) @unset_ram_timings_()
  %10 = load i64, i64* @cpuclk_was_changed, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* @reg0910, align 4
  %14 = load i32*, i32** @memregs, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1160
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32*, i32** @memregs, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @munmap(i8* %18, i32 65536)
  %20 = load i64, i64* @memdev, align 8
  %21 = call i32 @close(i64 %20)
  %22 = load i64, i64* @touchdev, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* @touchdev, align 8
  %26 = call i32 @close(i64 %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i64, i64* @mixerdev, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* @mixerdev, align 8
  %32 = call i32 @close(i64 %31)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @reset940(i32, i32) #1

declare dso_local i32 @pause940(i32) #1

declare dso_local i32 @unset_lcd_custom_rate_(...) #1

declare dso_local i32 @set_lcd_gamma_(i32, i32) #1

declare dso_local i32 @unset_ram_timings_(...) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
