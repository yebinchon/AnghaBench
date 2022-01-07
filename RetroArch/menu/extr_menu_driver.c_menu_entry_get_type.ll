; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entry_get_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entry_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@MENU_SETTING_CTL_IS_OF_PATH_TYPE = common dso_local global i32 0, align 4
@MENU_ENTRY_PATH = common dso_local global i32 0, align 4
@MENU_ENTRY_BOOL = common dso_local global i32 0, align 4
@MENU_ENTRY_BIND = common dso_local global i32 0, align 4
@MENU_ENTRY_INT = common dso_local global i32 0, align 4
@MENU_ENTRY_UINT = common dso_local global i32 0, align 4
@MENU_ENTRY_SIZE = common dso_local global i32 0, align 4
@MENU_ENTRY_FLOAT = common dso_local global i32 0, align 4
@MENU_ENTRY_DIR = common dso_local global i32 0, align 4
@MENU_ENTRY_ENUM = common dso_local global i32 0, align 4
@MENU_ENTRY_STRING = common dso_local global i32 0, align 4
@MENU_ENTRY_HEX = common dso_local global i32 0, align 4
@MENU_ENTRY_ACTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_entry_get_type(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %7 = call %struct.TYPE_7__* @menu_entries_get_selection_buf_ptr_internal(i32 0)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* @MENU_SETTING_CTL_IS_OF_PATH_TYPE, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = call i64 @menu_setting_ctl(i32 %8, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @MENU_ENTRY_PATH, align 4
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  br label %28

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi %struct.TYPE_6__* [ %26, %18 ], [ null, %27 ]
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32* [ %35, %32 ], [ null, %36 ]
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @setting_get_type(i32* %42)
  switch i32 %43, label %66 [
    i32 137, label %44
    i32 138, label %46
    i32 133, label %48
    i32 128, label %50
    i32 131, label %52
    i32 135, label %54
    i32 132, label %56
    i32 136, label %58
    i32 129, label %60
    i32 130, label %62
    i32 134, label %64
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @MENU_ENTRY_BOOL, align 4
  store i32 %45, i32* %2, align 4
  br label %70

46:                                               ; preds = %41
  %47 = load i32, i32* @MENU_ENTRY_BIND, align 4
  store i32 %47, i32* %2, align 4
  br label %70

48:                                               ; preds = %41
  %49 = load i32, i32* @MENU_ENTRY_INT, align 4
  store i32 %49, i32* %2, align 4
  br label %70

50:                                               ; preds = %41
  %51 = load i32, i32* @MENU_ENTRY_UINT, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %41
  %53 = load i32, i32* @MENU_ENTRY_SIZE, align 4
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %41
  %55 = load i32, i32* @MENU_ENTRY_FLOAT, align 4
  store i32 %55, i32* %2, align 4
  br label %70

56:                                               ; preds = %41
  %57 = load i32, i32* @MENU_ENTRY_PATH, align 4
  store i32 %57, i32* %2, align 4
  br label %70

58:                                               ; preds = %41
  %59 = load i32, i32* @MENU_ENTRY_DIR, align 4
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %41
  %61 = load i32, i32* @MENU_ENTRY_ENUM, align 4
  store i32 %61, i32* %2, align 4
  br label %70

62:                                               ; preds = %41
  %63 = load i32, i32* @MENU_ENTRY_STRING, align 4
  store i32 %63, i32* %2, align 4
  br label %70

64:                                               ; preds = %41
  %65 = load i32, i32* @MENU_ENTRY_HEX, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %37
  %69 = load i32, i32* @MENU_ENTRY_ACTION, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_7__* @menu_entries_get_selection_buf_ptr_internal(i32) #1

declare dso_local i64 @menu_setting_ctl(i32, i8*) #1

declare dso_local i32 @setting_get_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
