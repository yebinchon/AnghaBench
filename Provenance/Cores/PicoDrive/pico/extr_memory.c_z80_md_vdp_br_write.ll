; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_z80_md_vdp_br_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_z80_md_vdp_br_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_PSG = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"z80 invalid w8 [%06x] %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @z80_md_vdp_br_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z80_md_vdp_br_write(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65529
  %7 = icmp eq i32 %6, 32529
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* @PicoOpt, align 4
  %10 = load i32, i32* @POPT_EN_PSG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8, i8* %4, align 1
  %15 = call i32 @SN76496Write(i8 zeroext %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %36

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = lshr i32 %18, 8
  %20 = icmp eq i32 %19, 96
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %30 = and i32 %29, 511
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  br label %36

31:                                               ; preds = %17
  %32 = load i32, i32* @EL_ANOMALY, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i8, i8* %4, align 1
  %35 = call i32 @elprintf(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33, i8 zeroext %34)
  br label %36

36:                                               ; preds = %31, %21, %16
  ret void
}

declare dso_local i32 @SN76496Write(i8 zeroext) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
