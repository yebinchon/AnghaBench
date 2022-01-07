; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_calcPainOffset.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_calcPainOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ST_calcPainOffset.lastcalc = internal global i32 0, align 4
@ST_calcPainOffset.oldhealth = internal global i32 -1, align 4
@plyr = common dso_local global %struct.TYPE_2__* null, align 8
@ST_FACESTRIDE = common dso_local global i32 0, align 4
@ST_NUMPAINFACES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ST_calcPainOffset() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 100
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %11

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ 100, %6 ], [ %10, %7 ]
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @ST_calcPainOffset.oldhealth, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* @ST_FACESTRIDE, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sub nsw i32 100, %18
  %20 = load i32, i32* @ST_NUMPAINFACES, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sdiv i32 %21, 101
  %23 = mul nsw i32 %17, %22
  store i32 %23, i32* @ST_calcPainOffset.lastcalc, align 4
  %24 = load i32, i32* %1, align 4
  store i32 %24, i32* @ST_calcPainOffset.oldhealth, align 4
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i32, i32* @ST_calcPainOffset.lastcalc, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
