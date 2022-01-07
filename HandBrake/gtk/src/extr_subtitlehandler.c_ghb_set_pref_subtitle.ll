; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_ghb_set_pref_subtitle.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_ghb_set_pref_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SubtitleSrtEnable\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"SubtitleImportDisable\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Subtitle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_set_pref_subtitle(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ghb_dict_get_int(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_7__* @ghb_lookup_title(i32 %12, i32* null)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clear_subtitle_list_ui(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_subtitle_list_settings(i32 %23)
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hb_list_count(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @GHB_WIDGET(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @gtk_widget_set_sensitive(i32* %37, i32 %38)
  br label %48

40:                                               ; preds = %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @GHB_WIDGET(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @gtk_widget_set_sensitive(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @ghb_get_job_settings(i32 %51)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ghb_dict_remove(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 (...) @ghb_scan_handle()
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @hb_preset_job_add_subtitles(i32 %55, i32 %56, i32 %59, i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = call i32 @subtitle_refresh_list_ui(%struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %48, %20
  ret void
}

declare dso_local i32 @ghb_dict_get_int(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @ghb_lookup_title(i32, i32*) #1

declare dso_local i32 @clear_subtitle_list_ui(i32) #1

declare dso_local i32 @clear_subtitle_list_settings(i32) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

declare dso_local i32* @ghb_get_job_settings(i32) #1

declare dso_local i32 @ghb_dict_remove(i32*, i8*) #1

declare dso_local i32 @hb_preset_job_add_subtitles(i32, i32, i32, i32*) #1

declare dso_local i32 @ghb_scan_handle(...) #1

declare dso_local i32 @subtitle_refresh_list_ui(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
