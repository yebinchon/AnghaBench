; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_select_log.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_select_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"queue_list\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"queue_activity_view\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ActivityFilename\00", align 1
@GHB_QUEUE_PENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"queue_activity_location\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GHB_QUEUE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_queue_select_log(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @GHB_WIDGET(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = call i32* @GTK_LIST_BOX(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @gtk_list_box_get_selected_row(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %123

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @gtk_list_box_row_get_index(i32* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ghb_array_len(i32 %30)
  %32 = icmp sge i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %21
  br label %123

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32* @ghb_array_get(i32 %37, i64 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @ghb_dict_get(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %41, i32** %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @GHB_WIDGET(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32* @GTK_TEXT_VIEW(i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @gtk_text_view_get_buffer(i32* %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @ghb_dict_get_int(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i8* @ghb_dict_get_string(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %52, i8** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GHB_QUEUE_PENDING, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %34
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @ghb_string_value(i8* %61)
  %63 = call i32 @ghb_ui_update(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %68

64:                                               ; preds = %56, %34
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = call i32 @ghb_string_value(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 @ghb_ui_update(%struct.TYPE_5__* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @GHB_QUEUE_RUNNING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = icmp ne i32* %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @gtk_text_view_set_buffer(i32* %79, i32* %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %122

85:                                               ; preds = %68
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = icmp ne i32* %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @gtk_text_view_set_buffer(i32* %92, i32* %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load i32*, i32** %8, align 8
  %99 = call i8* @ghb_dict_get_string(i32* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %99, i8** %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @GHB_QUEUE_PENDING, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @read_log(%struct.TYPE_5__* %107, i8* %108)
  br label %121

110:                                              ; preds = %103, %97
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @g_free(i32* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @gtk_text_buffer_set_text(i32* %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %121

121:                                              ; preds = %110, %106
  br label %122

122:                                              ; preds = %121, %84
  br label %123

123:                                              ; preds = %33, %122, %1
  ret void
}

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_list_box_get_selected_row(i32*) #1

declare dso_local i64 @gtk_list_box_row_get_index(i32*) #1

declare dso_local i64 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i64) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32* @GTK_TEXT_VIEW(i32) #1

declare dso_local i32* @gtk_text_view_get_buffer(i32*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @ghb_ui_update(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ghb_string_value(i8*) #1

declare dso_local i32 @gtk_text_view_set_buffer(i32*, i32*) #1

declare dso_local i32 @read_log(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @gtk_text_buffer_set_text(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
