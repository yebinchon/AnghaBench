; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_EmuScanEnd16_ld.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_EmuScanEnd16_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DrawLineDest = common dso_local global i8* null, align 8
@ld_counter = common dso_local global i32 0, align 4
@ld_left = common dso_local global i64 0, align 8
@ld_lines = common dso_local global i64 0, align 8
@gp2x_current_bpp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @EmuScanEnd16_ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EmuScanEnd16_ld(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8*, i8** @DrawLineDest, align 8
  store i8* %4, i8** %3, align 8
  br i1 true, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @ld_counter, align 4
  %7 = call i32 @emu_scan_end(i32 %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* @ld_counter, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @ld_counter, align 4
  %11 = load i64, i64* @ld_left, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @ld_left, align 8
  %13 = load i64, i64* @ld_left, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %8
  %16 = load i64, i64* @ld_lines, align 8
  store i64 %16, i64* @ld_left, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @EmuScanBegin16_ld(i32 %17)
  %19 = load i8*, i8** @DrawLineDest, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @gp2x_current_bpp, align 4
  %22 = mul nsw i32 320, %21
  %23 = sdiv i32 %22, 8
  %24 = sdiv i32 %23, 4
  %25 = call i32 @memcpy32(i8* %19, i8* %20, i32 %24)
  br i1 true, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* @ld_counter, align 4
  %28 = call i32 @emu_scan_end(i32 %27)
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* @ld_counter, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @ld_counter, align 4
  br label %32

32:                                               ; preds = %29, %8
  ret i32 0
}

declare dso_local i32 @emu_scan_end(i32) #1

declare dso_local i32 @EmuScanBegin16_ld(i32) #1

declare dso_local i32 @memcpy32(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
