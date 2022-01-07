; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_menu_get_parent_menu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_menu_get_parent_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, %struct.menu* }
%struct.TYPE_2__ = type { i32 }

@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@P_MENU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.menu* @menu_get_parent_menu(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %2, align 8
  br label %4

4:                                                ; preds = %26, %1
  %5 = load %struct.menu*, %struct.menu** %2, align 8
  %6 = icmp ne %struct.menu* %5, @rootmenu
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load %struct.menu*, %struct.menu** %2, align 8
  %9 = getelementptr inbounds %struct.menu, %struct.menu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.menu*, %struct.menu** %2, align 8
  %14 = getelementptr inbounds %struct.menu, %struct.menu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %19

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 0, %18 ]
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @P_MENU, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %30

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.menu*, %struct.menu** %2, align 8
  %28 = getelementptr inbounds %struct.menu, %struct.menu* %27, i32 0, i32 1
  %29 = load %struct.menu*, %struct.menu** %28, align 8
  store %struct.menu* %29, %struct.menu** %2, align 8
  br label %4

30:                                               ; preds = %24, %4
  %31 = load %struct.menu*, %struct.menu** %2, align 8
  ret %struct.menu* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
