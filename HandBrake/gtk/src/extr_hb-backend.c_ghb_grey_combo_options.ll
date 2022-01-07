; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_grey_combo_options.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_grey_combo_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"AudioTrack\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@HB_ACODEC_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"AudioEncoderFallback\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_grey_combo_options(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ghb_dict_get_int(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @ghb_lookup_title(i32 %20, i32* %5)
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ghb_dict_get_int(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.TYPE_20__* @ghb_get_audio_info(i32* %26, i32 %27)
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %9, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ghb_dict_get_string(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call %struct.TYPE_19__* @ghb_lookup_container_by_name(i8* %33)
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %11, align 8
  %35 = call %struct.TYPE_18__* @hb_audio_encoder_get_next(%struct.TYPE_18__* null)
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %12, align 8
  br label %36

36:                                               ; preds = %89, %1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %92

39:                                               ; preds = %36
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HB_ACODEC_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @grey_builder_combo_box_item(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %60, i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @grey_builder_combo_box_item(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %68, i32 %69)
  br label %88

71:                                               ; preds = %48, %39
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @grey_builder_combo_box_item(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %77, i32 %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @grey_builder_combo_box_item(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %71, %54
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %91 = call %struct.TYPE_18__* @hb_audio_encoder_get_next(%struct.TYPE_18__* %90)
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %12, align 8
  br label %36

92:                                               ; preds = %36
  %93 = call %struct.TYPE_18__* @hb_video_encoder_get_next(%struct.TYPE_18__* null)
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %12, align 8
  br label %94

94:                                               ; preds = %125, %92
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %96 = icmp ne %struct.TYPE_18__* %95, null
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @grey_builder_combo_box_item(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %112, i32 %113)
  br label %124

115:                                              ; preds = %97
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i32 @grey_builder_combo_box_item(i32 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %106
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %127 = call %struct.TYPE_18__* @hb_video_encoder_get_next(%struct.TYPE_18__* %126)
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %12, align 8
  br label %94

128:                                              ; preds = %94
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %131 = call i32 @grey_passthru(%struct.TYPE_17__* %129, %struct.TYPE_20__* %130)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ghb_settings_audio_encoder_codec(i32 %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %135, i32* %6, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %137 = icmp ne %struct.TYPE_20__* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  br label %144

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %138
  %145 = phi i32 [ %142, %138 ], [ -1, %143 ]
  store i32 %145, i32* %13, align 4
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %147 = icmp ne %struct.TYPE_20__* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  br label %154

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %148
  %155 = phi i32 [ %152, %148 ], [ 0, %153 ]
  store i32 %155, i32* %14, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @ghb_select_fallback(i32 %158, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ghb_get_copy_mask(i32 %163)
  store i32 %164, i32* %15, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @ghb_select_audio_codec(i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @grey_mix_opts(%struct.TYPE_17__* %173, i32 %174, i32 %175)
  ret void
}

declare dso_local i32 @ghb_dict_get_int(i32, i8*) #1

declare dso_local i32* @ghb_lookup_title(i32, i32*) #1

declare dso_local %struct.TYPE_20__* @ghb_get_audio_info(i32*, i32) #1

declare dso_local i8* @ghb_dict_get_string(i32, i8*) #1

declare dso_local %struct.TYPE_19__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local %struct.TYPE_18__* @hb_audio_encoder_get_next(%struct.TYPE_18__*) #1

declare dso_local i32 @grey_builder_combo_box_item(i32, i8*, i64, i32) #1

declare dso_local %struct.TYPE_18__* @hb_video_encoder_get_next(%struct.TYPE_18__*) #1

declare dso_local i32 @grey_passthru(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ghb_settings_audio_encoder_codec(i32, i8*) #1

declare dso_local i32 @ghb_select_fallback(i32, i32) #1

declare dso_local i32 @ghb_get_copy_mask(i32) #1

declare dso_local i32 @ghb_select_audio_codec(i32, i32, i32, i32, i32) #1

declare dso_local i32 @grey_mix_opts(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
