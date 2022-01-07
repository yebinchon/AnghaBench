; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_map_channels_to_pulse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_map_channels_to_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8** }

@AV_CH_FRONT_LEFT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_FRONT_LEFT = common dso_local global i8* null, align 8
@AV_CH_FRONT_RIGHT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_FRONT_RIGHT = common dso_local global i8* null, align 8
@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_FRONT_CENTER = common dso_local global i8* null, align 8
@AV_CH_LOW_FREQUENCY = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_LFE = common dso_local global i8* null, align 8
@AV_CH_BACK_LEFT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_REAR_LEFT = common dso_local global i8* null, align 8
@AV_CH_BACK_RIGHT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_REAR_RIGHT = common dso_local global i8* null, align 8
@AV_CH_FRONT_LEFT_OF_CENTER = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_FRONT_LEFT_OF_CENTER = common dso_local global i8* null, align 8
@AV_CH_FRONT_RIGHT_OF_CENTER = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_FRONT_RIGHT_OF_CENTER = common dso_local global i8* null, align 8
@AV_CH_BACK_CENTER = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_REAR_CENTER = common dso_local global i8* null, align 8
@AV_CH_SIDE_LEFT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_SIDE_LEFT = common dso_local global i8* null, align 8
@AV_CH_SIDE_RIGHT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_SIDE_RIGHT = common dso_local global i8* null, align 8
@AV_CH_TOP_CENTER = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_TOP_CENTER = common dso_local global i8* null, align 8
@AV_CH_TOP_FRONT_LEFT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_TOP_FRONT_LEFT = common dso_local global i8* null, align 8
@AV_CH_TOP_FRONT_CENTER = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_TOP_FRONT_CENTER = common dso_local global i8* null, align 8
@AV_CH_TOP_FRONT_RIGHT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_TOP_FRONT_RIGHT = common dso_local global i8* null, align 8
@AV_CH_TOP_BACK_LEFT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_TOP_REAR_LEFT = common dso_local global i8* null, align 8
@AV_CH_TOP_BACK_CENTER = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_TOP_REAR_CENTER = common dso_local global i8* null, align 8
@AV_CH_TOP_BACK_RIGHT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_TOP_REAR_RIGHT = common dso_local global i8* null, align 8
@AV_CH_STEREO_LEFT = common dso_local global i32 0, align 4
@AV_CH_STEREO_RIGHT = common dso_local global i32 0, align 4
@AV_CH_WIDE_LEFT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_AUX0 = common dso_local global i8* null, align 8
@AV_CH_WIDE_RIGHT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_AUX1 = common dso_local global i8* null, align 8
@AV_CH_SURROUND_DIRECT_LEFT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_AUX2 = common dso_local global i8* null, align 8
@AV_CH_SURROUND_DIRECT_RIGHT = common dso_local global i32 0, align 4
@PA_CHANNEL_POSITION_AUX3 = common dso_local global i8* null, align 8
@AV_CH_LOW_FREQUENCY_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @pulse_map_channels_to_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulse_map_channels_to_pulse(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AV_CH_FRONT_LEFT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_LEFT, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds i8*, i8** %15, i64 %18
  store i8* %12, i8** %20, align 8
  br label %21

21:                                               ; preds = %11, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @AV_CH_FRONT_RIGHT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_RIGHT, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds i8*, i8** %30, i64 %33
  store i8* %27, i8** %35, align 8
  br label %36

36:                                               ; preds = %26, %21
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_CENTER, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %42, i8** %50, align 8
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @AV_CH_LOW_FREQUENCY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i8*, i8** @PA_CHANNEL_POSITION_LFE, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* %57, i8** %65, align 8
  br label %66

66:                                               ; preds = %56, %51
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @AV_CH_BACK_LEFT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i8*, i8** @PA_CHANNEL_POSITION_REAR_LEFT, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds i8*, i8** %75, i64 %78
  store i8* %72, i8** %80, align 8
  br label %81

81:                                               ; preds = %71, %66
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @AV_CH_BACK_RIGHT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i8*, i8** @PA_CHANNEL_POSITION_REAR_RIGHT, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = getelementptr inbounds i8*, i8** %90, i64 %93
  store i8* %87, i8** %95, align 8
  br label %96

96:                                               ; preds = %86, %81
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_LEFT_OF_CENTER, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = getelementptr inbounds i8*, i8** %105, i64 %108
  store i8* %102, i8** %110, align 8
  br label %111

111:                                              ; preds = %101, %96
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_RIGHT_OF_CENTER, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = getelementptr inbounds i8*, i8** %120, i64 %123
  store i8* %117, i8** %125, align 8
  br label %126

126:                                              ; preds = %116, %111
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load i8*, i8** @PA_CHANNEL_POSITION_REAR_CENTER, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i8**, i8*** %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = getelementptr inbounds i8*, i8** %135, i64 %138
  store i8* %132, i8** %140, align 8
  br label %141

141:                                              ; preds = %131, %126
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load i8*, i8** @PA_CHANNEL_POSITION_SIDE_LEFT, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i8**, i8*** %149, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = getelementptr inbounds i8*, i8** %150, i64 %153
  store i8* %147, i8** %155, align 8
  br label %156

156:                                              ; preds = %146, %141
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load i8*, i8** @PA_CHANNEL_POSITION_SIDE_RIGHT, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i8**, i8*** %164, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = getelementptr inbounds i8*, i8** %165, i64 %168
  store i8* %162, i8** %170, align 8
  br label %171

171:                                              ; preds = %161, %156
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @AV_CH_TOP_CENTER, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i8*, i8** @PA_CHANNEL_POSITION_TOP_CENTER, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i8**, i8*** %179, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = getelementptr inbounds i8*, i8** %180, i64 %183
  store i8* %177, i8** %185, align 8
  br label %186

186:                                              ; preds = %176, %171
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @AV_CH_TOP_FRONT_LEFT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load i8*, i8** @PA_CHANNEL_POSITION_TOP_FRONT_LEFT, align 8
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i8**, i8*** %194, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = getelementptr inbounds i8*, i8** %195, i64 %198
  store i8* %192, i8** %200, align 8
  br label %201

201:                                              ; preds = %191, %186
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* @AV_CH_TOP_FRONT_CENTER, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load i8*, i8** @PA_CHANNEL_POSITION_TOP_FRONT_CENTER, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i8**, i8*** %209, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %212, align 8
  %215 = getelementptr inbounds i8*, i8** %210, i64 %213
  store i8* %207, i8** %215, align 8
  br label %216

216:                                              ; preds = %206, %201
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* @AV_CH_TOP_FRONT_RIGHT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %216
  %222 = load i8*, i8** @PA_CHANNEL_POSITION_TOP_FRONT_RIGHT, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i8**, i8*** %224, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = getelementptr inbounds i8*, i8** %225, i64 %228
  store i8* %222, i8** %230, align 8
  br label %231

231:                                              ; preds = %221, %216
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* @AV_CH_TOP_BACK_LEFT, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %231
  %237 = load i8*, i8** @PA_CHANNEL_POSITION_TOP_REAR_LEFT, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  %240 = load i8**, i8*** %239, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %242, align 8
  %245 = getelementptr inbounds i8*, i8** %240, i64 %243
  store i8* %237, i8** %245, align 8
  br label %246

246:                                              ; preds = %236, %231
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* @AV_CH_TOP_BACK_CENTER, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %246
  %252 = load i8*, i8** @PA_CHANNEL_POSITION_TOP_REAR_CENTER, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  %255 = load i8**, i8*** %254, align 8
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = getelementptr inbounds i8*, i8** %255, i64 %258
  store i8* %252, i8** %260, align 8
  br label %261

261:                                              ; preds = %251, %246
  %262 = load i32, i32* %3, align 4
  %263 = load i32, i32* @AV_CH_TOP_BACK_RIGHT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %261
  %267 = load i8*, i8** @PA_CHANNEL_POSITION_TOP_REAR_RIGHT, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  %270 = load i8**, i8*** %269, align 8
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %272, align 8
  %275 = getelementptr inbounds i8*, i8** %270, i64 %273
  store i8* %267, i8** %275, align 8
  br label %276

276:                                              ; preds = %266, %261
  %277 = load i32, i32* %3, align 4
  %278 = load i32, i32* @AV_CH_STEREO_LEFT, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %276
  %282 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_LEFT, align 8
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 1
  %285 = load i8**, i8*** %284, align 8
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, 1
  store i64 %289, i64* %287, align 8
  %290 = getelementptr inbounds i8*, i8** %285, i64 %288
  store i8* %282, i8** %290, align 8
  br label %291

291:                                              ; preds = %281, %276
  %292 = load i32, i32* %3, align 4
  %293 = load i32, i32* @AV_CH_STEREO_RIGHT, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %291
  %297 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_RIGHT, align 8
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = load i8**, i8*** %299, align 8
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 1
  store i64 %304, i64* %302, align 8
  %305 = getelementptr inbounds i8*, i8** %300, i64 %303
  store i8* %297, i8** %305, align 8
  br label %306

306:                                              ; preds = %296, %291
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* @AV_CH_WIDE_LEFT, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %306
  %312 = load i8*, i8** @PA_CHANNEL_POSITION_AUX0, align 8
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 1
  %315 = load i8**, i8*** %314, align 8
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %318, 1
  store i64 %319, i64* %317, align 8
  %320 = getelementptr inbounds i8*, i8** %315, i64 %318
  store i8* %312, i8** %320, align 8
  br label %321

321:                                              ; preds = %311, %306
  %322 = load i32, i32* %3, align 4
  %323 = load i32, i32* @AV_CH_WIDE_RIGHT, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %336

326:                                              ; preds = %321
  %327 = load i8*, i8** @PA_CHANNEL_POSITION_AUX1, align 8
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 1
  %330 = load i8**, i8*** %329, align 8
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %333, 1
  store i64 %334, i64* %332, align 8
  %335 = getelementptr inbounds i8*, i8** %330, i64 %333
  store i8* %327, i8** %335, align 8
  br label %336

336:                                              ; preds = %326, %321
  %337 = load i32, i32* %3, align 4
  %338 = load i32, i32* @AV_CH_SURROUND_DIRECT_LEFT, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %336
  %342 = load i8*, i8** @PA_CHANNEL_POSITION_AUX2, align 8
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 1
  %345 = load i8**, i8*** %344, align 8
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %348, 1
  store i64 %349, i64* %347, align 8
  %350 = getelementptr inbounds i8*, i8** %345, i64 %348
  store i8* %342, i8** %350, align 8
  br label %351

351:                                              ; preds = %341, %336
  %352 = load i32, i32* %3, align 4
  %353 = load i32, i32* @AV_CH_SURROUND_DIRECT_RIGHT, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %351
  %357 = load i8*, i8** @PA_CHANNEL_POSITION_AUX3, align 8
  %358 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i32 0, i32 1
  %360 = load i8**, i8*** %359, align 8
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %363, 1
  store i64 %364, i64* %362, align 8
  %365 = getelementptr inbounds i8*, i8** %360, i64 %363
  store i8* %357, i8** %365, align 8
  br label %366

366:                                              ; preds = %356, %351
  %367 = load i32, i32* %3, align 4
  %368 = load i32, i32* @AV_CH_LOW_FREQUENCY_2, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %381

371:                                              ; preds = %366
  %372 = load i8*, i8** @PA_CHANNEL_POSITION_LFE, align 8
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 1
  %375 = load i8**, i8*** %374, align 8
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = add nsw i64 %378, 1
  store i64 %379, i64* %377, align 8
  %380 = getelementptr inbounds i8*, i8** %375, i64 %378
  store i8* %372, i8** %380, align 8
  br label %381

381:                                              ; preds = %371, %366
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
