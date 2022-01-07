; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_fixup_rootmenu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_fixup_rootmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, %struct.menu*, %struct.menu*, i32 }
%struct.TYPE_2__ = type { i64 }

@fixup_rootmenu.menu_cnt = internal global i32 0, align 4
@MENU_ROOT = common dso_local global i32 0, align 4
@P_MENU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixup_rootmenu(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.menu*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %4 = load i32, i32* @MENU_ROOT, align 4
  %5 = load %struct.menu*, %struct.menu** %2, align 8
  %6 = getelementptr inbounds %struct.menu, %struct.menu* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.menu*, %struct.menu** %2, align 8
  %10 = getelementptr inbounds %struct.menu, %struct.menu* %9, i32 0, i32 2
  %11 = load %struct.menu*, %struct.menu** %10, align 8
  store %struct.menu* %11, %struct.menu** %3, align 8
  br label %12

12:                                               ; preds = %41, %1
  %13 = load %struct.menu*, %struct.menu** %3, align 8
  %14 = icmp ne %struct.menu* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load %struct.menu*, %struct.menu** %3, align 8
  %17 = getelementptr inbounds %struct.menu, %struct.menu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.menu*, %struct.menu** %3, align 8
  %22 = getelementptr inbounds %struct.menu, %struct.menu* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @P_MENU, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* @fixup_rootmenu.menu_cnt, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @fixup_rootmenu.menu_cnt, align 4
  %31 = load %struct.menu*, %struct.menu** %3, align 8
  call void @fixup_rootmenu(%struct.menu* %31)
  %32 = load i32, i32* @fixup_rootmenu.menu_cnt, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* @fixup_rootmenu.menu_cnt, align 4
  br label %40

34:                                               ; preds = %20, %15
  %35 = load i32, i32* @fixup_rootmenu.menu_cnt, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load %struct.menu*, %struct.menu** %3, align 8
  call void @fixup_rootmenu(%struct.menu* %38)
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.menu*, %struct.menu** %3, align 8
  %43 = getelementptr inbounds %struct.menu, %struct.menu* %42, i32 0, i32 1
  %44 = load %struct.menu*, %struct.menu** %43, align 8
  store %struct.menu* %44, %struct.menu** %3, align 8
  br label %12

45:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
