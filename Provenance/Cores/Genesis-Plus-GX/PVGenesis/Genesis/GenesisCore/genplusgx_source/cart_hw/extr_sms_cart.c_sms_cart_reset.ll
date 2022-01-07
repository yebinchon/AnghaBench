; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_sms_cart_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_sms_cart_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32*, i32, i32, i64 }

@bios_rom = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cart_rom = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@slot = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_SMS = common dso_local global i32 0, align 4
@work_ram = common dso_local global i32* null, align 8
@io_reg = common dso_local global i32* null, align 8
@z80_readmap = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sms_cart_reset() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  store i32 0, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 2
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 0), align 8
  switch i32 %9, label %28 [
    i32 129, label %10
    i32 128, label %10
    i32 132, label %19
    i32 131, label %19
    i32 130, label %19
  ]

10:                                               ; preds = %0, %0
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 2, i32* %18, align 4
  br label %37

19:                                               ; preds = %0, %0, %0
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 0, i32* %27, align 4
  br label %37

28:                                               ; preds = %0
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 1, i32* %34, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %19, %10
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 1), align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 0), align 8
  %42 = add nsw i64 %41, 4194304
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  store i32* %43, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 2), align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 1), align 8
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 4
  br label %59

46:                                               ; preds = %37
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 0), align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 8
  store i32* %48, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 0), align 8
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 2), align 8
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 4
  %51 = load i32, i32* @system_hw, align 4
  %52 = load i32, i32* @SYSTEM_SMS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32*, i32** @work_ram, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 168, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %46
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 1), align 8
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 224, i32 168
  %64 = load i32*, i32** @io_reg, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 14
  store i32 %63, i32* %65, align 4
  %66 = call i32 (...) @mapper_reset()
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 1), align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 0), align 8
  %71 = add nsw i64 %70, 4194304
  %72 = load i64*, i64** @z80_readmap, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %59
  ret void
}

declare dso_local i32 @mapper_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
