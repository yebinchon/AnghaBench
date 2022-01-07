; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_title_add_multiple_check_conflicts.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_title_add_multiple_check_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"title_add_multiple_list\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"title_selected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @title_add_multiple_check_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @title_add_multiple_check_conflicts(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GHB_WIDGET(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = call i32* @GTK_LIST_BOX(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ghb_array_len(i32 %19)
  store i64 %20, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %59, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32* @gtk_list_box_get_row_at_index(i32* %26, i64 %27)
  %29 = call i32* @GTK_WIDGET(i32* %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @find_widget(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32* @GTK_TOGGLE_BUTTON(i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32* @ghb_array_get(i32 %35, i64 %36)
  store i32* %37, i32** %5, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @title_multiple_can_select(i32 %40, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @ghb_dict_set_bool(i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @gtk_toggle_button_set_active(i32* %46, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32* @GTK_WIDGET(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @title_add_multiple_set_sensitive(i32* %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %25
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %21

62:                                               ; preds = %21
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @title_add_multiple_set_conflict_label(%struct.TYPE_4__* %63, i32 %64)
  ret void
}

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i64 @ghb_array_len(i32) #1

declare dso_local i32* @GTK_WIDGET(i32*) #1

declare dso_local i32* @gtk_list_box_get_row_at_index(i32*, i64) #1

declare dso_local i32* @GTK_TOGGLE_BUTTON(i32) #1

declare dso_local i32 @find_widget(i32*, i8*) #1

declare dso_local i32* @ghb_array_get(i32, i64) #1

declare dso_local i32 @title_multiple_can_select(i32, i64) #1

declare dso_local i32 @ghb_dict_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @gtk_toggle_button_set_active(i32*, i32) #1

declare dso_local i32 @title_add_multiple_set_sensitive(i32*, i32) #1

declare dso_local i32 @title_add_multiple_set_conflict_label(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
