; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_z80_md_bank_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_z80_md_bank_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EL_Z80BNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"z80->68k r8 [%06x] %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @z80_md_bank_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @z80_md_bank_read(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i16 %0, i16* %2, align 2
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %6 = shl i32 %5, 15
  store i32 %6, i32* %3, align 4
  %7 = load i16, i16* %2, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 32767
  %10 = load i32, i32* %3, align 4
  %11 = add i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call zeroext i8 @m68k_read8(i32 %12)
  store i8 %13, i8* %4, align 1
  %14 = load i32, i32* @EL_Z80BNK, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i8, i8* %4, align 1
  %17 = call i32 @elprintf(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15, i8 zeroext %16)
  %18 = load i8, i8* %4, align 1
  ret i8 %18
}

declare dso_local zeroext i8 @m68k_read8(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
