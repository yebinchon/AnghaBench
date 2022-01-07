; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_enable_quality_widgets.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_enable_quality_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"AudioTrackQualityBox\00", align 1
@HB_INVALID_AUDIO_QUALITY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"AudioTrackBitrateEnable\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"AudioTrackQualityEnable\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"AudioTrackQualityEnableBox\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32)* @enable_quality_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_quality_widgets(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @GHB_WIDGET(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @gtk_widget_set_visible(i32* %20, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @GHB_WIDGET(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @gtk_widget_set_visible(i32* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @hb_audio_quality_get_default(i32 %33)
  %35 = load i64, i64* @HB_INVALID_AUDIO_QUALITY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %5
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @hb_audio_bitrate_get_default(i32 %40, i32 %41, i32 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @GHB_WIDGET(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @GTK_TOGGLE_BUTTON(i32* %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @gtk_toggle_button_set_active(i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %50, %47
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @GHB_WIDGET(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @gtk_widget_set_sensitive(i32* %67, i32 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @GHB_WIDGET(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @gtk_widget_set_sensitive(i32* %74, i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @GHB_WIDGET(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %62
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %84, %62
  %88 = phi i1 [ true, %62 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @gtk_widget_set_sensitive(i32* %81, i32 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @GHB_WIDGET(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32* %94, i32** %11, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @gtk_widget_set_sensitive(i32* %95, i32 %96)
  ret void
}

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_visible(i32*, i32) #1

declare dso_local i64 @hb_audio_quality_get_default(i32) #1

declare dso_local i32 @hb_audio_bitrate_get_default(i32, i32, i32) #1

declare dso_local i32 @gtk_toggle_button_set_active(i32, i32) #1

declare dso_local i32 @GTK_TOGGLE_BUTTON(i32*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
