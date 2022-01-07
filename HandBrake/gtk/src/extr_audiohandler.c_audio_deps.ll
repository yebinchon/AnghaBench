; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_deps.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"AudioTrackDRCSlider\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"AudioTrackDRCSliderLabel\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"AudioTrackDRCValue\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"AudioTrackQualityEnable\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"AudioTrackGainSlider\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"AudioTrackGainValue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i32*)* @audio_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_deps(%struct.TYPE_11__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ghb_adjust_audio_rate_combos(%struct.TYPE_11__* %17, i32* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @ghb_grey_combo_options(%struct.TYPE_11__* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ghb_check_dependency(%struct.TYPE_11__* %25, i32* %26, i32* null)
  br label %28

28:                                               ; preds = %24, %3
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ghb_dict_get_int(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32* @ghb_lookup_title(i32 %33, i32* null)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %28
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ghb_dict_get_int(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ghb_settings_audio_encoder_codec(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.TYPE_12__* @ghb_get_audio_info(i32* %42, i32 %43)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %12, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @ghb_settings_mixdown_mix(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ghb_dict_get_int(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %37
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %54, %51, %37
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %60
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @hb_audio_can_apply_drc(i32 %71, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %79, %67
  %84 = phi i1 [ false, %67 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %83, %60
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32* @GHB_WIDGET(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32* %90, i32** %6, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @gtk_widget_set_sensitive(i32* %91, i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32* @GHB_WIDGET(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32* %97, i32** %6, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @gtk_widget_set_sensitive(i32* %98, i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32* @GHB_WIDGET(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32* %104, i32** %6, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @gtk_widget_set_sensitive(i32* %105, i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @ghb_dict_get_bool(i32* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  store i32 %111, i32* %14, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @enable_quality_widgets(%struct.TYPE_11__* %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32* @GHB_WIDGET(i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32* %121, i32** %6, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @gtk_widget_set_sensitive(i32* %122, i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32* @GHB_WIDGET(i32 %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32* %131, i32** %6, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @gtk_widget_set_sensitive(i32* %132, i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32* @GHB_WIDGET(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i32* %141, i32** %6, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @gtk_widget_set_sensitive(i32* %142, i32 %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32* @GHB_WIDGET(i32 %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  store i32* %151, i32** %6, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @gtk_widget_set_sensitive(i32* %152, i32 %156)
  ret void
}

declare dso_local i32 @ghb_adjust_audio_rate_combos(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ghb_grey_combo_options(%struct.TYPE_11__*) #1

declare dso_local i32 @ghb_check_dependency(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_lookup_title(i32, i32*) #1

declare dso_local i32 @ghb_settings_audio_encoder_codec(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @ghb_get_audio_info(i32*, i32) #1

declare dso_local i32 @ghb_settings_mixdown_mix(i32*, i8*) #1

declare dso_local i64 @hb_audio_can_apply_drc(i32, i32, i32) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

declare dso_local i32 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i32 @enable_quality_widgets(%struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
