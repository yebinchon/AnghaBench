; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pia.c_PIA_StateRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pia.c_PIA_StateRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIA_PACTL = common dso_local global i32 0, align 4
@PIA_PBCTL = common dso_local global i32 0, align 4
@PIA_PORTA = common dso_local global i32 0, align 4
@PIA_PORTB = common dso_local global i32 0, align 4
@MEMORY_xe_bank = common dso_local global i32 0, align 4
@MEMORY_selftest_enabled = common dso_local global i32 0, align 4
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@MEMORY_ram_size = common dso_local global i64 0, align 8
@MEMORY_RAM_320_COMPY_SHOP = common dso_local global i64 0, align 8
@MEMORY_RAM_320_RAMBO = common dso_local global i64 0, align 8
@MEMORY_cartA0BF_enabled = common dso_local global i32 0, align 4
@PIA_PORTA_mask = common dso_local global i32 0, align 4
@PIA_PORTB_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PIA_StateRead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @StateSav_ReadUBYTE(i32* @PIA_PACTL, i32 1)
  %6 = load i32, i32* @PIA_PACTL, align 4
  %7 = and i32 %6, 8
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 1
  %11 = call i32 @SIO_TapeMotor(i32 %10)
  %12 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %13 = load i32, i32* @PIA_PBCTL, align 4
  %14 = load i32, i32* %3, align 4
  %15 = xor i32 %13, %14
  %16 = and i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  %24 = call i32 @SIO_SwitchCommandFrame(i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* @PIA_PBCTL, align 4
  %27 = call i32 @StateSav_ReadUBYTE(i32* @PIA_PORTA, i32 1)
  %28 = call i32 @StateSav_ReadUBYTE(i32* @PIA_PORTB, i32 1)
  %29 = load i32, i32* %2, align 4
  %30 = icmp sle i32 %29, 6
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = call i32 @StateSav_ReadINT(i32* @MEMORY_xe_bank, i32 1)
  %33 = call i32 @StateSav_ReadINT(i32* @MEMORY_selftest_enabled, i32 1)
  %34 = call i32 @StateSav_ReadINT(i32* %4, i32 1)
  %35 = load i64, i64* @Atari800_machine_type, align 8
  %36 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* @MEMORY_ram_size, align 8
  %43 = load i64, i64* @MEMORY_RAM_320_COMPY_SHOP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @MEMORY_RAM_320_RAMBO, align 8
  store i64 %46, i64* @MEMORY_ram_size, align 8
  br label %47

47:                                               ; preds = %45, %41, %38
  br label %48

48:                                               ; preds = %47, %31
  %49 = call i32 @StateSav_ReadINT(i32* @MEMORY_cartA0BF_enabled, i32 1)
  br label %50

50:                                               ; preds = %48, %25
  %51 = call i32 @StateSav_ReadUBYTE(i32* @PIA_PORTA_mask, i32 1)
  %52 = call i32 @StateSav_ReadUBYTE(i32* @PIA_PORTB_mask, i32 1)
  ret void
}

declare dso_local i32 @StateSav_ReadUBYTE(i32*, i32) #1

declare dso_local i32 @SIO_TapeMotor(i32) #1

declare dso_local i32 @SIO_SwitchCommandFrame(i32) #1

declare dso_local i32 @StateSav_ReadINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
