; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite16_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite16_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EL_SRAMIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sram reg=%02x\00", align 1
@SRR_MAPPED = common dso_local global i32 0, align 4
@SRR_READONLY = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_32X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoWrite16_io(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65504
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @io_ports_write(i32 %9, i32 %10)
  br label %58

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 65280
  %15 = icmp eq i32 %14, 4352
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = call i32 @ctl_write_z80busreq(i32 %18)
  br label %58

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 65280
  %23 = icmp eq i32 %22, 4608
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 8
  %27 = call i32 @ctl_write_z80reset(i32 %26)
  br label %58

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 10563824
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, i32* @EL_SRAMIO, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @elprintf(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @SRR_MAPPED, align 4
  %36 = load i32, i32* @SRR_READONLY, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 3
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  br label %58

45:                                               ; preds = %28
  %46 = load i32, i32* @PicoOpt, align 4
  %47 = load i32, i32* @POPT_EN_32X, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @PicoWrite16_32x(i32 %51, i32 %52)
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @m68k_unmapped_write16(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %50, %31, %24, %16, %8
  ret void
}

declare dso_local i32 @io_ports_write(i32, i32) #1

declare dso_local i32 @ctl_write_z80busreq(i32) #1

declare dso_local i32 @ctl_write_z80reset(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @PicoWrite16_32x(i32, i32) #1

declare dso_local i32 @m68k_unmapped_write16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
