; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_get_leftmost_symbol.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_get_leftmost_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.expr* }

@E_SYMBOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.expr*)* @expr_get_leftmost_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_get_leftmost_symbol(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %4 = load %struct.expr*, %struct.expr** %3, align 8
  %5 = icmp eq %struct.expr* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.expr* null, %struct.expr** %2, align 8
  br label %22

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %14, %7
  %9 = load %struct.expr*, %struct.expr** %3, align 8
  %10 = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @E_SYMBOL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.expr*, %struct.expr** %3, align 8
  %16 = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.expr*, %struct.expr** %17, align 8
  store %struct.expr* %18, %struct.expr** %3, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.expr*, %struct.expr** %3, align 8
  %21 = call %struct.expr* @expr_copy(%struct.expr* %20)
  store %struct.expr* %21, %struct.expr** %2, align 8
  br label %22

22:                                               ; preds = %19, %6
  %23 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %23
}

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
