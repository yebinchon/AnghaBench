; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_read_AL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_read_AL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PC = common dso_local global i32* null, align 8
@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ssp dummy PM assign %08x @ %04x\00", align 1
@rPMC = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@ssp = common dso_local global %struct.TYPE_3__* null, align 8
@rAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_AL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_AL() #0 {
  %1 = load i32*, i32** @PC, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 -1
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @EL_SVP, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 0), align 4
  %8 = call i32 (...) @GET_PPC_OFFS()
  %9 = call i32 @elprintf(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %5, %0
  %11 = load i32, i32* @SSP_PMC_SET, align 4
  %12 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @rAL, align 4
  ret i32 %19
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
