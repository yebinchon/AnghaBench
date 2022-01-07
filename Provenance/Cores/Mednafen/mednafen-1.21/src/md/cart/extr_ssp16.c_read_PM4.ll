; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_read_PM4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_read_PM4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SSP_WAIT_30FE08 = common dso_local global i32 0, align 4
@ssp = common dso_local global %struct.TYPE_2__* null, align 8
@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"det TIGHT loop: [30fe08]\00", align 1
@SSP_WAIT_30FE06 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"det TIGHT loop: [30fe06]\00", align 1
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"PM4 raw r %04x @ %04x\00", align 1
@rPM4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @read_PM4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_PM4() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @pm_io(i32 4, i32 0, i32 0)
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %0
  %7 = call i32 (...) @GET_PPC_OFFS()
  switch i32 %7, label %24 [
    i32 2132, label %8
    i32 20242, label %16
  ]

8:                                                ; preds = %6
  %9 = load i32, i32* @SSP_WAIT_30FE08, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @EL_SVP, align 4
  %15 = call i32 (i32, i8*, ...) @elprintf(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

16:                                               ; preds = %6
  %17 = load i32, i32* @SSP_WAIT_30FE06, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @EL_SVP, align 4
  %23 = call i32 (i32, i8*, ...) @elprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %6, %16, %8
  br label %25

25:                                               ; preds = %24, %0
  %26 = load i64, i64* %2, align 8
  %27 = icmp ne i64 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* %2, align 8
  store i64 %29, i64* %1, align 8
  br label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @EL_SVP, align 4
  %32 = load i32, i32* @EL_ANOMALY, align 4
  %33 = or i32 %31, %32
  %34 = load i64, i64* @rPM4, align 8
  %35 = call i32 (...) @GET_PPC_OFFS()
  %36 = call i32 (i32, i8*, ...) @elprintf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %34, i32 %35)
  %37 = load i64, i64* @rPM4, align 8
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

declare dso_local i64 @pm_io(i32, i32, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
