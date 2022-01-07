; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_save_queue_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_save_queue_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"hb_window\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Queue Destination\00", align 1
@GTK_FILE_CHOOSER_ACTION_SAVE = common dso_local global i32 0, align 4
@GHB_STOCK_CANCEL = common dso_local global i32 0, align 4
@GTK_RESPONSE_CANCEL = common dso_local global i32 0, align 4
@GHB_STOCK_SAVE = common dso_local global i32 0, align 4
@GTK_RESPONSE_ACCEPT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"queue.json\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @save_queue_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_queue_file(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @ghb_value_dup(i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ghb_array_len(i32* %15)
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %36, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32* @ghb_array_get(i32 %24, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @ghb_dict_get(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @GHB_QUEUE_PENDING, align 4
  %35 = call i32 @ghb_dict_set_int(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GHB_WIDGET(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32* @GTK_WINDOW(i32 %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @GTK_FILE_CHOOSER_ACTION_SAVE, align 4
  %47 = load i32, i32* @GHB_STOCK_CANCEL, align 4
  %48 = load i32, i32* @GTK_RESPONSE_CANCEL, align 4
  %49 = load i32, i32* @GHB_STOCK_SAVE, align 4
  %50 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %51 = call i32* @gtk_file_chooser_dialog_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %45, i32 %46, i32 %47, i32 %48, i32 %49, i64 %50, i32* null)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @GTK_FILE_CHOOSER(i32* %52)
  %54 = call i32 @gtk_file_chooser_set_current_name(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @GTK_DIALOG(i32* %55)
  %57 = call i64 @gtk_dialog_run(i32 %56)
  %58 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %39
  %61 = call i32 @ghb_value_free(i32** %5)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @gtk_widget_destroy(i32* %62)
  br label %76

64:                                               ; preds = %39
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @GTK_FILE_CHOOSER(i32* %65)
  %67 = call i8* @gtk_file_chooser_get_filename(i32 %66)
  store i8* %67, i8** %10, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @gtk_widget_destroy(i32* %68)
  %70 = load i8*, i8** %10, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @ghb_write_settings_file(i8* %70, i32* %71)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @g_free(i8* %73)
  %75 = call i32 @ghb_value_free(i32** %5)
  br label %76

76:                                               ; preds = %64, %60
  ret void
}

declare dso_local i32* @ghb_value_dup(i32) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32, i32) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32* @GTK_WINDOW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_file_chooser_dialog_new(i8*, i32*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @gtk_file_chooser_set_current_name(i32, i8*) #1

declare dso_local i32 @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i8* @gtk_file_chooser_get_filename(i32) #1

declare dso_local i32 @ghb_write_settings_file(i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
