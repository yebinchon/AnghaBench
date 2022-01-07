; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_write_word.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@eeprom_i2c = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @eeprom_i2c_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_i2c_write_word(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 0), align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 1), align 4
  %12 = add nsw i32 8, %11
  %13 = lshr i32 %10, %12
  %14 = and i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 0), align 4
  store i32 1, i32* %5, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 0), align 4
  %18 = xor i32 %17, 1
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 1), align 4
  %23 = lshr i32 %21, %22
  %24 = and i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 0), align 4
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 2), align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 3), align 4
  %33 = add nsw i32 8, %32
  %34 = lshr i32 %31, %33
  %35 = and i32 %34, 1
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 1), align 4
  store i32 1, i32* %5, align 4
  br label %47

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 2), align 4
  %39 = xor i32 %38, 1
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 2, i32 3), align 4
  %44 = lshr i32 %42, %43
  %45 = and i32 %44, 1
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @eeprom_i2c, i32 0, i32 1), align 4
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @eeprom_i2c_update()
  br label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @m68k_unused_16_w(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %50
  ret void
}

declare dso_local i32 @eeprom_i2c_update(...) #1

declare dso_local i32 @m68k_unused_16_w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
