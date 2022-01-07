; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_common_global_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_common_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_34__ = type { i64, %struct.TYPE_33__, i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_33__, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_29__ = type { %struct.TYPE_33__* }
%struct.TYPE_31__ = type { %struct.TYPE_20__* }

@hb_common_global_init.common_init_done = internal global i32 0, align 4
@hb_video_rates_count = common dso_local global i32 0, align 4
@hb_video_rates = common dso_local global %struct.TYPE_32__* null, align 8
@hb_video_rates_first_item = common dso_local global i32* null, align 8
@hb_video_rates_last_item = common dso_local global i32* null, align 8
@hb_audio_rates_count = common dso_local global i32 0, align 4
@hb_audio_rates = common dso_local global %struct.TYPE_22__* null, align 8
@hb_audio_rates_first_item = common dso_local global i32* null, align 8
@hb_audio_rates_last_item = common dso_local global i32* null, align 8
@hb_audio_bitrates_count = common dso_local global i32 0, align 4
@hb_audio_bitrates = common dso_local global %struct.TYPE_26__* null, align 8
@hb_audio_bitrates_first_item = common dso_local global i32* null, align 8
@hb_audio_bitrates_last_item = common dso_local global i32* null, align 8
@hb_audio_dithers_count = common dso_local global i32 0, align 4
@hb_audio_dithers = common dso_local global %struct.TYPE_25__* null, align 8
@hb_audio_dithers_first_item = common dso_local global i32* null, align 8
@hb_audio_dithers_last_item = common dso_local global i32* null, align 8
@hb_audio_mixdowns_count = common dso_local global i32 0, align 4
@hb_audio_mixdowns = common dso_local global %struct.TYPE_23__* null, align 8
@hb_audio_mixdowns_first_item = common dso_local global i32* null, align 8
@hb_audio_mixdowns_last_item = common dso_local global i32* null, align 8
@hb_video_encoders_count = common dso_local global i32 0, align 4
@hb_video_encoders = common dso_local global %struct.TYPE_34__* null, align 8
@hb_video_encoders_first_item = common dso_local global %struct.TYPE_33__* null, align 8
@hb_video_encoders_last_item = common dso_local global %struct.TYPE_33__* null, align 8
@HB_VCODEC_MASK = common dso_local global i32 0, align 4
@hb_audio_encoders_count = common dso_local global i32 0, align 4
@hb_audio_encoders = common dso_local global %struct.TYPE_24__* null, align 8
@hb_audio_encoders_first_item = common dso_local global %struct.TYPE_33__* null, align 8
@hb_audio_encoders_last_item = common dso_local global %struct.TYPE_33__* null, align 8
@HB_ACODEC_MASK = common dso_local global i32 0, align 4
@HB_GID_ACODEC_AAC_HE = common dso_local global i64 0, align 8
@HB_GID_ACODEC_AAC = common dso_local global i64 0, align 8
@hb_containers_count = common dso_local global i32 0, align 4
@hb_containers = common dso_local global %struct.TYPE_21__* null, align 8
@hb_containers_first_item = common dso_local global %struct.TYPE_20__* null, align 8
@hb_containers_last_item = common dso_local global %struct.TYPE_20__* null, align 8
@HB_MUX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_common_global_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @hb_common_global_init.common_init_done, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %710

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %46, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @hb_video_rates_count, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** @hb_video_rates, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %13
  %22 = load i32*, i32** @hb_video_rates_first_item, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** @hb_video_rates, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  store i32* %29, i32** @hb_video_rates_first_item, align 8
  br label %39

30:                                               ; preds = %21
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** @hb_video_rates, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 0
  %36 = load i32*, i32** @hb_video_rates_last_item, align 8
  %37 = bitcast i32* %36 to %struct.TYPE_27__*
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** @hb_video_rates, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  store i32* %44, i32** @hb_video_rates_last_item, align 8
  br label %45

45:                                               ; preds = %39, %13
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %9

49:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %87, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @hb_audio_rates_count, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %50
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hb_audio_rates, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %54
  %63 = load i32*, i32** @hb_audio_rates_first_item, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hb_audio_rates, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  store i32* %70, i32** @hb_audio_rates_first_item, align 8
  br label %80

71:                                               ; preds = %62
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hb_audio_rates, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32*, i32** @hb_audio_rates_last_item, align 8
  %78 = bitcast i32* %77 to %struct.TYPE_27__*
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  br label %80

80:                                               ; preds = %71, %65
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hb_audio_rates, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  store i32* %85, i32** @hb_audio_rates_last_item, align 8
  br label %86

86:                                               ; preds = %80, %54
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %50

90:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %128, %90
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @hb_audio_bitrates_count, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %91
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** @hb_audio_bitrates, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %95
  %104 = load i32*, i32** @hb_audio_bitrates_first_item, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** @hb_audio_bitrates, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  store i32* %111, i32** @hb_audio_bitrates_first_item, align 8
  br label %121

112:                                              ; preds = %103
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** @hb_audio_bitrates, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i32*, i32** @hb_audio_bitrates_last_item, align 8
  %119 = bitcast i32* %118 to %struct.TYPE_27__*
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  store i32* %117, i32** %120, align 8
  br label %121

121:                                              ; preds = %112, %106
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** @hb_audio_bitrates, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  store i32* %126, i32** @hb_audio_bitrates_last_item, align 8
  br label %127

127:                                              ; preds = %121, %95
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %91

131:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %169, %131
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @hb_audio_dithers_count, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %172

136:                                              ; preds = %132
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** @hb_audio_dithers, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %136
  %145 = load i32*, i32** @hb_audio_dithers_first_item, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** @hb_audio_dithers, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  store i32* %152, i32** @hb_audio_dithers_first_item, align 8
  br label %162

153:                                              ; preds = %144
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** @hb_audio_dithers, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32*, i32** @hb_audio_dithers_last_item, align 8
  %160 = bitcast i32* %159 to %struct.TYPE_30__*
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  store i32* %158, i32** %161, align 8
  br label %162

162:                                              ; preds = %153, %147
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** @hb_audio_dithers, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  store i32* %167, i32** @hb_audio_dithers_last_item, align 8
  br label %168

168:                                              ; preds = %162, %136
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %132

172:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %210, %172
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @hb_audio_mixdowns_count, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %213

177:                                              ; preds = %173
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** @hb_audio_mixdowns, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %177
  %186 = load i32*, i32** @hb_audio_mixdowns_first_item, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** @hb_audio_mixdowns, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  store i32* %193, i32** @hb_audio_mixdowns_first_item, align 8
  br label %203

194:                                              ; preds = %185
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** @hb_audio_mixdowns, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i32*, i32** @hb_audio_mixdowns_last_item, align 8
  %201 = bitcast i32* %200 to %struct.TYPE_28__*
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 0
  store i32* %199, i32** %202, align 8
  br label %203

203:                                              ; preds = %194, %188
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** @hb_audio_mixdowns, align 8
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  store i32* %208, i32** @hb_audio_mixdowns_last_item, align 8
  br label %209

209:                                              ; preds = %203, %177
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %3, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %3, align 4
  br label %173

213:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %274, %213
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* @hb_video_encoders_count, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %277

218:                                              ; preds = %214
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %218
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %228 = load i32, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %2, align 4
  %235 = call i64 @hb_video_encoder_is_enabled(i32 %233, i32 %234)
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %237 = load i32, i32* %3, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 2
  store i64 %235, i64* %240, align 8
  br label %241

241:                                              ; preds = %226, %218
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %273

249:                                              ; preds = %241
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** @hb_video_encoders_first_item, align 8
  %251 = icmp eq %struct.TYPE_33__* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %256, i32 0, i32 1
  store %struct.TYPE_33__* %257, %struct.TYPE_33__** @hb_video_encoders_first_item, align 8
  br label %267

258:                                              ; preds = %249
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %260 = load i32, i32* %3, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** @hb_video_encoders_last_item, align 8
  %265 = bitcast %struct.TYPE_33__* %264 to %struct.TYPE_29__*
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 0
  store %struct.TYPE_33__* %263, %struct.TYPE_33__** %266, align 8
  br label %267

267:                                              ; preds = %258, %252
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 1
  store %struct.TYPE_33__* %272, %struct.TYPE_33__** @hb_video_encoders_last_item, align 8
  br label %273

273:                                              ; preds = %267, %241
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %3, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %3, align 4
  br label %214

277:                                              ; preds = %214
  store i32 0, i32* %3, align 4
  br label %278

278:                                              ; preds = %360, %277
  %279 = load i32, i32* %3, align 4
  %280 = load i32, i32* @hb_video_encoders_count, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %363

282:                                              ; preds = %278
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %284 = load i32, i32* %3, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %359, label %290

290:                                              ; preds = %282
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %292 = load i32, i32* %3, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @HB_VCODEC_MASK, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %290
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %303 = load i32, i32* %3, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %2, align 4
  %310 = call i64 @hb_video_encoder_is_enabled(i32 %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %301
  br label %360

313:                                              ; preds = %301, %290
  store i32 0, i32* %4, align 4
  br label %314

314:                                              ; preds = %355, %313
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @hb_video_encoders_count, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %358

318:                                              ; preds = %314
  %319 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %320 = load i32, i32* %4, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %354

326:                                              ; preds = %318
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %334 = load i32, i32* %3, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp eq i64 %332, %338
  br i1 %339, label %340, label %354

340:                                              ; preds = %326
  %341 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %342 = load i32, i32* %4, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** @hb_video_encoders, align 8
  %349 = load i32, i32* %3, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %352, i32 0, i32 0
  store i32 %347, i32* %353, align 8
  br label %358

354:                                              ; preds = %326, %318
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %4, align 4
  br label %314

358:                                              ; preds = %340, %314
  br label %359

359:                                              ; preds = %358, %282
  br label %360

360:                                              ; preds = %359, %312
  %361 = load i32, i32* %3, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %3, align 4
  br label %278

363:                                              ; preds = %278
  store i32 0, i32* %3, align 4
  br label %364

364:                                              ; preds = %423, %363
  %365 = load i32, i32* %3, align 4
  %366 = load i32, i32* @hb_audio_encoders_count, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %426

368:                                              ; preds = %364
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %370 = load i32, i32* %3, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %390

376:                                              ; preds = %368
  %377 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %378 = load i32, i32* %3, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i64 @hb_audio_encoder_is_enabled(i32 %383)
  %385 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %386 = load i32, i32* %3, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %388, i32 0, i32 2
  store i64 %384, i64* %389, align 8
  br label %390

390:                                              ; preds = %376, %368
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %392 = load i32, i32* %3, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %422

398:                                              ; preds = %390
  %399 = load %struct.TYPE_33__*, %struct.TYPE_33__** @hb_audio_encoders_first_item, align 8
  %400 = icmp eq %struct.TYPE_33__* %399, null
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %403 = load i32, i32* %3, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 1
  store %struct.TYPE_33__* %406, %struct.TYPE_33__** @hb_audio_encoders_first_item, align 8
  br label %416

407:                                              ; preds = %398
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %409 = load i32, i32* %3, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_33__*, %struct.TYPE_33__** @hb_audio_encoders_last_item, align 8
  %414 = bitcast %struct.TYPE_33__* %413 to %struct.TYPE_29__*
  %415 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %414, i32 0, i32 0
  store %struct.TYPE_33__* %412, %struct.TYPE_33__** %415, align 8
  br label %416

416:                                              ; preds = %407, %401
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %418 = load i32, i32* %3, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 1
  store %struct.TYPE_33__* %421, %struct.TYPE_33__** @hb_audio_encoders_last_item, align 8
  br label %422

422:                                              ; preds = %416, %390
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %3, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %3, align 4
  br label %364

426:                                              ; preds = %364
  store i32 0, i32* %3, align 4
  br label %427

427:                                              ; preds = %558, %426
  %428 = load i32, i32* %3, align 4
  %429 = load i32, i32* @hb_audio_encoders_count, align 4
  %430 = icmp slt i32 %428, %429
  br i1 %430, label %431, label %561

431:                                              ; preds = %427
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %433 = load i32, i32* %3, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 2
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %557, label %439

439:                                              ; preds = %431
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %441 = load i32, i32* %3, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @HB_ACODEC_MASK, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %461

450:                                              ; preds = %439
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %452 = load i32, i32* %3, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = call i64 @hb_audio_encoder_is_enabled(i32 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %450
  br label %558

461:                                              ; preds = %450, %439
  store i32 0, i32* %4, align 4
  br label %462

462:                                              ; preds = %503, %461
  %463 = load i32, i32* %4, align 4
  %464 = load i32, i32* @hb_audio_encoders_count, align 4
  %465 = icmp slt i32 %463, %464
  br i1 %465, label %466, label %506

466:                                              ; preds = %462
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %468 = load i32, i32* %4, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %470, i32 0, i32 2
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %502

474:                                              ; preds = %466
  %475 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %476 = load i32, i32* %4, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %482 = load i32, i32* %3, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = icmp eq i64 %480, %486
  br i1 %487, label %488, label %502

488:                                              ; preds = %474
  %489 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %490 = load i32, i32* %4, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %497 = load i32, i32* %3, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %500, i32 0, i32 0
  store i32 %495, i32* %501, align 8
  br label %506

502:                                              ; preds = %474, %466
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %4, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %4, align 4
  br label %462

506:                                              ; preds = %488, %462
  %507 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %508 = load i32, i32* %3, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @HB_GID_ACODEC_AAC_HE, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %556

515:                                              ; preds = %506
  store i32 0, i32* %4, align 4
  br label %516

516:                                              ; preds = %552, %515
  %517 = load i32, i32* %4, align 4
  %518 = load i32, i32* @hb_audio_encoders_count, align 4
  %519 = icmp slt i32 %517, %518
  br i1 %519, label %520, label %555

520:                                              ; preds = %516
  %521 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %522 = load i32, i32* %4, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %521, i64 %523
  %525 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %524, i32 0, i32 2
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %551

528:                                              ; preds = %520
  %529 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %530 = load i32, i32* %4, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load i64, i64* @HB_GID_ACODEC_AAC, align 8
  %536 = icmp eq i64 %534, %535
  br i1 %536, label %537, label %551

537:                                              ; preds = %528
  %538 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %539 = load i32, i32* %4, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.TYPE_24__*, %struct.TYPE_24__** @hb_audio_encoders, align 8
  %546 = load i32, i32* %3, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %545, i64 %547
  %549 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %548, i32 0, i32 1
  %550 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %549, i32 0, i32 0
  store i32 %544, i32* %550, align 8
  br label %555

551:                                              ; preds = %528, %520
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %4, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %4, align 4
  br label %516

555:                                              ; preds = %537, %516
  br label %556

556:                                              ; preds = %555, %506
  br label %557

557:                                              ; preds = %556, %431
  br label %558

558:                                              ; preds = %557, %460
  %559 = load i32, i32* %3, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %3, align 4
  br label %427

561:                                              ; preds = %427
  store i32 0, i32* %3, align 4
  br label %562

562:                                              ; preds = %621, %561
  %563 = load i32, i32* %3, align 4
  %564 = load i32, i32* @hb_containers_count, align 4
  %565 = icmp slt i32 %563, %564
  br i1 %565, label %566, label %624

566:                                              ; preds = %562
  %567 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %568 = load i32, i32* %3, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %567, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %570, i32 0, i32 2
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %588

574:                                              ; preds = %566
  %575 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %576 = load i32, i32* %3, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %575, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = call i64 @hb_container_is_enabled(i32 %581)
  %583 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %584 = load i32, i32* %3, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %583, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %586, i32 0, i32 2
  store i64 %582, i64* %587, align 8
  br label %588

588:                                              ; preds = %574, %566
  %589 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %590 = load i32, i32* %3, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %592, i32 0, i32 2
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %620

596:                                              ; preds = %588
  %597 = load %struct.TYPE_20__*, %struct.TYPE_20__** @hb_containers_first_item, align 8
  %598 = icmp eq %struct.TYPE_20__* %597, null
  br i1 %598, label %599, label %605

599:                                              ; preds = %596
  %600 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %601 = load i32, i32* %3, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %600, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %603, i32 0, i32 1
  store %struct.TYPE_20__* %604, %struct.TYPE_20__** @hb_containers_first_item, align 8
  br label %614

605:                                              ; preds = %596
  %606 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %607 = load i32, i32* %3, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %609, i32 0, i32 1
  %611 = load %struct.TYPE_20__*, %struct.TYPE_20__** @hb_containers_last_item, align 8
  %612 = bitcast %struct.TYPE_20__* %611 to %struct.TYPE_31__*
  %613 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %612, i32 0, i32 0
  store %struct.TYPE_20__* %610, %struct.TYPE_20__** %613, align 8
  br label %614

614:                                              ; preds = %605, %599
  %615 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %616 = load i32, i32* %3, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %615, i64 %617
  %619 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %618, i32 0, i32 1
  store %struct.TYPE_20__* %619, %struct.TYPE_20__** @hb_containers_last_item, align 8
  br label %620

620:                                              ; preds = %614, %588
  br label %621

621:                                              ; preds = %620
  %622 = load i32, i32* %3, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %3, align 4
  br label %562

624:                                              ; preds = %562
  store i32 0, i32* %3, align 4
  br label %625

625:                                              ; preds = %706, %624
  %626 = load i32, i32* %3, align 4
  %627 = load i32, i32* @hb_containers_count, align 4
  %628 = icmp slt i32 %626, %627
  br i1 %628, label %629, label %709

629:                                              ; preds = %625
  %630 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %631 = load i32, i32* %3, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %630, i64 %632
  %634 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %633, i32 0, i32 2
  %635 = load i64, i64* %634, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %705, label %637

637:                                              ; preds = %629
  %638 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %639 = load i32, i32* %3, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %638, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* @HB_MUX_MASK, align 4
  %646 = and i32 %644, %645
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %659

648:                                              ; preds = %637
  %649 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %650 = load i32, i32* %3, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %649, i64 %651
  %653 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %653, i32 0, i32 0
  %655 = load i32, i32* %654, align 8
  %656 = call i64 @hb_container_is_enabled(i32 %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %659

658:                                              ; preds = %648
  br label %706

659:                                              ; preds = %648, %637
  store i32 0, i32* %4, align 4
  br label %660

660:                                              ; preds = %701, %659
  %661 = load i32, i32* %4, align 4
  %662 = load i32, i32* @hb_containers_count, align 4
  %663 = icmp slt i32 %661, %662
  br i1 %663, label %664, label %704

664:                                              ; preds = %660
  %665 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %666 = load i32, i32* %4, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %665, i64 %667
  %669 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %668, i32 0, i32 2
  %670 = load i64, i64* %669, align 8
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %672, label %700

672:                                              ; preds = %664
  %673 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %674 = load i32, i32* %4, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %673, i64 %675
  %677 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %676, i32 0, i32 0
  %678 = load i64, i64* %677, align 8
  %679 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %680 = load i32, i32* %3, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %679, i64 %681
  %683 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %682, i32 0, i32 0
  %684 = load i64, i64* %683, align 8
  %685 = icmp eq i64 %678, %684
  br i1 %685, label %686, label %700

686:                                              ; preds = %672
  %687 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %688 = load i32, i32* %4, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %687, i64 %689
  %691 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 8
  %694 = load %struct.TYPE_21__*, %struct.TYPE_21__** @hb_containers, align 8
  %695 = load i32, i32* %3, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %694, i64 %696
  %698 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %698, i32 0, i32 0
  store i32 %693, i32* %699, align 8
  br label %704

700:                                              ; preds = %672, %664
  br label %701

701:                                              ; preds = %700
  %702 = load i32, i32* %4, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %4, align 4
  br label %660

704:                                              ; preds = %686, %660
  br label %705

705:                                              ; preds = %704, %629
  br label %706

706:                                              ; preds = %705, %658
  %707 = load i32, i32* %3, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %3, align 4
  br label %625

709:                                              ; preds = %625
  store i32 1, i32* @hb_common_global_init.common_init_done, align 4
  br label %710

710:                                              ; preds = %709, %7
  ret void
}

declare dso_local i64 @hb_video_encoder_is_enabled(i32, i32) #1

declare dso_local i64 @hb_audio_encoder_is_enabled(i32) #1

declare dso_local i64 @hb_container_is_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
