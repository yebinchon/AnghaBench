; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_yui_input_entry_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_yui_input_entry_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"key-file\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@GTK_FILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.%s.1\00", align 1
@PERCore = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"focus-in-event\00", align 1
@yui_input_entry_focus_in = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@yui_input_entry_focus_out = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@yui_input_entry_keypress = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GTK_EXPAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_input_entry_new(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [100 x i8], align 16
  %13 = alloca [50 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 (...) @yui_input_entry_get_type()
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @g_object_new(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %18 = call i32* @GTK_WIDGET(i32 %17)
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %112, %3
  %20 = load i8**, i8*** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %125

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @GTK_TABLE(i32* %27)
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @gtk_table_resize(i32 %28, i32 %30, i32 2)
  %32 = load i8**, i8*** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32* @gtk_label_new(i8* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @GTK_TABLE(i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @GTK_FILL, align 4
  %45 = call i32 @gtk_table_attach(i32 %39, i32* %40, i32 0, i32 1, i32 %41, i32 %43, i32 %44, i32 0, i32 0, i32 0)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @GTK_MISC(i32* %46)
  %48 = call i32 @gtk_misc_set_alignment(i32 %47, i32 0, double 5.000000e-01)
  %49 = call i32* (...) @gtk_entry_new()
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @GTK_ENTRY(i32* %50)
  %52 = call i32 @gtk_entry_set_width_chars(i32 %51, i32 10)
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %54 = load i8*, i8** %5, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PERCore, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %66 = call i32 @g_key_file_get_integer(i32* %61, i32 %64, i8* %65, i32 0)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %26
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PERCore, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %75 = call i32 %72(i32 %73, i8* %74, i32 50)
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @GTK_ENTRY(i32* %76)
  %78 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %79 = call i32 @gtk_entry_set_text(i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %69, %26
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PERCore, align 8
  %82 = icmp ne %struct.TYPE_2__* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @yui_input_entry_focus_in, align 4
  %86 = call i32 @G_CALLBACK(i32 %85)
  %87 = load i8**, i8*** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = call i32 @g_signal_connect(i32* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32* %92)
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @yui_input_entry_focus_out, align 4
  %96 = call i32 @G_CALLBACK(i32 %95)
  %97 = call i32 @g_signal_connect(i32* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32* null)
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* @yui_input_entry_keypress, align 4
  %100 = call i32 @G_CALLBACK(i32 %99)
  %101 = load i8**, i8*** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = call i32 @g_signal_connect(i32* %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32* %106)
  br label %112

108:                                              ; preds = %80
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = call i32 @gtk_widget_set_sensitive(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %83
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @GTK_TABLE(i32* %113)
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @GTK_EXPAND, align 4
  %120 = load i32, i32* @GTK_FILL, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @gtk_table_attach(i32 %114, i32* %115, i32 1, i32 2, i32 %116, i32 %118, i32 %121, i32 0, i32 0, i32 0)
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %19

125:                                              ; preds = %19
  %126 = load i32*, i32** %7, align 8
  ret i32* %126
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @g_object_new(i32, i8*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @yui_input_entry_get_type(...) #1

declare dso_local i32 @gtk_table_resize(i32, i32, i32) #1

declare dso_local i32 @GTK_TABLE(i32*) #1

declare dso_local i32* @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_table_attach(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gtk_misc_set_alignment(i32, i32, double) #1

declare dso_local i32 @GTK_MISC(i32*) #1

declare dso_local i32* @gtk_entry_new(...) #1

declare dso_local i32 @gtk_entry_set_width_chars(i32, i32) #1

declare dso_local i32 @GTK_ENTRY(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @g_key_file_get_integer(i32*, i32, i8*, i32) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
