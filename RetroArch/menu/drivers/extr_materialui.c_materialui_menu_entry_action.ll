; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_menu_entry_action.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_menu_entry_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@materialui_menu_entry_action.new_entry = internal global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*, i64, i32)* @materialui_menu_entry_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_menu_entry_action(i8* %0, %struct.TYPE_6__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @generic_menu_entry_action(i8* %21, %struct.TYPE_6__* %22, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @materialui_parse_menu_entry_action(i32* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = call i64 (...) @menu_navigation_get_selection()
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = call i32 @menu_entry_init(%struct.TYPE_6__* @materialui_menu_entry_action.new_entry)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @materialui_menu_entry_action.new_entry, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @materialui_menu_entry_action.new_entry, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @materialui_menu_entry_action.new_entry, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @materialui_menu_entry_action.new_entry, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @materialui_menu_entry_action.new_entry, i32 0, i32 4), align 4
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @menu_entry_get(%struct.TYPE_6__* @materialui_menu_entry_action.new_entry, i32 0, i64 %36, i32* null, i32 1)
  store %struct.TYPE_6__* @materialui_menu_entry_action.new_entry, %struct.TYPE_6__** %10, align 8
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @generic_menu_entry_action(i8* %39, %struct.TYPE_6__* %40, i64 %41, i32 %42)
  ret i32 %43
}

declare dso_local i32 @generic_menu_entry_action(i8*, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @materialui_parse_menu_entry_action(i32*, i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_6__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_6__*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
