; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_write_PMC.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_write_PMC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@ssp = common dso_local global %struct.TYPE_3__* null, align 8
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@rPMC = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PMC w m %04x @ %04x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PMC w a %04x @ %04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_PMC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_PMC(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @SSP_PMC_SET, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i8*, i8** %2, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 1), align 8
  %22 = load i32, i32* @EL_SVP, align 4
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 1), align 8
  %24 = call i32 (...) @GET_PPC_OFFS()
  %25 = call i32 @elprintf(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  br label %37

26:                                               ; preds = %1
  %27 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ssp, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i8*, i8** %2, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 0), align 8
  %33 = load i32, i32* @EL_SVP, align 4
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rPMC, i32 0, i32 0), align 8
  %35 = call i32 (...) @GET_PPC_OFFS()
  %36 = call i32 @elprintf(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %26, %9
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
