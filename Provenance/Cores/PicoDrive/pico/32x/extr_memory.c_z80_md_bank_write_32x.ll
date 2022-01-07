; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_z80_md_bank_write_32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_z80_md_bank_write_32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@P32XF_Z80_32X_IO = common dso_local global i32 0, align 4
@Pico32x = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EL_Z80BNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"z80->68k w8 [%06x] %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @z80_md_bank_write_32x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z80_md_bank_write_32x(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %7 = shl i32 %6, 15
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 32767
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 16773120
  %14 = icmp eq i32 %13, 10571776
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @P32XF_Z80_32X_IO, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 0), align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 0), align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EL_Z80BNK, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i8, i8* %4, align 1
  %23 = call i32 @elprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21, i8 zeroext %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i8, i8* %4, align 1
  %26 = call i32 @m68k_write8(i32 %24, i8 zeroext %25)
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i8 zeroext) #1

declare dso_local i32 @m68k_write8(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
