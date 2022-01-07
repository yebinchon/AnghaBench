; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_run_cpus.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_run_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@SekCycleAim = common dso_local global i64 0, align 8
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@EL_CDPOLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"m68k poll [%02x] x%d @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@SekCycleCnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcd_run_cpus_normal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i64, i64* @SekCycleAim, align 8
  %7 = add nsw i64 %6, %5
  store i64 %7, i64* @SekCycleAim, align 8
  %8 = call i64 (...) @SekShouldInterrupt()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 12
  br i1 %15, label %16, label %20

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %52

20:                                               ; preds = %10
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 16
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load i64, i64* @SekCycleAim, align 8
  %28 = call i32 @pcd_sync_s68k(i64 %27, i32 1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* @EL_CDPOLL, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SekPc, align 4
  %42 = call i32 @elprintf(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %41)
  %43 = load i64, i64* @SekCycleAim, align 8
  store i64 %43, i64* @SekCycleCnt, align 8
  br label %72

44:                                               ; preds = %26
  %45 = load i64, i64* @SekCycleAim, align 8
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %46, 40220
  %48 = ashr i32 %47, 16
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %45, %49
  store i64 %50, i64* @SekCycleCnt, align 8
  br label %51

51:                                               ; preds = %44, %20
  br label %52

52:                                               ; preds = %51, %16
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i64, i64* @SekCycleAim, align 8
  %55 = load i64, i64* @SekCycleCnt, align 8
  %56 = call i64 @CYCLES_GT(i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = call i32 (...) @SekRunM68kOnce()
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* @SekCycleCnt, align 8
  %70 = call i32 @pcd_sync_s68k(i64 %69, i32 0)
  br label %71

71:                                               ; preds = %65, %58
  br label %53

72:                                               ; preds = %31, %53
  ret void
}

declare dso_local i64 @SekShouldInterrupt(...) #1

declare dso_local i32 @pcd_sync_s68k(i64, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @CYCLES_GT(i64, i64) #1

declare dso_local i32 @SekRunM68kOnce(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
