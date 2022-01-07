; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_efuse_esp32.c_bootloader_common_get_chip_revision.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_efuse_esp32.c_bootloader_common_get_chip_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFUSE_BLK0_RDATA3_REG = common dso_local global i32 0, align 4
@EFUSE_BLK0_RDATA5_REG = common dso_local global i32 0, align 4
@APB_CTRL_DATE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootloader_common_get_chip_revision() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @EFUSE_BLK0_RDATA3_REG, align 4
  %7 = call i32 @REG_READ(i32 %6)
  %8 = and i32 %7, 61440
  %9 = ashr i32 %8, 15
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @EFUSE_BLK0_RDATA5_REG, align 4
  %11 = call i32 @REG_READ(i32 %10)
  %12 = and i32 %11, 1048576
  %13 = ashr i32 %12, 20
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @APB_CTRL_DATE_REG, align 4
  %15 = call i32 @REG_READ(i32 %14)
  %16 = and i32 %15, -2147483648
  %17 = lshr i32 %16, 31
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 2
  %20 = load i32, i32* %2, align 4
  %21 = shl i32 %20, 1
  %22 = or i32 %19, %21
  %23 = load i32, i32* %1, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %30 [
    i32 0, label %26
    i32 1, label %27
    i32 3, label %28
    i32 7, label %29
  ]

26:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %31

27:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %31

28:                                               ; preds = %0
  store i32 2, i32* %5, align 4
  br label %31

29:                                               ; preds = %0
  store i32 3, i32* %5, align 4
  br label %31

30:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
