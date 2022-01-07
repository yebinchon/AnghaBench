; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_Pico32xStartup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_Pico32xStartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@EL_STATUS = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"32X startup\00", align 1
@PAHW_32X = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@msh2 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ssh2 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@sh2_irq_cb = common dso_local global i8* null, align 8
@P32XS2_ADEN = common dso_local global i32 0, align 4
@Pico32x = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@Pico = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@P32XS_nCART = common dso_local global i32 0, align 4
@P32XV_nPAL = common dso_local global i32 0, align 4
@rendstatus_old = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Pico32xStartup() #0 {
  %1 = load i32, i32* @EL_STATUS, align 4
  %2 = load i32, i32* @EL_32X, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @elprintf(i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @PAHW_32X, align 4
  %6 = load i32, i32* @PicoAHW, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* @PicoAHW, align 4
  %8 = call i32 @sh2_init(%struct.TYPE_9__* @msh2, i32 0, %struct.TYPE_9__* @ssh2)
  %9 = load i8*, i8** @sh2_irq_cb, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @msh2, i32 0, i32 0), align 8
  %10 = call i32 @sh2_init(%struct.TYPE_9__* @ssh2, i32 1, %struct.TYPE_9__* @msh2)
  %11 = load i8*, i8** @sh2_irq_cb, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ssh2, i32 0, i32 0), align 8
  %12 = call i32 (...) @PicoMemSetup32x()
  %13 = call i32 (...) @p32x_pwm_ctl_changed()
  %14 = call i32 (...) @p32x_timers_recalc()
  %15 = load i32, i32* @P32XS2_ADEN, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico32x, i32 0, i32 1), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 0, i32 1), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %0
  %21 = load i32, i32* @P32XS_nCART, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico32x, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %0
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 0, i32 0), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @P32XV_nPAL, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico32x, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %26
  store i32 -1, i32* @rendstatus_old, align 4
  %36 = call i32 (...) @emu_32x_startup()
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @sh2_init(%struct.TYPE_9__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @PicoMemSetup32x(...) #1

declare dso_local i32 @p32x_pwm_ctl_changed(...) #1

declare dso_local i32 @p32x_timers_recalc(...) #1

declare dso_local i32 @emu_32x_startup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
