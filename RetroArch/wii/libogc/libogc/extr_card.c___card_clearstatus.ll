; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_clearstatus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_clearstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@EXI_SPEED16MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_clearstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_clearstatus(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @EXI_CHANNEL_0, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @EXI_CHANNEL_2, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %15, i64* %2, align 8
  br label %55

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @EXI_DEVICE_0, align 4
  %19 = load i32, i32* @EXI_SPEED16MHZ, align 4
  %20 = call i64 @EXI_Select(i64 %17, i32 %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %23, i64* %2, align 8
  br label %55

24:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  store i32 137, i32* %4, align 4
  %25 = load i64, i64* %3, align 8
  %26 = load i32, i32* @EXI_WRITE, align 4
  %27 = call i64 @EXI_Imm(i64 %25, i32* %4, i32 1, i32 %26, i32* null)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @EXI_Sync(i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @EXI_Deselect(i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %50, i64* %6, align 8
  br label %53

51:                                               ; preds = %46
  %52 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %53, %22, %14
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i64 @EXI_Imm(i64, i32*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Sync(i64) #1

declare dso_local i64 @EXI_Deselect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
