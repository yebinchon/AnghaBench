; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pia.c_PIA_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pia.c_PIA_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIA_PACTL = common dso_local global i32 0, align 4
@PIA_PBCTL = common dso_local global i32 0, align 4
@PIA_PORTA_mask = common dso_local global i32 0, align 4
@PIA_PORTA = common dso_local global i32 0, align 4
@Atari800_machine_type = common dso_local global i32 0, align 4
@Atari800_MACHINE_XLXE = common dso_local global i32 0, align 4
@PIA_PORTB = common dso_local global i32 0, align 4
@PIA_PORTB_mask = common dso_local global i32 0, align 4
@XEP80_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PIA_PutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 3
  switch i32 %6, label %85 [
    i32 131, label %7
    i32 130, label %15
    i32 129, label %30
    i32 128, label %45
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  %13 = call i32 @SIO_TapeMotor(i32 %12)
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* @PIA_PACTL, align 4
  br label %85

15:                                               ; preds = %2
  %16 = load i32, i32* @PIA_PBCTL, align 4
  %17 = load i32, i32* %4, align 4
  %18 = xor i32 %16, %17
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 8
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = call i32 @SIO_SwitchCommandFrame(i32 %26)
  br label %28

28:                                               ; preds = %21, %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* @PIA_PBCTL, align 4
  br label %85

30:                                               ; preds = %2
  %31 = load i32, i32* @PIA_PACTL, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %35, -1
  store i32 %36, i32* @PIA_PORTA_mask, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* @PIA_PORTA, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* @PIA_PORTA, align 4
  %41 = load i32, i32* @PIA_PORTA_mask, align 4
  %42 = or i32 %40, %41
  %43 = ashr i32 %42, 4
  %44 = call i32 @INPUT_SelectMultiJoy(i32 %43)
  br label %85

45:                                               ; preds = %2
  %46 = load i32, i32* @Atari800_machine_type, align 4
  %47 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load i32, i32* @PIA_PBCTL, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* @PIA_PORTB, align 4
  %55 = load i32, i32* %4, align 4
  %56 = xor i32 %55, -1
  %57 = or i32 %54, %56
  %58 = load i32, i32* @PIA_PORTB, align 4
  %59 = load i32, i32* @PIA_PORTB_mask, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @MEMORY_HandlePORTB(i32 %57, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = xor i32 %62, -1
  store i32 %63, i32* @PIA_PORTB_mask, align 4
  br label %73

64:                                               ; preds = %49
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @PIA_PORTB_mask, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PIA_PORTB, align 4
  %69 = load i32, i32* @PIA_PORTB_mask, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @MEMORY_HandlePORTB(i32 %67, i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* @PIA_PORTB, align 4
  br label %73

73:                                               ; preds = %64, %53
  br label %84

74:                                               ; preds = %45
  %75 = load i32, i32* @PIA_PBCTL, align 4
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = xor i32 %79, -1
  store i32 %80, i32* @PIA_PORTB_mask, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* @PIA_PORTB, align 4
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %73
  br label %85

85:                                               ; preds = %2, %84, %39, %28, %7
  ret void
}

declare dso_local i32 @SIO_TapeMotor(i32) #1

declare dso_local i32 @SIO_SwitchCommandFrame(i32) #1

declare dso_local i32 @INPUT_SelectMultiJoy(i32) #1

declare dso_local i32 @MEMORY_HandlePORTB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
