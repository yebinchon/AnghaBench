; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_navigation_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_navigation_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@rgui_term_layout = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@FONT_HEIGHT_STRIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rgui_navigation_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_navigation_set(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = call i64 (...) @menu_entries_get_size()
  store i64 %10, i64* %7, align 8
  %11 = call i64 (...) @menu_navigation_get_selection()
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = call i32 @rgui_scan_selected_entry_thumbnail(%struct.TYPE_5__* %18, i32 0)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = call i32 @rgui_update_menu_sublabel(%struct.TYPE_5__* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %78

25:                                               ; preds = %17
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgui_term_layout, i32 0, i32 0), align 4
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %67

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgui_term_layout, i32 0, i32 0), align 4
  %35 = sdiv i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgui_term_layout, i32 0, i32 0), align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = sub i64 %40, %43
  %45 = icmp ult i64 %39, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgui_term_layout, i32 0, i32 0), align 4
  %49 = sdiv i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = sub i64 %47, %50
  store i64 %51, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %66

52:                                               ; preds = %38, %32
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgui_term_layout, i32 0, i32 0), align 4
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = sub i64 %54, %57
  %59 = icmp uge i64 %53, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgui_term_layout, i32 0, i32 0), align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %61, %63
  store i64 %64, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %52
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %66, %31
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %72 = call i32 @menu_entries_ctl(i32 %71, i64* %5)
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @FONT_HEIGHT_STRIDE, align 8
  %75 = mul i64 %73, %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %16, %24, %70, %67
  ret void
}

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @rgui_scan_selected_entry_thumbnail(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @rgui_update_menu_sublabel(%struct.TYPE_5__*) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
