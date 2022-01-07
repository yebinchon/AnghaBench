; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_pointer_up.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_pointer_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MENU_ACTION_CANCEL = common dso_local global i32 0, align 4
@MENU_ACTION_SELECT = common dso_local global i32 0, align 4
@MENU_ACTION_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, %struct.TYPE_3__*, i32*, i32)* @stripes_pointer_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripes_pointer_up(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = call i64 (...) @menu_navigation_get_selection()
  store i64 %20, i64* %18, align 8
  %21 = load i32, i32* %14, align 4
  switch i32 %21, label %77 [
    i32 128, label %22
    i32 129, label %22
    i32 130, label %61
  ]

22:                                               ; preds = %8, %8
  %23 = call i32 (...) @menu_display_get_header_height()
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %19, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %16, align 8
  %29 = load i64, i64* %18, align 8
  %30 = load i32, i32* @MENU_ACTION_CANCEL, align 4
  %31 = call i32 @menu_entry_action(i32* %28, i64 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %79

32:                                               ; preds = %22
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (...) @menu_entries_get_size()
  %35 = sub nsw i32 %34, 1
  %36 = icmp ule i32 %33, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %18, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32*, i32** %16, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i32, i32* @MENU_ACTION_SELECT, align 4
  %54 = call i32 @menu_entry_action(i32* %51, i64 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %79

55:                                               ; preds = %45, %42, %37
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @menu_navigation_set_selection(i32 %56)
  %58 = call i32 @menu_driver_navigation_set(i32 0)
  br label %59

59:                                               ; preds = %55, %32
  br label %60

60:                                               ; preds = %59
  br label %78

61:                                               ; preds = %8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (...) @menu_entries_get_size()
  %64 = sub nsw i32 %63, 1
  %65 = icmp ule i32 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %18, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32*, i32** %16, align 8
  %73 = load i64, i64* %18, align 8
  %74 = load i32, i32* @MENU_ACTION_START, align 4
  %75 = call i32 @menu_entry_action(i32* %72, i64 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  br label %79

76:                                               ; preds = %66, %61
  br label %78

77:                                               ; preds = %8
  br label %78

78:                                               ; preds = %77, %76, %60
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %71, %50, %27
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i32 @menu_entry_action(i32*, i64, i32) #1

declare dso_local i32 @menu_entries_get_size(...) #1

declare dso_local i32 @menu_navigation_set_selection(i32) #1

declare dso_local i32 @menu_driver_navigation_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
