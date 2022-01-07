; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_do_source_dialog.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_do_source_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"source_browse_clicked_cb ()\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"scan_source\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"single_title_box\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"source_dialog\00", align 1
@GTK_RESPONSE_NO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"single_title\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"default_source\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_6__*)* @do_source_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_source_dialog(i64 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @ghb_dict_get_string(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @GHB_WIDGET(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32* %19, i32** %8, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @gtk_widget_show(i32* %23)
  br label %28

25:                                               ; preds = %2
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @gtk_widget_hide(i32* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @GHB_WIDGET(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %32, i32** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @source_dialog_extra_widgets(%struct.TYPE_6__* %33, i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @gtk_widget_show(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @GTK_FILE_CHOOSER(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @gtk_file_chooser_select_filename(i32 %39, i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @GTK_DIALOG(i32* %42)
  %44 = call i64 @gtk_dialog_run(i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @gtk_widget_hide(i32* %45)
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @GTK_RESPONSE_NO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %28
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @GTK_FILE_CHOOSER(i32* %51)
  %53 = call i32* @gtk_file_chooser_get_filename(i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = load i64, i64* %3, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ghb_dict_get_int(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i64 %63, i64* %10, align 8
  br label %65

64:                                               ; preds = %56
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 @strcmp(i32* %66, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @ghb_dict_set_string(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ghb_pref_save(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = call i32 @ghb_dvd_set_current(i32* %80, %struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %70, %65
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @ghb_do_scan(%struct.TYPE_6__* %84, i32* %85, i64 %86, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @g_free(i32* %89)
  br label %91

91:                                               ; preds = %83, %50
  br label %92

92:                                               ; preds = %91, %28
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @ghb_dict_get_string(i32, i8*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_widget_hide(i32*) #1

declare dso_local i32 @source_dialog_extra_widgets(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @gtk_file_chooser_select_filename(i32, i32*) #1

declare dso_local i32 @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32* @gtk_file_chooser_get_filename(i32) #1

declare dso_local i64 @ghb_dict_get_int(i32, i8*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @ghb_dict_set_string(i32, i8*, i32*) #1

declare dso_local i32 @ghb_pref_save(i32, i8*) #1

declare dso_local i32 @ghb_dvd_set_current(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ghb_do_scan(%struct.TYPE_6__*, i32*, i64, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
