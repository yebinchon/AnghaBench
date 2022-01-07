; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuirange.c_yui_range_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuirange.c_yui_range_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"key-file\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@yui_range_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_range_new(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %13 = call i32 (...) @yui_range_get_type()
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = call i32 @g_object_new(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_9__* %17, i32* null)
  %19 = call i32* @GTK_WIDGET(i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_10__* @YUI_RANGE(i32* %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @g_key_file_get_value(i32 %24, i32 %27, i32 %30, i32 0)
  store i32* %31, i32** %11, align 8
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %74, %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %32
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @GTK_COMBO_BOX(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gtk_combo_box_append_text(i32 %45, i64 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %41
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @strcmp(i32 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %56
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @GTK_COMBO_BOX(i32 %70)
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @gtk_combo_box_set_active(i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %67, %56, %41
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %32

77:                                               ; preds = %32
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %100, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @GTK_COMBO_BOX(i32 %83)
  %85 = call i32 @gtk_combo_box_set_active(i32 %84, i64 0)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @g_key_file_set_value(i32 %88, i32 %91, i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %80, %77
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @GTK_COMBO_BOX(i32 %103)
  %105 = load i32, i32* @yui_range_changed, align 4
  %106 = call i32 @G_CALLBACK(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = call i32 @g_signal_connect(i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %106, %struct.TYPE_10__* %107)
  %109 = load i32*, i32** %9, align 8
  ret i32* %109
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @g_object_new(i32, i8*, i32, i8*, i32*, i8*, i32*, i8*, i32*, i8*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @yui_range_get_type(...) #1

declare dso_local %struct.TYPE_10__* @YUI_RANGE(i32*) #1

declare dso_local i32* @g_key_file_get_value(i32, i32, i32, i32) #1

declare dso_local i32 @gtk_combo_box_append_text(i32, i64) #1

declare dso_local i32 @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @strcmp(i32, i32*) #1

declare dso_local i32 @gtk_combo_box_set_active(i32, i64) #1

declare dso_local i32 @g_key_file_set_value(i32, i32, i32, i32) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
