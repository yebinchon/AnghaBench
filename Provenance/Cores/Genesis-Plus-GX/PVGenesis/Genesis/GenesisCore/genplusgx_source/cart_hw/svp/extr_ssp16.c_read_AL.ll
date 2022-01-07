; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_read_AL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_read_AL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PC = common dso_local global i32* null, align 8
@SSP_PMC_SET = common dso_local global i32 0, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@ssp = common dso_local global %struct.TYPE_3__* null, align 8
@rAL = common dso_local global i32 0, align 4
@EL_SVP = common dso_local global i32 0, align 4
@rPMC = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_AL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_AL() #0 {
  %1 = load i32*, i32** @PC, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 -1
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @SSP_PMC_SET, align 4
  %7 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %5, %0
  %15 = load i32, i32* @rAL, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
