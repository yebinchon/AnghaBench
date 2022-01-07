; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_state_loaded.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_state_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, %struct.TYPE_3__, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@SekCycleAim = common dso_local global i32 0, align 4
@SekCycleAimS68k = common dso_local global i32 0, align 4
@SekCycleCntS68k = common dso_local global i32 0, align 4
@pcd_event_times = common dso_local global i64* null, align 8
@PCD_EVENT_CDC = common dso_local global i64 0, align 8
@PCD_EVENT_TIMER3 = common dso_local global i64 0, align 8
@event_time_next = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcd_state_loaded() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @pcd_set_cycle_mult()
  %4 = call i32 (...) @pcd_state_loaded_mem()
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @memset(i32 %7, i32 0, i32 4)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @SekCycleAim, align 4
  %16 = call i32 @pcd_cycles_m68k_to_s68k(i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @SekCycleAimS68k, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, -1000
  br i1 %21, label %25, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 1000
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %0
  %26 = load i32, i32* %1, align 4
  store i32 %26, i32* @SekCycleAimS68k, align 4
  store i32 %26, i32* @SekCycleCntS68k, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64*, i64** @pcd_event_times, align 8
  %29 = load i64, i64* @PCD_EVENT_CDC, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load i32, i32* @SekCycleAimS68k, align 4
  %35 = load i64, i64* @PCD_EVENT_CDC, align 8
  %36 = call i32 @pcd_event_schedule(i32 %34, i64 %35, i32 166666)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 49
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %33
  %44 = load i32, i32* @SekCycleAimS68k, align 4
  %45 = load i64, i64* @PCD_EVENT_TIMER3, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 49
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 384
  %52 = call i32 @pcd_event_schedule(i32 %44, i64 %45, i32 %51)
  br label %53

53:                                               ; preds = %43, %33
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %1, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub i32 %55, %59
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = icmp ugt i32 %61, 250000
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i32, i32* %1, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %54
  store i64 0, i64* @event_time_next, align 8
  %69 = load i32, i32* @SekCycleCntS68k, align 4
  %70 = call i32 @pcd_run_events(i32 %69)
  ret void
}

declare dso_local i32 @pcd_set_cycle_mult(...) #1

declare dso_local i32 @pcd_state_loaded_mem(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pcd_cycles_m68k_to_s68k(i32) #1

declare dso_local i32 @pcd_event_schedule(i32, i64, i32) #1

declare dso_local i32 @pcd_run_events(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
