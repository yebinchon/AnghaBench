; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_reload_queue.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_reload_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"ghb_reload_queue\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_DONE = common dso_local global i64 0, align 8
@GHB_QUEUE_CANCELED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"show_queue\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"job_unique_id\00", align 1
@GHB_QUEUE_PENDING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_reload_queue(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %11 = call i32 @g_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %68, %1
  %13 = call i64 (...) @ghb_find_pid_file()
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %115

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = call i32* @ghb_load_old_queue(i64 %18)
  store i32* %19, i32** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @ghb_remove_old_queue_file(i64 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @ghb_array_len(i32* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %60, %17
  %27 = load i64, i64* %5, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32* @ghb_array_get(i32* %30, i64 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @ghb_dict_get(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @ghb_dict_get_value(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %29
  %42 = load i32*, i32** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ghb_array_remove(i32* %42, i64 %43)
  br label %60

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @ghb_dict_get_int(i32* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @GHB_QUEUE_DONE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @GHB_QUEUE_CANCELED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %45
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @ghb_array_remove(i32* %56, i64 %57)
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %55, %41
  %61 = load i64, i64* %5, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %5, align 8
  br label %26

63:                                               ; preds = %26
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @ghb_array_len(i32* %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @ghb_value_free(i32** %3)
  br label %12

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @GHB_WIDGET(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @GTK_TOGGLE_TOOL_BUTTON(i32* %75)
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @gtk_toggle_tool_button_set_active(i32 %76, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %100, %70
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %4, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32* @ghb_array_get(i32* %87, i64 %88)
  store i32* %89, i32** %8, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32* @ghb_dict_get(i32* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @ghb_dict_set_int(i32* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @GHB_QUEUE_PENDING, align 4
  %96 = call i32 @ghb_dict_set_int(i32* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @add_to_queue_list(%struct.TYPE_7__* %97, i32* %98)
  br label %100

100:                                              ; preds = %86
  %101 = load i64, i64* %5, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %5, align 8
  br label %82

103:                                              ; preds = %82
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = call i32 @ghb_queue_buttons_grey(%struct.TYPE_7__* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ghb_save_queue(i32* %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = call i32 @ghb_update_pending(%struct.TYPE_7__* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = call i32 @ghb_queue_selection_init(%struct.TYPE_7__* %112)
  br label %114

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %16
  %116 = call i32 (...) @ghb_write_pid_file()
  %117 = load i32, i32* @FALSE, align 4
  ret i32 %117
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i64 @ghb_find_pid_file(...) #1

declare dso_local i32* @ghb_load_old_queue(i64) #1

declare dso_local i32 @ghb_remove_old_queue_file(i64) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32* @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i32 @ghb_array_remove(i32*, i64) #1

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_toggle_tool_button_set_active(i32, i32) #1

declare dso_local i32 @GTK_TOGGLE_TOOL_BUTTON(i32*) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @add_to_queue_list(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ghb_queue_buttons_grey(%struct.TYPE_7__*) #1

declare dso_local i32 @ghb_save_queue(i32*) #1

declare dso_local i32 @ghb_update_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @ghb_queue_selection_init(%struct.TYPE_7__*) #1

declare dso_local i32 @ghb_write_pid_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
