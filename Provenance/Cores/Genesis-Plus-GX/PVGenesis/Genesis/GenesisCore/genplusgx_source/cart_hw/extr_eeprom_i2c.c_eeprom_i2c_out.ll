; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_out.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_i2c.c_eeprom_i2c_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8 }
%struct.TYPE_5__ = type { i32* }

@eeprom_i2c = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sram = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @eeprom_i2c_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @eeprom_i2c_out() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 0), align 4
  store i8 %3, i8* %1, align 1
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 1), align 4
  switch i32 %4, label %38 [
    i32 129, label %5
    i32 132, label %33
    i32 133, label %33
    i32 131, label %33
    i32 130, label %33
    i32 128, label %33
  ]

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %7 = icmp slt i32 %6, 9
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 3), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  %11 = or i32 %9, %10
  %12 = and i32 %11, 65535
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %2, align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sram, i32 0, i32 0), align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %19 = sub nsw i32 8, %18
  %20 = ashr i32 %17, %19
  %21 = and i32 %20, 1
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %1, align 1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %31

25:                                               ; preds = %8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 4), align 4
  br label %31

31:                                               ; preds = %25, %8
  br label %32

32:                                               ; preds = %31, %5
  br label %39

33:                                               ; preds = %0, %0, %0, %0, %0
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 2), align 4
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8 0, i8* %1, align 1
  br label %37

37:                                               ; preds = %36, %33
  br label %39

38:                                               ; preds = %0
  br label %39

39:                                               ; preds = %38, %37, %32
  %40 = load i8, i8* %1, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eeprom_i2c, i32 0, i32 5, i32 1), align 4
  %43 = zext i8 %42 to i32
  %44 = shl i32 %41, %43
  %45 = trunc i32 %44 to i8
  ret i8 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
