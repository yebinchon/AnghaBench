; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__**, i32, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, i64, i32, %struct.TYPE_22__, i64, i64, i32, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i64, i32, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AVIO_DATA_MARKER_SYNC_POINT = common dso_local global i32 0, align 4
@AVIO_DATA_MARKER_BOUNDARY_POINT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not write cached audio packet ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @mkv_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_packet(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %6, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %18, i64 %21
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = call i32 @mkv_check_new_extra_data(%struct.TYPE_23__* %37, %struct.TYPE_22__* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %3, align 4
  br label %256

44:                                               ; preds = %2
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %10, align 8
  br label %71

63:                                               ; preds = %44
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %63, %55
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @avio_tell(i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %71
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %12, align 4
  br label %149

97:                                               ; preds = %91, %71
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %106
  store i32 1, i32* %12, align 4
  br label %148

118:                                              ; preds = %111, %102, %97
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %145, label %129

129:                                              ; preds = %123
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %145, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %143, 4096
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %129, %123
  store i32 1, i32* %12, align 4
  br label %147

146:                                              ; preds = %142, %139, %135, %118
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %117
  br label %149

149:                                              ; preds = %148, %95
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %159 = call i32 @mkv_end_cluster(%struct.TYPE_23__* %158)
  br label %160

160:                                              ; preds = %157, %154, %149
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %203, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %173, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %174, i64 %177
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %183 = call i32 @av_rescale_q(i64 %171, i32 %181, i32 %182)
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %165
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %196, label %198

195:                                              ; preds = %186
  br i1 true, label %196, label %198

196:                                              ; preds = %195, %191
  %197 = load i32, i32* @AVIO_DATA_MARKER_SYNC_POINT, align 4
  br label %200

198:                                              ; preds = %195, %191, %165
  %199 = load i32, i32* @AVIO_DATA_MARKER_BOUNDARY_POINT, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = call i32 @avio_write_marker(i32 %168, i32 %183, i32 %201)
  br label %203

203:                                              ; preds = %200, %160
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp sgt i64 %207, 0
  br i1 %208, label %209, label %235

209:                                              ; preds = %203
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i32, i32* %12, align 4
  br label %220

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  %222 = call i32 @mkv_write_packet_internal(%struct.TYPE_23__* %210, %struct.TYPE_22__* %212, i32 %221)
  store i32 %222, i32* %11, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 4
  %225 = call i32 @av_packet_unref(%struct.TYPE_22__* %224)
  %226 = load i32, i32* %11, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %220
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %230 = load i32, i32* @AV_LOG_ERROR, align 4
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @av_log(%struct.TYPE_23__* %229, i32 %230, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %3, align 4
  br label %256

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %203
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %235
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 4
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %248 = call i32 @av_packet_ref(%struct.TYPE_22__* %246, %struct.TYPE_22__* %247)
  store i32 %248, i32* %11, align 4
  br label %249

249:                                              ; preds = %244, %239
  br label %254

250:                                              ; preds = %235
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %253 = call i32 @mkv_write_packet_internal(%struct.TYPE_23__* %251, %struct.TYPE_22__* %252, i32 0)
  store i32 %253, i32* %11, align 4
  br label %254

254:                                              ; preds = %250, %249
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %254, %228, %42
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32 @mkv_check_new_extra_data(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @mkv_end_cluster(%struct.TYPE_23__*) #1

declare dso_local i32 @avio_write_marker(i32, i32, i32) #1

declare dso_local i32 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @mkv_write_packet_internal(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_22__*) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, i32) #1

declare dso_local i32 @av_packet_ref(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
