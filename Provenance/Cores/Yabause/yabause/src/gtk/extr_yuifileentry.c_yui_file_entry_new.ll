; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuifileentry.c_yui_file_entry_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuifileentry.c_yui_file_entry_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"key-file\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@YUI_FILE_ENTRY_BROWSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Browse\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@yui_file_entry_browse = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@yui_file_entry_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_file_entry_new(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = call i32 (...) @yui_file_entry_get_type()
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @g_object_new(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %17, i32* null)
  %19 = call i32* @GTK_WIDGET(i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call %struct.TYPE_5__* @YUI_FILE_ENTRY(i32* %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = call i32 @GTK_BOX(%struct.TYPE_5__* %28)
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @gtk_label_new_with_mnemonic(i8* %30)
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @gtk_box_pack_start(i32 %29, i32 %31, i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %27, %5
  %36 = call i32 (...) @gtk_entry_new()
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = call i32 @GTK_BOX(%struct.TYPE_5__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @gtk_box_pack_start(i32 %40, i32 %43, i32 %44, i32 %45, i32 0)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @YUI_FILE_ENTRY_BROWSE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %35
  %52 = call i32 @gtk_button_new_with_mnemonic(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @yui_file_entry_browse, align 4
  %59 = call i32 @G_CALLBACK(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = call i32 @g_signal_connect(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %59, %struct.TYPE_5__* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = call i32 @GTK_BOX(%struct.TYPE_5__* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @gtk_box_pack_start(i32 %63, i32 %66, i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %51, %35
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @g_key_file_get_value(i32 %73, i32 %76, i32 %79, i32 0)
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %70
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @GTK_ENTRY(i32 %87)
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @gtk_entry_set_text(i32 %88, i8* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @GTK_ENTRY(i32 %93)
  %95 = load i32, i32* @yui_file_entry_changed, align 4
  %96 = call i32 @G_CALLBACK(i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %98 = call i32 @g_signal_connect(i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %96, %struct.TYPE_5__* %97)
  %99 = load i32*, i32** %11, align 8
  ret i32* %99
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @g_object_new(i32, i8*, i32, i8*, i32*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @yui_file_entry_get_type(...) #1

declare dso_local %struct.TYPE_5__* @YUI_FILE_ENTRY(i32*) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_5__*) #1

declare dso_local i32 @gtk_label_new_with_mnemonic(i8*) #1

declare dso_local i32 @gtk_entry_new(...) #1

declare dso_local i32 @gtk_button_new_with_mnemonic(i8*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i8* @g_key_file_get_value(i32, i32, i32, i32) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @GTK_ENTRY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
