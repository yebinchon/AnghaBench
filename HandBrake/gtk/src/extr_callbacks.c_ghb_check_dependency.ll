; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_check_dependency.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_check_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GTK_TYPE_COMBO_BOX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ghb_check_dependency() %s\00", align 1
@dep_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to find dependent widget %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_check_dependency(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @G_OBJECT_TYPE(i32* %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @GTK_TYPE_COMBO_BOX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @GTK_COMBO_BOX(i32* %26)
  %28 = call i64 @gtk_combo_box_get_active(i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %110

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @ghb_get_setting_key(i32* %33)
  store i8* %34, i8** %8, align 8
  br label %37

35:                                               ; preds = %3
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @g_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32*, i32** @dep_map, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %110

43:                                               ; preds = %37
  %44 = load i32*, i32** @dep_map, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32* @ghb_dict_get(i32* %44, i8* %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @ghb_array_len(i32* %47)
  store i64 %48, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %107, %43
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32* @ghb_array_get(i32* %54, i64 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i8* @ghb_value_get_string(i32* %57)
  store i8* %58, i8** %13, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = call i32* @gtk_builder_get_object(i32 %61, i8* %62)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @g_message(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %107

69:                                               ; preds = %53
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i64 @dep_check(%struct.TYPE_4__* %70, i8* %71, i64* %16)
  store i64 %72, i64* %15, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @GTK_WIDGET(i32* %73)
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @gtk_widget_set_sensitive(i32 %74, i64 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @GTK_WIDGET(i32* %77)
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @gtk_widget_set_can_focus(i32 %78, i64 %79)
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %69
  %84 = load i64, i64* %16, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @GTK_WIDGET(i32* %87)
  %89 = call i64 @gtk_widget_get_visible(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @GTK_WIDGET(i32* %92)
  %94 = call i32 @gtk_widget_hide(i32 %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %106

96:                                               ; preds = %83, %69
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @GTK_WIDGET(i32* %97)
  %99 = call i64 @gtk_widget_get_visible(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @GTK_WIDGET(i32* %102)
  %104 = call i32 @gtk_widget_show(i32 %103)
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %95
  br label %107

107:                                              ; preds = %106, %66
  %108 = load i64, i64* %12, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %12, align 8
  br label %49

110:                                              ; preds = %30, %42, %49
  ret void
}

declare dso_local i64 @G_OBJECT_TYPE(i32*) #1

declare dso_local i64 @gtk_combo_box_get_active(i32) #1

declare dso_local i32 @GTK_COMBO_BOX(i32*) #1

declare dso_local i8* @ghb_get_setting_key(i32*) #1

declare dso_local i32 @g_debug(i8*, i8*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i8* @ghb_value_get_string(i32*) #1

declare dso_local i32* @gtk_builder_get_object(i32, i8*) #1

declare dso_local i32 @g_message(i8*, i8*) #1

declare dso_local i64 @dep_check(%struct.TYPE_4__*, i8*, i64*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32, i64) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @gtk_widget_set_can_focus(i32, i64) #1

declare dso_local i64 @gtk_widget_get_visible(i32) #1

declare dso_local i32 @gtk_widget_hide(i32) #1

declare dso_local i32 @gtk_widget_show(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
