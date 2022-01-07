; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tpad.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tpad.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__*, %struct.TYPE_26__**, %struct.TYPE_26__** }
%struct.TYPE_24__ = type { i32, i64, i32, i32, i64, i64, %struct.TYPE_25__*, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %13, i64 0
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %4, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %18, i64 0
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %5, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %7, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_26__* %24, %struct.TYPE_26__* %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %1
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %31
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %38 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_26__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %36
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_25__* @ff_get_video_buffer(%struct.TYPE_26__* %41, i32 %44, i32 %47)
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %7, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = icmp ne %struct.TYPE_25__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %371

54:                                               ; preds = %40
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ff_fill_rectangle(i32* %56, i32* %58, i32 %61, i32 %64, i32 0, i32 0, i32 %67, i32 %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @av_inv_q(i32 %79)
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @av_rescale_q(i32 1, i32 %80, i32 %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %95 = call i32 @ff_filter_frame(%struct.TYPE_26__* %93, %struct.TYPE_25__* %94)
  store i32 %95, i32* %2, align 4
  br label %371

96:                                               ; preds = %36, %31, %1
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %174

101:                                              ; preds = %96
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %174

106:                                              ; preds = %101
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 9
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = icmp ne %struct.TYPE_25__* %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %113 = call i64 @ff_inlink_queued_frames(%struct.TYPE_26__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = call %struct.TYPE_25__* @ff_inlink_peek_frame(%struct.TYPE_26__* %116, i32 0)
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 9
  store %struct.TYPE_25__* %117, %struct.TYPE_25__** %119, align 8
  br label %130

120:                                              ; preds = %111, %106
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 9
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %122, align 8
  %124 = icmp ne %struct.TYPE_25__* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = call i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_26__* %126, %struct.TYPE_26__* %127)
  br label %129

129:                                              ; preds = %125, %120
  br label %130

130:                                              ; preds = %129, %115
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 9
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %132, align 8
  %134 = call i8* @av_frame_clone(%struct.TYPE_25__* %133)
  %135 = bitcast i8* %134 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %135, %struct.TYPE_25__** %7, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %137 = icmp ne %struct.TYPE_25__* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = call i32 @AVERROR(i32 %139)
  store i32 %140, i32* %2, align 4
  br label %371

141:                                              ; preds = %130
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @av_inv_q(i32 %149)
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @av_rescale_q(i32 1, i32 %150, i32 %153)
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, -1
  store i64 %162, i64* %160, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %141
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 9
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %169, align 8
  br label %170

170:                                              ; preds = %167, %141
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %173 = call i32 @ff_filter_frame(%struct.TYPE_26__* %171, %struct.TYPE_25__* %172)
  store i32 %173, i32* %2, align 4
  br label %371

174:                                              ; preds = %101, %96
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %225, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %225, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %186 = call i32 @ff_inlink_consume_frame(%struct.TYPE_26__* %185, %struct.TYPE_25__** %7)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %2, align 4
  br label %371

191:                                              ; preds = %184
  %192 = load i32, i32* %8, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %191
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %213

199:                                              ; preds = %194
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 6
  %207 = call i32 @av_frame_free(%struct.TYPE_25__** %206)
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %209 = call i8* @av_frame_clone(%struct.TYPE_25__* %208)
  %210 = bitcast i8* %209 to %struct.TYPE_25__*
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 6
  store %struct.TYPE_25__* %210, %struct.TYPE_25__** %212, align 8
  br label %213

213:                                              ; preds = %204, %199, %194
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, %216
  store i64 %220, i64* %218, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %223 = call i32 @ff_filter_frame(%struct.TYPE_26__* %221, %struct.TYPE_25__* %222)
  store i32 %223, i32* %2, align 4
  br label %371

224:                                              ; preds = %191
  br label %225

225:                                              ; preds = %224, %179, %174
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %257, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %232 = call i64 @ff_inlink_acknowledge_status(%struct.TYPE_26__* %231, i32* %9, i64* %10)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %230
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @AVERROR_EOF, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %234
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %238
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i64, i64* %10, align 8
  %247 = call i32 @ff_outlink_set_status(%struct.TYPE_26__* %244, i32 %245, i64 %246)
  store i32 0, i32* %2, align 4
  br label %371

248:                                              ; preds = %238
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 2
  store i32 1, i32* %250, align 8
  %251 = load i64, i64* %10, align 8
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, %251
  store i64 %255, i64* %253, align 8
  br label %256

256:                                              ; preds = %248, %234
  br label %257

257:                                              ; preds = %256, %230, %225
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %360

262:                                              ; preds = %257
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %262
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %269 = load i32, i32* @AVERROR_EOF, align 4
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @ff_outlink_set_status(%struct.TYPE_26__* %268, i32 %269, i64 %272)
  store i32 0, i32* %2, align 4
  br label %371

274:                                              ; preds = %262
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %311

279:                                              ; preds = %274
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call %struct.TYPE_25__* @ff_get_video_buffer(%struct.TYPE_26__* %280, i32 %283, i32 %286)
  store %struct.TYPE_25__* %287, %struct.TYPE_25__** %7, align 8
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %289 = icmp ne %struct.TYPE_25__* %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %279
  %291 = load i32, i32* @ENOMEM, align 4
  %292 = call i32 @AVERROR(i32 %291)
  store i32 %292, i32* %2, align 4
  br label %371

293:                                              ; preds = %279
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 8
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 7
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @ff_fill_rectangle(i32* %295, i32* %297, i32 %300, i32 %303, i32 0, i32 0, i32 %306, i32 %309)
  br label %329

311:                                              ; preds = %274
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %328

316:                                              ; preds = %311
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %318, align 8
  %320 = call i8* @av_frame_clone(%struct.TYPE_25__* %319)
  %321 = bitcast i8* %320 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %321, %struct.TYPE_25__** %7, align 8
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %323 = icmp ne %struct.TYPE_25__* %322, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %316
  %325 = load i32, i32* @ENOMEM, align 4
  %326 = call i32 @AVERROR(i32 %325)
  store i32 %326, i32* %2, align 4
  br label %371

327:                                              ; preds = %316
  br label %328

328:                                              ; preds = %327, %311
  br label %329

329:                                              ; preds = %328, %293
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 5
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 0
  store i64 %332, i64* %334, align 8
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @av_inv_q(i32 %337)
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i64 @av_rescale_q(i32 1, i32 %338, i32 %341)
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = add nsw i64 %345, %342
  store i64 %346, i64* %344, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 4
  %349 = load i64, i64* %348, align 8
  %350 = icmp sgt i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %329
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %354, -1
  store i64 %355, i64* %353, align 8
  br label %356

356:                                              ; preds = %351, %329
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %359 = call i32 @ff_filter_frame(%struct.TYPE_26__* %357, %struct.TYPE_25__* %358)
  store i32 %359, i32* %2, align 4
  br label %371

360:                                              ; preds = %257
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %369, label %365

365:                                              ; preds = %360
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %367 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %368 = call i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_26__* %366, %struct.TYPE_26__* %367)
  br label %369

369:                                              ; preds = %365, %360
  %370 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %369, %356, %324, %290, %267, %243, %213, %189, %170, %138, %54, %51
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i64 @ff_outlink_frame_wanted(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @ff_get_video_buffer(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_fill_rectangle(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i64 @ff_inlink_queued_frames(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @ff_inlink_peek_frame(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i8* @av_frame_clone(%struct.TYPE_25__*) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_26__*, %struct.TYPE_25__**) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_25__**) #1

declare dso_local i64 @ff_inlink_acknowledge_status(%struct.TYPE_26__*, i32*, i64*) #1

declare dso_local i32 @ff_outlink_set_status(%struct.TYPE_26__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
