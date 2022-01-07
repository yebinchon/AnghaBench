; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_read_PMC.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_read_PMC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PMC r a %04x (st %c) @ %04x\00", align 1
@rPMC = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ssp = common dso_local global %struct.TYPE_3__* null, align 8
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_PMC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_PMC() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EL_SVP, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 0), align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 109, i32 97
  %12 = trunc i32 %11 to i8
  %13 = call i32 (...) @GET_PPC_OFFS()
  %14 = call i32 @elprintf(i32 %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %3, i8 signext %12, i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %0
  %22 = load i32, i32* @SSP_PMC_SET, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 0), align 4
  %34 = shl i32 %33, 4
  %35 = and i32 %34, 65520
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 0), align 4
  %37 = ashr i32 %36, 4
  %38 = and i32 %37, 15
  %39 = or i32 %35, %38
  store i32 %39, i32* %1, align 4
  br label %47

40:                                               ; preds = %0
  %41 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 0), align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %40, %21
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @elprintf(i32, i8*, i32, i8 signext, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
