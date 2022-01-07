; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspReadMonitor.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspReadMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@scsp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SCSP_FREQ_LOW_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ScspReadMonitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ScspReadMonitor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 1), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SCSP_FREQ_LOW_BITS, align 4
  %10 = add nsw i32 %9, 12
  %11 = ashr i32 %8, %10
  %12 = and i32 %11, 15
  store i32 %12, i32* %1, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 1), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 130, label %19
    i32 128, label %20
    i32 129, label %21
  ]

18:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  br label %22

20:                                               ; preds = %0
  store i32 2, i32* %2, align 4
  br label %22

21:                                               ; preds = %0
  store i32 3, i32* %2, align 4
  br label %22

22:                                               ; preds = %0, %21, %20, %19, %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 1), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 27
  %29 = sub nsw i32 31, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %1, align 4
  %31 = shl i32 %30, 7
  %32 = load i32, i32* %2, align 4
  %33 = shl i32 %32, 5
  %34 = or i32 %31, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %34, %35
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
