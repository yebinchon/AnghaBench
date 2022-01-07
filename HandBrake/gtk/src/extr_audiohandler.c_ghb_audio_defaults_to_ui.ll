; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_audio_defaults_to_ui.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_audio_defaults_to_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"AudioList\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"audio_list_default\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_audio_defaults_to_ui(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = call i32 @audio_def_lang_list_init(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @ghb_dict_get_value(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = call i32* (...) @ghb_array_new()
  store i32* %18, i32** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ghb_dict_set(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GHB_WIDGET(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32* @GTK_LIST_BOX(i32 %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @GTK_CONTAINER(i32* %30)
  %32 = call i32 @ghb_container_empty(i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ghb_array_len(i32* %33)
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %51, %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32* @ghb_array_get(i32* %40, i32 %41)
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = call i32* @ghb_create_audio_settings_row(%struct.TYPE_5__* %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @gtk_list_box_insert(i32* %45, i32* %46, i32 -1)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @audio_def_update_widgets(i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = call i32* @ghb_create_audio_settings_row(%struct.TYPE_5__* %55)
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @audio_def_settings_show(i32* %57, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @gtk_list_box_insert(i32* %60, i32* %61, i32 -1)
  ret void
}

declare dso_local i32 @audio_def_lang_list_init(%struct.TYPE_5__*) #1

declare dso_local i32* @ghb_dict_get_value(i32, i8*) #1

declare dso_local i32* @ghb_array_new(...) #1

declare dso_local i32 @ghb_dict_set(i32, i8*, i32*) #1

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @ghb_container_empty(i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i32* @ghb_create_audio_settings_row(%struct.TYPE_5__*) #1

declare dso_local i32 @gtk_list_box_insert(i32*, i32*, i32) #1

declare dso_local i32 @audio_def_update_widgets(i32*, i32*) #1

declare dso_local i32 @audio_def_settings_show(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
