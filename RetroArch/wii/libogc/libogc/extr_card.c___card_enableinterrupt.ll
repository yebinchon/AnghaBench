; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_enableinterrupt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_enableinterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@EXI_SPEED16MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@CARD_ERROR_BUSY = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @__card_enableinterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_enableinterrupt(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @EXI_CHANNEL_0, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @EXI_CHANNEL_2, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %17, i64* %3, align 8
  br label %66

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @EXI_DEVICE_0, align 4
  %21 = load i32, i32* @EXI_SPEED16MHZ, align 4
  %22 = call i64 @EXI_Select(i64 %19, i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %25, i64* %3, align 8
  br label %66

26:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 129, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 1, i32* %31, align 4
  br label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* @EXI_WRITE, align 4
  %38 = call i64 @EXI_Imm(i64 %35, i32* %36, i32 2, i32 %37, i32* null)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @EXI_Sync(i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, 2
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @EXI_Deselect(i64 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @CARD_ERROR_BUSY, align 8
  store i64 %61, i64* %8, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %64, %24, %16
  %67 = load i64, i64* %3, align 8
  ret i64 %67
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
