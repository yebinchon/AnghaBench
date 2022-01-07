; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_on_scroll.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_on_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@on_scroll.ypos = internal global double 0.000000e+00, align 8
@SCROLL_THRESHOLD = common dso_local global double 0.000000e+00, align 8
@g = common dso_local global %struct.TYPE_2__* null, align 8
@item_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_scroll(i32* %0, double %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = load double, double* @on_scroll.ypos, align 8
  %9 = fadd double %8, %7
  store double %9, double* @on_scroll.ypos, align 8
  %10 = load double, double* @on_scroll.ypos, align 8
  %11 = load double, double* @SCROLL_THRESHOLD, align 8
  %12 = fneg double %11
  %13 = fcmp olt double %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* @item_count, align 4
  %20 = srem i32 %18, %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store double 0.000000e+00, double* @on_scroll.ypos, align 8
  br label %23

23:                                               ; preds = %14, %3
  %24 = load double, double* @on_scroll.ypos, align 8
  %25 = load double, double* @SCROLL_THRESHOLD, align 8
  %26 = fcmp ogt double %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @item_count, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %27
  store double 0.000000e+00, double* @on_scroll.ypos, align 8
  br label %42

42:                                               ; preds = %41, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
