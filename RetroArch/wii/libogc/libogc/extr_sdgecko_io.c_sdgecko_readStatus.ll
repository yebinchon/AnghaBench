; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_readStatus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_readStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdgecko_readStatus(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MAX_DRIVE, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %12, i64* %2, align 8
  br label %23

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @sdgecko_preIO(i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %23

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @__card_sd_status(i64 %21)
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %20, %18, %11
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @sdgecko_preIO(i64) #1

declare dso_local i64 @__card_sd_status(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
