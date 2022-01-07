; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_read_PM0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_read_PM0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rPM0 = common dso_local global i32 0, align 4
@SSP_WAIT_PM0 = common dso_local global i32 0, align 4
@ssp = common dso_local global %struct.TYPE_2__* null, align 8
@EL_SVP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_PM0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_PM0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @pm_io(i32 0, i32 0, i32 0)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %29

8:                                                ; preds = %0
  %9 = load i32, i32* @rPM0, align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = call i32 (...) @GET_PPC_OFFS()
  %15 = icmp eq i32 %14, 2048
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i32 (...) @GET_PPC_OFFS()
  %18 = icmp eq i32 %17, 99614
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @SSP_WAIT_PM0, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %16, %8
  %26 = load i32, i32* @rPM0, align 4
  %27 = and i32 %26, -3
  store i32 %27, i32* @rPM0, align 4
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %6
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @pm_io(i32, i32, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
