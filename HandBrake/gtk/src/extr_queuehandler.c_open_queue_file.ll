; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_open_queue_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_open_queue_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"hb_window\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Queue Destination\00", align 1
@GTK_FILE_CHOOSER_ACTION_OPEN = common dso_local global i32 0, align 4
@GHB_STOCK_CANCEL = common dso_local global i32 0, align 4
@GTK_RESPONSE_CANCEL = common dso_local global i32 0, align 4
@GHB_STOCK_OPEN = common dso_local global i32 0, align 4
@GTK_RESPONSE_ACCEPT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"QueueFilterAll\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"QueueFilterJSON\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"JSON\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"*.JSON\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"*.json\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_PENDING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"job_unique_id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @open_queue_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_queue_file(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @GHB_WIDGET(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* @GTK_WINDOW(i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @GTK_FILE_CHOOSER_ACTION_OPEN, align 4
  %20 = load i32, i32* @GHB_STOCK_CANCEL, align 4
  %21 = load i32, i32* @GTK_RESPONSE_CANCEL, align 4
  %22 = load i32, i32* @GHB_STOCK_OPEN, align 4
  %23 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %24 = call i32* @gtk_file_chooser_dialog_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 %19, i32 %20, i32 %21, i32 %22, i64 %23, i32* null)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32* @GTK_FILE_CHOOSER(i32* %25)
  store i32* %26, i32** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GHB_OBJECT(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32* @GTK_FILE_FILTER(i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @gtk_file_filter_set_name(i32* %32, i8* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @gtk_file_filter_add_pattern(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @gtk_file_chooser_add_filter(i32* %37, i32* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @GHB_OBJECT(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32* @GTK_FILE_FILTER(i32 %43)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @gtk_file_filter_set_name(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @gtk_file_filter_add_pattern(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @gtk_file_filter_add_pattern(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @gtk_file_chooser_add_filter(i32* %51, i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @GTK_DIALOG(i32* %54)
  %56 = call i64 @gtk_dialog_run(i32 %55)
  %57 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @gtk_widget_destroy(i32* %60)
  br label %123

62:                                               ; preds = %1
  %63 = load i32*, i32** %3, align 8
  %64 = call i32* @GTK_FILE_CHOOSER(i32* %63)
  %65 = call i8* @gtk_file_chooser_get_filename(i32* %64)
  store i8* %65, i8** %8, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @gtk_widget_destroy(i32* %66)
  %68 = load i8*, i8** %8, align 8
  %69 = call i32* @ghb_read_settings_file(i8* %68)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %120

72:                                               ; preds = %62
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @ghb_array_len(i32* %73)
  store i32 %74, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %109, %72
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32* @ghb_array_get(i32* %80, i32 %81)
  store i32* %82, i32** %11, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @ghb_dict_get(i32* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @ghb_value_incref(i32* %85)
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* @GHB_QUEUE_PENDING, align 4
  %89 = call i32 @ghb_dict_set_int(i32* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @ghb_dict_set_int(i32* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %79
  %97 = call i32* (...) @ghb_array_new()
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  br label %100

100:                                              ; preds = %96, %79
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @ghb_array_append(i32* %103, i32* %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @add_to_queue_list(%struct.TYPE_5__* %106, i32* %107)
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %75

112:                                              ; preds = %75
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = call i32 @ghb_queue_buttons_grey(%struct.TYPE_5__* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @ghb_save_queue(i32* %117)
  %119 = call i32 @ghb_value_free(i32** %7)
  br label %120

120:                                              ; preds = %112, %62
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @g_free(i8* %121)
  br label %123

123:                                              ; preds = %120, %59
  ret void
}

declare dso_local i32* @GTK_WINDOW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_file_chooser_dialog_new(i8*, i32*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32* @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i32* @GTK_FILE_FILTER(i32) #1

declare dso_local i32 @GHB_OBJECT(i32, i8*) #1

declare dso_local i32 @gtk_file_filter_set_name(i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @gtk_file_filter_add_pattern(i32*, i8*) #1

declare dso_local i32 @gtk_file_chooser_add_filter(i32*, i32*) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i8* @gtk_file_chooser_get_filename(i32*) #1

declare dso_local i32* @ghb_read_settings_file(i8*) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @ghb_value_incref(i32*) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32* @ghb_array_new(...) #1

declare dso_local i32 @ghb_array_append(i32*, i32*) #1

declare dso_local i32 @add_to_queue_list(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ghb_queue_buttons_grey(%struct.TYPE_5__*) #1

declare dso_local i32 @ghb_save_queue(i32*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
