; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_io.c"
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
define dso_local void @PicoWrite8_io(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65505
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @io_ports_write(i32 %9, i32 %10)
  br label %56

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 65281
  %15 = icmp eq i32 %14, 4352
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ctl_write_z80busreq(i32 %17)
  br label %56

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 65281
  %22 = icmp eq i32 %21, 4608
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ctl_write_z80reset(i32 %24)
  br label %56

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 10563825
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* @EL_SRAMIO, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @elprintf(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @SRR_MAPPED, align 4
  %34 = load i32, i32* @SRR_READONLY, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 3
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  br label %56

43:                                               ; preds = %26
  %44 = load i32, i32* @PicoOpt, align 4
  %45 = load i32, i32* @POPT_EN_32X, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @PicoWrite8_32x(i32 %49, i32 %50)
  br label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @m68k_unmapped_write8(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48, %29, %23, %16, %8
  ret void
}

declare dso_local i32 @io_ports_write(i32, i32) #1

declare dso_local i32 @ctl_write_z80busreq(i32) #1

declare dso_local i32 @ctl_write_z80reset(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @PicoWrite8_32x(i32, i32) #1

declare dso_local i32 @m68k_unmapped_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
