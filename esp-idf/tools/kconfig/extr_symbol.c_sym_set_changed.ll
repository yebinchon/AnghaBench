; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_set_changed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_set_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { %struct.property*, i32 }
%struct.property = type { %struct.TYPE_2__*, %struct.property* }
%struct.TYPE_2__ = type { i32 }

@SYMBOL_CHANGED = common dso_local global i32 0, align 4
@MENU_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_set_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_set_changed(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.property*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %4 = load i32, i32* @SYMBOL_CHANGED, align 4
  %5 = load %struct.symbol*, %struct.symbol** %2, align 8
  %6 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.symbol*, %struct.symbol** %2, align 8
  %10 = getelementptr inbounds %struct.symbol, %struct.symbol* %9, i32 0, i32 0
  %11 = load %struct.property*, %struct.property** %10, align 8
  store %struct.property* %11, %struct.property** %3, align 8
  br label %12

12:                                               ; preds = %29, %1
  %13 = load %struct.property*, %struct.property** %3, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.property*, %struct.property** %3, align 8
  %17 = getelementptr inbounds %struct.property, %struct.property* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* @MENU_CHANGED, align 4
  %22 = load %struct.property*, %struct.property** %3, align 8
  %23 = getelementptr inbounds %struct.property, %struct.property* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %20, %15
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.property*, %struct.property** %3, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 1
  %32 = load %struct.property*, %struct.property** %31, align 8
  store %struct.property* %32, %struct.property** %3, align 8
  br label %12

33:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
