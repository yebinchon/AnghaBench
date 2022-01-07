; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_sanitize_audio_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_sanitize_audio_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@HB_INVALID_AUDIO_QUALITY = common dso_local global double 0.000000e+00, align 8
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@HB_AMIXDOWN_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"DRC\00", align 1
@AV_CH_LAYOUT_5POINT1 = common dso_local global i32 0, align 4
@HB_INVALID_AMIXDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_sanitize_audio_settings(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %15, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @hb_dict_get_int(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @hb_dict_get_string(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @hb_audio_encoder_get_from_name(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @hb_dict_get_string(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @hb_mixdown_get_from_name(i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @hb_dict_get_int(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call double @hb_dict_get_double(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store double %34, double* %13, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @hb_dict_get_int(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @hb_dict_get(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %38, i32** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %2
  %42 = load i32*, i32** %14, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load double, double* %13, align 8
  %46 = load double, double* @HB_INVALID_AUDIO_QUALITY, align 8
  %47 = fcmp oeq double %45, %46
  br label %48

48:                                               ; preds = %44, %41, %2
  %49 = phi i1 [ true, %41 ], [ true, %2 ], [ %47, %44 ]
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.TYPE_8__* @hb_list_audio_config_item(i32 %57, i32 %58)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %15, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %66, %63, %60
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load i32, i32* @HB_AMIXDOWN_NONE, align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @hb_mixdown_get_short_name(i32 %79)
  %81 = call i32 @hb_value_string(i32 %80)
  %82 = call i32 @hb_dict_set(i32* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @hb_value_int(i32 0)
  %85 = call i32 @hb_dict_set(i32* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @hb_value_double(double 0.000000e+00)
  %88 = call i32 @hb_dict_set(i32* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  br label %152

89:                                               ; preds = %71
  %90 = load i32, i32* @AV_CH_LAYOUT_5POINT1, align 4
  store i32 %90, i32* %16, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @HB_AMIXDOWN_NONE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @HB_INVALID_AMIXDOWN, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @hb_mixdown_get_best(i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %104
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @hb_audio_quality_get_limits(i32 %112, float* %17, float* %18, float* %19, i32* %20)
  %114 = load double, double* %13, align 8
  %115 = load float, float* %17, align 4
  %116 = fpext float %115 to double
  %117 = fcmp olt double %114, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %111
  %119 = load double, double* %13, align 8
  %120 = load float, float* %18, align 4
  %121 = fpext float %120 to double
  %122 = fcmp ogt double %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %111
  %124 = load i32, i32* %8, align 4
  %125 = call double @hb_audio_quality_get_default(i32 %124)
  store double %125, double* %13, align 8
  br label %130

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = load double, double* %13, align 8
  %129 = call double @hb_audio_quality_get_best(i32 %127, double %128)
  store double %129, double* %13, align 8
  br label %130

130:                                              ; preds = %126, %123
  br label %146

131:                                              ; preds = %104
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @hb_audio_bitrate_get_best(i32 %135, i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %10, align 4
  br label %145

140:                                              ; preds = %131
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @hb_audio_bitrate_get_default(i32 %141, i32 %142, i32 %143)
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %140, %134
  br label %146

146:                                              ; preds = %145, %130
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @hb_mixdown_get_short_name(i32 %148)
  %150 = call i32 @hb_value_string(i32 %149)
  %151 = call i32 @hb_dict_set(i32* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %146, %76
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 -1, i32* %10, align 4
  br label %158

156:                                              ; preds = %152
  %157 = load double, double* @HB_INVALID_AUDIO_QUALITY, align 8
  store double %157, double* %13, align 8
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i32*, i32** %4, align 8
  %160 = load double, double* %13, align 8
  %161 = call i32 @hb_value_double(double %160)
  %162 = call i32 @hb_dict_set(i32* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @hb_value_int(i32 %164)
  %166 = call i32 @hb_dict_set(i32* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @hb_audio_encoder_get_short_name(i32 %168)
  %170 = call i32 @hb_value_string(i32 %169)
  %171 = call i32 @hb_dict_set(i32* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  ret void
}

declare dso_local i32 @hb_dict_get_int(i32*, i8*) #1

declare dso_local i8* @hb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @hb_audio_encoder_get_from_name(i8*) #1

declare dso_local i32 @hb_mixdown_get_from_name(i8*) #1

declare dso_local double @hb_dict_get_double(i32*, i8*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @hb_list_audio_config_item(i32, i32) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i32) #1

declare dso_local i32 @hb_mixdown_get_short_name(i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32 @hb_value_double(double) #1

declare dso_local i32 @hb_mixdown_get_best(i32, i32, i32) #1

declare dso_local i32 @hb_audio_quality_get_limits(i32, float*, float*, float*, i32*) #1

declare dso_local double @hb_audio_quality_get_default(i32) #1

declare dso_local double @hb_audio_quality_get_best(i32, double) #1

declare dso_local i32 @hb_audio_bitrate_get_best(i32, i32, i32, i32) #1

declare dso_local i32 @hb_audio_bitrate_get_default(i32, i32, i32) #1

declare dso_local i32 @hb_audio_encoder_get_short_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
