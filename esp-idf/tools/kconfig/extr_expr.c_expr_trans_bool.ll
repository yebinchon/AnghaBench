; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_trans_bool.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_trans_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, %struct.expr* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.expr* }
%struct.TYPE_4__ = type { i32 }

@S_TRISTATE = common dso_local global i32 0, align 4
@symbol_no = common dso_local global i32 0, align 4
@E_SYMBOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_trans_bool(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %4 = load %struct.expr*, %struct.expr** %3, align 8
  %5 = icmp ne %struct.expr* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.expr* null, %struct.expr** %2, align 8
  br label %55

7:                                                ; preds = %1
  %8 = load %struct.expr*, %struct.expr** %3, align 8
  %9 = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %52 [
    i32 131, label %11
    i32 129, label %11
    i32 130, label %11
    i32 128, label %28
  ]

11:                                               ; preds = %7, %7, %7
  %12 = load %struct.expr*, %struct.expr** %3, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.expr*, %struct.expr** %14, align 8
  %16 = call %struct.expr* @expr_trans_bool(%struct.expr* %15)
  %17 = load %struct.expr*, %struct.expr** %3, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store %struct.expr* %16, %struct.expr** %19, align 8
  %20 = load %struct.expr*, %struct.expr** %3, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.expr*, %struct.expr** %22, align 8
  %24 = call %struct.expr* @expr_trans_bool(%struct.expr* %23)
  %25 = load %struct.expr*, %struct.expr** %3, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.expr* %24, %struct.expr** %27, align 8
  br label %53

28:                                               ; preds = %7
  %29 = load %struct.expr*, %struct.expr** %3, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_TRISTATE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load %struct.expr*, %struct.expr** %3, align 8
  %39 = getelementptr inbounds %struct.expr, %struct.expr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, @symbol_no
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* @E_SYMBOL, align 4
  %45 = load %struct.expr*, %struct.expr** %3, align 8
  %46 = getelementptr inbounds %struct.expr, %struct.expr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.expr*, %struct.expr** %3, align 8
  %48 = getelementptr inbounds %struct.expr, %struct.expr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %37
  br label %51

51:                                               ; preds = %50, %28
  br label %53

52:                                               ; preds = %7
  br label %53

53:                                               ; preds = %52, %51, %11
  %54 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %54, %struct.expr** %2, align 8
  br label %55

55:                                               ; preds = %53, %6
  %56 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
