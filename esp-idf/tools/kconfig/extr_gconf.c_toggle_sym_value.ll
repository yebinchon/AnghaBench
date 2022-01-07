; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_toggle_sym_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_toggle_sym_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@view_mode = common dso_local global i64 0, align 8
@FULL_VIEW = common dso_local global i64 0, align 8
@rootmenu = common dso_local global i32 0, align 4
@SPLIT_VIEW = common dso_local global i64 0, align 8
@browsed = common dso_local global i32* null, align 8
@SINGLE_VIEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @toggle_sym_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_sym_value(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %3 = load %struct.menu*, %struct.menu** %2, align 8
  %4 = getelementptr inbounds %struct.menu, %struct.menu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.menu*, %struct.menu** %2, align 8
  %10 = getelementptr inbounds %struct.menu, %struct.menu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sym_toggle_tristate_value(i32 %11)
  %13 = load i64, i64* @view_mode, align 8
  %14 = load i64, i64* @FULL_VIEW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @update_tree(i32* @rootmenu, i32* null)
  br label %34

18:                                               ; preds = %8
  %19 = load i64, i64* @view_mode, align 8
  %20 = load i64, i64* @SPLIT_VIEW, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32*, i32** @browsed, align 8
  %24 = call i32 @update_tree(i32* %23, i32* null)
  %25 = call i32 (...) @display_list()
  br label %33

26:                                               ; preds = %18
  %27 = load i64, i64* @view_mode, align 8
  %28 = load i64, i64* @SINGLE_VIEW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @display_tree_part()
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %7, %33, %16
  ret void
}

declare dso_local i32 @sym_toggle_tristate_value(i32) #1

declare dso_local i32 @update_tree(i32*, i32*) #1

declare dso_local i32 @display_list(...) #1

declare dso_local i32 @display_tree_part(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
