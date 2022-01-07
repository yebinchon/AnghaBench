; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_audio.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No title found.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.5 = private unnamed_addr constant [128 x i8] c"The source does not support Pass-Thru.\0A\0AYou should choose a different audio codec.\0AIf you continue, one will be chosen for you.\00", align 1
@GTK_MESSAGE_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Continue\00", align 1
@HB_ACODEC_AC3 = common dso_local global i32 0, align 4
@HB_ACODEC_MASK = common dso_local global i32 0, align 4
@HB_ACODEC_DCA = common dso_local global i32 0, align 4
@HB_MUX_MASK_MKV = common dso_local global i32 0, align 4
@HB_ACODEC_LAME = common dso_local global i32 0, align 4
@HB_MUX_MASK_WEBM = common dso_local global i32 0, align 4
@HB_ACODEC_FFAAC = common dso_local global i32 0, align 4
@HB_MUX_MASK_MP4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"MP4\00", align 1
@HB_ACODEC_VORBIS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"Vorbis\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"WebM\00", align 1
@HB_ACODEC_OPUS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [130 x i8] c"%s is not supported in the %s container.\0A\0AYou should choose a different audio codec.\0AIf you continue, one will be chosen for you.\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_validate_audio(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @ghb_dict_get_int(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.TYPE_9__* @ghb_lookup_title(i64 %26, i64* %7)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @g_message(i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %212

34:                                               ; preds = %2
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @ghb_dict_get_string(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call %struct.TYPE_10__* @ghb_lookup_container_by_name(i8* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %11, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @ghb_get_job_audio_list(i32* %39)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i64 @ghb_array_len(i32* %41)
  store i64 %42, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %43

43:                                               ; preds = %207, %34
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %210

47:                                               ; preds = %43
  %48 = load i32*, i32** %12, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32* @ghb_array_get(i32* %48, i64 %49)
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i8* @ghb_dict_get_int(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %17, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @ghb_settings_audio_encoder_codec(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %55, i32* %18, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call %struct.TYPE_11__* @hb_list_audio_config_item(i32 %58, i32 %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %16, align 8
  %61 = load i32, i32* %18, align 4
  %62 = call i64 @ghb_audio_is_passthru(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %142

64:                                               ; preds = %47
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ghb_audio_can_passthru(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %18, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %142, label %79

79:                                               ; preds = %71, %64
  %80 = call i32 @_(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i8* (i32, ...) @g_strdup_printf(i32 %80)
  store i8* %81, i8** %9, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %86 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %87 = call i32 @ghb_message_dialog(i32* %82, i32 %83, i8* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %79
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @g_free(i8* %90)
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %3, align 4
  br label %212

93:                                               ; preds = %79
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @g_free(i8* %94)
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @HB_ACODEC_AC3, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HB_ACODEC_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @HB_ACODEC_DCA, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %100, %93
  %110 = load i32, i32* @HB_ACODEC_AC3, align 4
  store i32 %110, i32* %18, align 4
  br label %136

111:                                              ; preds = %100
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HB_MUX_MASK_MKV, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @HB_ACODEC_LAME, align 4
  store i32 %119, i32* %18, align 4
  br label %135

120:                                              ; preds = %111
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HB_MUX_MASK_WEBM, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @hb_audio_encoder_get_default(i32 %130)
  store i32 %131, i32* %18, align 4
  br label %134

132:                                              ; preds = %120
  %133 = load i32, i32* @HB_ACODEC_FFAAC, align 4
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %132, %127
  br label %135

135:                                              ; preds = %134, %118
  br label %136

136:                                              ; preds = %135, %109
  %137 = load i32, i32* %18, align 4
  %138 = call i8* @hb_audio_encoder_get_short_name(i32 %137)
  store i8* %138, i8** %19, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = load i8*, i8** %19, align 8
  %141 = call i32 @ghb_dict_set_string(i32* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %136, %71, %47
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @HB_MUX_MASK_MP4, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* @HB_ACODEC_VORBIS, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  %154 = load i32, i32* @HB_ACODEC_FFAAC, align 4
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %153, %149
  br label %156

156:                                              ; preds = %155, %142
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @HB_MUX_MASK_WEBM, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %156
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %21, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* @HB_ACODEC_VORBIS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @HB_ACODEC_OPUS, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load i32, i32* %18, align 4
  %173 = call i8* @hb_audio_encoder_get_short_name(i32 %172)
  store i8* %173, i8** %20, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @hb_audio_encoder_get_default(i32 %176)
  store i32 %177, i32* %18, align 4
  br label %178

178:                                              ; preds = %171, %167, %163
  br label %179

179:                                              ; preds = %178, %156
  %180 = load i8*, i8** %20, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %206

182:                                              ; preds = %179
  %183 = call i32 @_(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.11, i64 0, i64 0))
  %184 = load i8*, i8** %20, align 8
  %185 = load i8*, i8** %21, align 8
  %186 = call i8* (i32, ...) @g_strdup_printf(i32 %183, i8* %184, i8* %185)
  store i8* %186, i8** %9, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %191 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %192 = call i32 @ghb_message_dialog(i32* %187, i32 %188, i8* %189, i32 %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %182
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 @g_free(i8* %195)
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %3, align 4
  br label %212

198:                                              ; preds = %182
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 @g_free(i8* %199)
  %201 = load i32, i32* %18, align 4
  %202 = call i8* @hb_audio_encoder_get_short_name(i32 %201)
  store i8* %202, i8** %22, align 8
  %203 = load i32*, i32** %15, align 8
  %204 = load i8*, i8** %22, align 8
  %205 = call i32 @ghb_dict_set_string(i32* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %198, %179
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %14, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %14, align 8
  br label %43

210:                                              ; preds = %43
  %211 = load i32, i32* @TRUE, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %194, %89, %30
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i8* @ghb_dict_get_int(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @ghb_lookup_title(i64, i64*) #1

declare dso_local i32 @g_message(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local i32* @ghb_get_job_audio_list(i32*) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i32 @ghb_settings_audio_encoder_codec(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @hb_list_audio_config_item(i32, i32) #1

declare dso_local i64 @ghb_audio_is_passthru(i32) #1

declare dso_local i64 @ghb_audio_can_passthru(i32) #1

declare dso_local i8* @g_strdup_printf(i32, ...) #1

declare dso_local i32 @ghb_message_dialog(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @hb_audio_encoder_get_default(i32) #1

declare dso_local i8* @hb_audio_encoder_get_short_name(i32) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
