; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_int3_timer_event.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_int3_timer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@Pico_mcd = common dso_local global %struct.TYPE_2__* null, align 8
@PCDS_IEN3 = common dso_local global i32 0, align 4
@EL_INTS = common dso_local global i32 0, align 4
@EL_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"s68k: timer irq 3\00", align 1
@PCD_EVENT_TIMER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pcd_int3_timer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_int3_timer_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 51
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCDS_IEN3, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @EL_INTS, align 4
  %13 = load i32, i32* @EL_CD, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @elprintf(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @SekInterruptS68k(i32 3)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 49
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @PCD_EVENT_TIMER3, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 49
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 384
  %33 = call i32 @pcd_event_schedule(i32 %25, i32 %26, i32 %32)
  br label %34

34:                                               ; preds = %24, %17
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @SekInterruptS68k(i32) #1

declare dso_local i32 @pcd_event_schedule(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
