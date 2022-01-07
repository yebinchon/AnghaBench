; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_z80_sms_out.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_z80_sms_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }

@EL_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"z80 port %04x write %02x\00", align 1
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 1
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_PSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8)* @z80_sms_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z80_sms_out(i16 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* @EL_IO, align 4
  %6 = load i16, i16* %3, align 2
  %7 = load i8, i8* %4, align 1
  %8 = call i32 @elprintf(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i16 zeroext %6, i8 zeroext %7)
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 193
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %3, align 2
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  switch i32 %14, label %32 [
    i32 1, label %15
    i32 64, label %17
    i32 65, label %17
    i32 128, label %26
    i32 129, label %29
  ]

15:                                               ; preds = %2
  %16 = load i8, i8* %4, align 1
  store i8 %16, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 1
  br label %32

17:                                               ; preds = %2, %2
  %18 = load i32, i32* @PicoOpt, align 4
  %19 = load i32, i32* @POPT_EN_PSG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @SN76496Write(i8 zeroext %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %32

26:                                               ; preds = %2
  %27 = load i8, i8* %4, align 1
  %28 = call i32 @vdp_data_write(i8 zeroext %27)
  br label %32

29:                                               ; preds = %2
  %30 = load i8, i8* %4, align 1
  %31 = call i32 @vdp_ctl_write(i8 zeroext %30)
  br label %32

32:                                               ; preds = %2, %29, %26, %25, %15
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i16 zeroext, i8 zeroext) #1

declare dso_local i32 @SN76496Write(i8 zeroext) #1

declare dso_local i32 @vdp_data_write(i8 zeroext) #1

declare dso_local i32 @vdp_ctl_write(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
