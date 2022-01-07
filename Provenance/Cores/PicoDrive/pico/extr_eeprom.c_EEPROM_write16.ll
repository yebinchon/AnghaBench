; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_eeprom.c_EEPROM_write16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_eeprom.c_EEPROM_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@last_write = common dso_local global i32 0, align 4
@EL_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"eeprom: skip because cycles=%i\00", align 1
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EEPROM_write16(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @SekCyclesDone()
  %5 = load i32, i32* @last_write, align 4
  %6 = sub nsw i32 %4, %5
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @EL_EEPROM, align 4
  %10 = call i32 (...) @SekCyclesDone()
  %11 = load i32, i32* @last_write, align 4
  %12 = sub nsw i32 %10, %11
  %13 = call i32 @elprintf(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @EEPROM_upd_pending(i32 %14)
  br label %31

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 6
  %20 = call i32 @EEPROM_write_do(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @EEPROM_upd_pending(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %25 = xor i32 %23, %24
  %26 = and i32 %25, 192
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 (...) @SekCyclesDone()
  store i32 %29, i32* @last_write, align 4
  br label %30

30:                                               ; preds = %28, %16
  br label %31

31:                                               ; preds = %30, %8
  ret void
}

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @EEPROM_upd_pending(i32) #1

declare dso_local i32 @EEPROM_write_do(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
