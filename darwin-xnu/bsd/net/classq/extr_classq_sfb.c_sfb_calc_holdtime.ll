; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_calc_holdtime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_calc_holdtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.sfb = type { i32 }

@sfb_holdtime = common dso_local global i64 0, align 8
@HOLDTIME_MIN = common dso_local global i32 0, align 4
@HOLDTIME_MAX = common dso_local global i32 0, align 4
@sfb_ttbl = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfb*, i64)* @sfb_calc_holdtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfb_calc_holdtime(%struct.sfb* %0, i64 %1) #0 {
  %3 = alloca %struct.sfb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sfb* %0, %struct.sfb** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @sfb_holdtime, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @sfb_holdtime, align 8
  store i64 %11, i64* %5, align 8
  br label %57

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.sfb*, %struct.sfb** %3, align 8
  %17 = load i32, i32* @HOLDTIME_MIN, align 4
  %18 = load i32, i32* @HOLDTIME_MAX, align 4
  %19 = call i64 @SFB_RANDOM(%struct.sfb* %16, i32 %17, i32 %18)
  store i64 %19, i64* %5, align 8
  br label %56

20:                                               ; preds = %12
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sfb_ttbl, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %50, %20
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sfb_ttbl, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %25
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sfb_ttbl, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %53

43:                                               ; preds = %33
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sfb_ttbl, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %25

53:                                               ; preds = %42, %25
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %53, %15
  br label %57

57:                                               ; preds = %56, %10
  %58 = load %struct.sfb*, %struct.sfb** %3, align 8
  %59 = getelementptr inbounds %struct.sfb, %struct.sfb* %58, i32 0, i32 0
  %60 = call i32 @net_nsectimer(i64* %5, i32* %59)
  ret void
}

declare dso_local i64 @SFB_RANDOM(%struct.sfb*, i32, i32) #1

declare dso_local i32 @net_nsectimer(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
