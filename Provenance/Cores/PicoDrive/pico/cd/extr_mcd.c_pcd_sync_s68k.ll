; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_sync_s68k.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_sync_s68k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@mcd_m68k_cycle_base = common dso_local global i32 0, align 4
@mcd_s68k_cycle_base = common dso_local global i64 0, align 8
@mcd_m68k_cycle_mult = common dso_local global i64 0, align 8
@EL_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"s68k sync to %u, %u->%u\00", align 1
@SekCycleCntS68k = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@SekCycleAimS68k = common dso_local global i32 0, align 4
@event_time_next = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcd_sync_s68k(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @mcd_m68k_cycle_base, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* @mcd_s68k_cycle_base, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* @mcd_m68k_cycle_mult, align 8
  %15 = mul i64 %13, %14
  %16 = lshr i64 %15, 16
  %17 = add i64 %11, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @EL_CD, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SekCycleCntS68k, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @elprintf(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* @SekCycleAimS68k, align 4
  store i32 %30, i32* @SekCycleCntS68k, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pcd_run_events(i32 %31)
  store i32 0, i32* %3, align 4
  br label %78

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %73, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SekCycleCntS68k, align 4
  %37 = call i64 @CYCLES_GT(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = load i32, i32* @event_time_next, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* @SekCycleCntS68k, align 4
  %44 = load i32, i32* @event_time_next, align 4
  %45 = call i64 @CYCLES_GE(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @SekCycleCntS68k, align 4
  %49 = call i32 @pcd_run_events(i32 %48)
  br label %50

50:                                               ; preds = %47, %42, %39
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @event_time_next, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @event_time_next, align 4
  %57 = call i64 @CYCLES_GT(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @event_time_next, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %54, %50
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @SekRunS68k(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %74

73:                                               ; preds = %66, %61
  br label %34

74:                                               ; preds = %72, %34
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @SekCycleCntS68k, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %29
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pcd_run_events(i32) #1

declare dso_local i64 @CYCLES_GT(i32, i32) #1

declare dso_local i64 @CYCLES_GE(i32, i32) #1

declare dso_local i32 @SekRunS68k(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
