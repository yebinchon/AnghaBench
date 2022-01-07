; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_output_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_output_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_30__*, %struct.TYPE_33__*, %struct.TYPE_35__** }
%struct.TYPE_30__ = type { i32 (%struct.TYPE_36__*, i32, %struct.TYPE_31__*, i32*, i32)* }
%struct.TYPE_31__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i64* }
%struct.TYPE_33__ = type { i32, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_32__*, i32, i64, i64, i64 }
%struct.TYPE_32__ = type { double* }

@ENOMEM = common dso_local global i32 0, align 4
@filter_channel = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*)* @output_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_frame(%struct.TYPE_35__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_31__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca [15 x double], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca [15 x double], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_32__*, align 8
  %23 = alloca double*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %30, align 8
  store %struct.TYPE_36__* %31, %struct.TYPE_36__** %4, align 8
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %34, i64 0
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %35, align 8
  store %struct.TYPE_35__* %36, %struct.TYPE_35__** %5, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %38, align 8
  store %struct.TYPE_33__* %39, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %7, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %8, align 8
  store i32 0, i32* %10, align 4
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_34__* @ff_get_audio_buffer(%struct.TYPE_35__* %40, i32 %43)
  store %struct.TYPE_34__* %44, %struct.TYPE_34__** %8, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %46 = icmp ne %struct.TYPE_34__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %413

50:                                               ; preds = %1
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = bitcast i64* %56 to i8**
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @av_audio_fifo_peek(i32 %53, i8** %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %410

65:                                               ; preds = %50
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 12
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i64 %82
  store %struct.TYPE_32__* %83, %struct.TYPE_32__** %12, align 8
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %86 = getelementptr inbounds [15 x double], [15 x double]* %13, i64 0, i64 0
  %87 = call i32 @get_auto_noise_levels(%struct.TYPE_33__* %84, %struct.TYPE_32__* %85, double* %86)
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %90 = getelementptr inbounds [15 x double], [15 x double]* %13, i64 0, i64 0
  %91 = call i32 @set_noise_profile(%struct.TYPE_33__* %88, %struct.TYPE_32__* %89, double* %90, i32 0)
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %71

95:                                               ; preds = %71
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %105 = call i32 @set_parameters(%struct.TYPE_33__* %104)
  br label %106

106:                                              ; preds = %103, %95
  br label %107

107:                                              ; preds = %106, %65
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 11
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %128, %112
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i64 %124
  store %struct.TYPE_32__* %125, %struct.TYPE_32__** %15, align 8
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %127 = call i32 @init_sample_noise(%struct.TYPE_32__* %126)
  br label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %113

131:                                              ; preds = %113
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 11
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 3
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %107
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %136
  store i32 0, i32* %16, align 4
  br label %142

142:                                              ; preds = %160, %141
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i64 %153
  store %struct.TYPE_32__* %154, %struct.TYPE_32__** %17, align 8
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @sample_noise_block(%struct.TYPE_33__* %155, %struct.TYPE_32__* %156, %struct.TYPE_34__* %157, i32 %158)
  br label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %142

163:                                              ; preds = %142
  br label %164

164:                                              ; preds = %163, %136
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %165, i32 0, i32 10
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %202

169:                                              ; preds = %164
  store i32 0, i32* %18, align 4
  br label %170

170:                                              ; preds = %194, %169
  %171 = load i32, i32* %18, align 4
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %197

176:                                              ; preds = %170
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 8
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i64 %181
  store %struct.TYPE_32__* %182, %struct.TYPE_32__** %19, align 8
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %185 = getelementptr inbounds [15 x double], [15 x double]* %20, i64 0, i64 0
  %186 = call i32 @finish_sample_noise(%struct.TYPE_33__* %183, %struct.TYPE_32__* %184, double* %185)
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %189 = getelementptr inbounds [15 x double], [15 x double]* %20, i64 0, i64 0
  %190 = call i32 @set_noise_profile(%struct.TYPE_33__* %187, %struct.TYPE_32__* %188, double* %189, i32 1)
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %193 = call i32 @set_band_parameters(%struct.TYPE_33__* %191, %struct.TYPE_32__* %192)
  br label %194

194:                                              ; preds = %176
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %18, align 4
  br label %170

197:                                              ; preds = %170
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 3
  store i32 0, i32* %199, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 10
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %197, %164
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  store %struct.TYPE_34__* %207, %struct.TYPE_34__** %208, align 8
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 0
  %213 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_31__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_31__*, i32*, i32)** %212, align 8
  %214 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %215 = load i32, i32* @filter_channel, align 4
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %220 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %219)
  %221 = call i32 @FFMIN(i32 %218, i32 %220)
  %222 = call i32 %213(%struct.TYPE_36__* %214, i32 %215, %struct.TYPE_31__* %9, i32* null, i32 %221)
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call %struct.TYPE_34__* @ff_get_audio_buffer(%struct.TYPE_35__* %223, i32 %226)
  store %struct.TYPE_34__* %227, %struct.TYPE_34__** %7, align 8
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %229 = icmp ne %struct.TYPE_34__* %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %202
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = call i32 @AVERROR(i32 %231)
  store i32 %232, i32* %10, align 4
  br label %410

233:                                              ; preds = %202
  store i32 0, i32* %21, align 4
  br label %234

234:                                              ; preds = %380, %233
  %235 = load i32, i32* %21, align 4
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %383

240:                                              ; preds = %234
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 8
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %242, align 8
  %244 = load i32, i32* %21, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i64 %245
  store %struct.TYPE_32__* %246, %struct.TYPE_32__** %22, align 8
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = load double*, double** %248, align 8
  store double* %249, double** %23, align 8
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = inttoptr i64 %256 to float*
  store float* %257, float** %24, align 8
  %258 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %258, i32 0, i32 1
  %260 = load i64*, i64** %259, align 8
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = inttoptr i64 %264 to float*
  store float* %265, float** %25, align 8
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  switch i32 %268, label %341 [
    i32 130, label %269
    i32 128, label %290
    i32 129, label %312
  ]

269:                                              ; preds = %240
  store i32 0, i32* %26, align 4
  br label %270

270:                                              ; preds = %286, %269
  %271 = load i32, i32* %26, align 4
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %270
  %277 = load float*, float** %24, align 8
  %278 = load i32, i32* %26, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %277, i64 %279
  %281 = load float, float* %280, align 4
  %282 = load float*, float** %25, align 8
  %283 = load i32, i32* %26, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %282, i64 %284
  store float %281, float* %285, align 4
  br label %286

286:                                              ; preds = %276
  %287 = load i32, i32* %26, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %26, align 4
  br label %270

289:                                              ; preds = %270
  br label %344

290:                                              ; preds = %240
  store i32 0, i32* %27, align 4
  br label %291

291:                                              ; preds = %308, %290
  %292 = load i32, i32* %27, align 4
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %311

297:                                              ; preds = %291
  %298 = load double*, double** %23, align 8
  %299 = load i32, i32* %27, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %298, i64 %300
  %302 = load double, double* %301, align 8
  %303 = fptrunc double %302 to float
  %304 = load float*, float** %25, align 8
  %305 = load i32, i32* %27, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %304, i64 %306
  store float %303, float* %307, align 4
  br label %308

308:                                              ; preds = %297
  %309 = load i32, i32* %27, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %27, align 4
  br label %291

311:                                              ; preds = %291
  br label %344

312:                                              ; preds = %240
  store i32 0, i32* %28, align 4
  br label %313

313:                                              ; preds = %337, %312
  %314 = load i32, i32* %28, align 4
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %319, label %340

319:                                              ; preds = %313
  %320 = load float*, float** %24, align 8
  %321 = load i32, i32* %28, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %320, i64 %322
  %324 = load float, float* %323, align 4
  %325 = fpext float %324 to double
  %326 = load double*, double** %23, align 8
  %327 = load i32, i32* %28, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds double, double* %326, i64 %328
  %330 = load double, double* %329, align 8
  %331 = fsub double %325, %330
  %332 = fptrunc double %331 to float
  %333 = load float*, float** %25, align 8
  %334 = load i32, i32* %28, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %333, i64 %335
  store float %332, float* %336, align 4
  br label %337

337:                                              ; preds = %319
  %338 = load i32, i32* %28, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %28, align 4
  br label %313

340:                                              ; preds = %313
  br label %344

341:                                              ; preds = %240
  %342 = call i32 @av_frame_free(%struct.TYPE_34__** %7)
  %343 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %343, i32* %10, align 4
  br label %410

344:                                              ; preds = %340, %311, %289
  %345 = load double*, double** %23, align 8
  %346 = load double*, double** %23, align 8
  %347 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double, double* %346, i64 %350
  %352 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = sub nsw i32 %354, %357
  %359 = sext i32 %358 to i64
  %360 = mul i64 %359, 8
  %361 = trunc i64 %360 to i32
  %362 = call i32 @memmove(double* %345, double* %351, i32 %361)
  %363 = load double*, double** %23, align 8
  %364 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %366, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds double, double* %363, i64 %371
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = mul i64 %376, 8
  %378 = trunc i64 %377 to i32
  %379 = call i32 @memset(double* %372, i32 0, i32 %378)
  br label %380

380:                                              ; preds = %344
  %381 = load i32, i32* %21, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %21, align 4
  br label %234

383:                                              ; preds = %234
  %384 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @av_audio_fifo_drain(i32 %386, i32 %389)
  %391 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %391, i32 0, i32 6
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %394, i32 0, i32 0
  store i32 %393, i32* %395, align 8
  %396 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %397 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %398 = call i32 @ff_filter_frame(%struct.TYPE_35__* %396, %struct.TYPE_34__* %397)
  store i32 %398, i32* %10, align 4
  %399 = load i32, i32* %10, align 4
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %383
  br label %410

402:                                              ; preds = %383
  %403 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 6
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, %405
  store i32 %409, i32* %407, align 4
  br label %410

410:                                              ; preds = %402, %401, %341, %230, %64
  %411 = call i32 @av_frame_free(%struct.TYPE_34__** %8)
  %412 = load i32, i32* %10, align 4
  store i32 %412, i32* %2, align 4
  br label %413

413:                                              ; preds = %410, %47
  %414 = load i32, i32* %2, align 4
  ret i32 %414
}

declare dso_local %struct.TYPE_34__* @ff_get_audio_buffer(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_audio_fifo_peek(i32, i8**, i32) #1

declare dso_local i32 @get_auto_noise_levels(%struct.TYPE_33__*, %struct.TYPE_32__*, double*) #1

declare dso_local i32 @set_noise_profile(%struct.TYPE_33__*, %struct.TYPE_32__*, double*, i32) #1

declare dso_local i32 @set_parameters(%struct.TYPE_33__*) #1

declare dso_local i32 @init_sample_noise(%struct.TYPE_32__*) #1

declare dso_local i32 @sample_noise_block(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @finish_sample_noise(%struct.TYPE_33__*, %struct.TYPE_32__*, double*) #1

declare dso_local i32 @set_band_parameters(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_36__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_34__**) #1

declare dso_local i32 @memmove(double*, double*, i32) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local i32 @av_audio_fifo_drain(i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
