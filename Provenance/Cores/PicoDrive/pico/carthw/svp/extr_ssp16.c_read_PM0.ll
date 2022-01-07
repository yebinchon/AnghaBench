; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_read_PM0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_read_PM0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PM0 raw r %04x @ %04x\00", align 1
@rPM0 = common dso_local global i32 0, align 4
@SSP_WAIT_PM0 = common dso_local global i32 0, align 4
@ssp = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"det TIGHT loop: PM0\00", align 1
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
  br label %35

8:                                                ; preds = %0
  %9 = load i32, i32* @EL_SVP, align 4
  %10 = load i32, i32* @rPM0, align 4
  %11 = call i32 (...) @GET_PPC_OFFS()
  %12 = call i32 (i32, i8*, ...) @elprintf(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* @rPM0, align 4
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = call i32 (...) @GET_PPC_OFFS()
  %19 = icmp eq i32 %18, 2048
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 (...) @GET_PPC_OFFS()
  %22 = icmp eq i32 %21, 99614
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @SSP_WAIT_PM0, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @EL_SVP, align 4
  %30 = call i32 (i32, i8*, ...) @elprintf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %23, %20, %8
  %32 = load i32, i32* @rPM0, align 4
  %33 = and i32 %32, -3
  store i32 %33, i32* @rPM0, align 4
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %31, %6
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @pm_io(i32, i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
