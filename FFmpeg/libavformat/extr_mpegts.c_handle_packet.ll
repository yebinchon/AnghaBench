; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_handle_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64, i32, i32, %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_22__**, i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_24__**, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i32, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_22__*, i32*, i32, i32, i32)*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Continuity check failed for pid %d expected %d got %d\0A\00", align 1
@MPEGTS_PES = common dso_local global i64 0, align 8
@AV_PKT_FLAG_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Packet had TEI flag set; marking as corrupt\0A\00", align 1
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@MPEGTS_SECTION = common dso_local global i64 0, align 8
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"All programs have pmt, headers found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*)* @handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_packet(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_24__*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @AV_RB16(i32* %29)
  %31 = and i32 %30, 8191
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 64
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %38, i64 %40
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %6, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = icmp ne %struct.TYPE_22__* %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @add_pes_stream(%struct.TYPE_23__* %54, i32 %55, i32 -1)
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %59, i64 %61
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %6, align 8
  br label %64

64:                                               ; preds = %53, %50, %47, %2
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = icmp ne %struct.TYPE_22__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %500

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @discard_pid(%struct.TYPE_23__* %72, i32 %73)
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %68
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %500

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 4
  %91 = and i32 %90, 3
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %500

95:                                               ; preds = %83
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 2
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 1
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 128
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %107, %102, %95
  %114 = phi i1 [ false, %102 ], [ false, %95 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 15
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = and i32 %126, 15
  br label %132

128:                                              ; preds = %113
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  br label %132

132:                                              ; preds = %128, %122
  %133 = phi i32 [ %127, %122 ], [ %131, %128 ]
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 8191
  br i1 %135, label %148, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %145, %146
  br label %148

148:                                              ; preds = %144, %139, %136, %132
  %149 = phi i1 [ true, %139 ], [ true, %136 ], [ true, %132 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %182, label %156

156:                                              ; preds = %148
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 5
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = load i32, i32* @AV_LOG_DEBUG, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %159, i32 %160, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %161, i32 %162, i32 %163)
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MPEGTS_PES, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %156
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  store %struct.TYPE_21__* %175, %struct.TYPE_21__** %20, align 8
  %176 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %170, %156
  br label %182

182:                                              ; preds = %181, %148
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 128
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %182
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = load i32, i32* @AV_LOG_DEBUG, align 4
  %193 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %191, i32 %192, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MPEGTS_PES, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %188
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  store %struct.TYPE_21__* %204, %struct.TYPE_21__** %21, align 8
  %205 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %199, %188
  br label %211

211:                                              ; preds = %210, %182
  %212 = load i32*, i32** %5, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  store i32* %213, i32** %17, align 8
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %235

216:                                              ; preds = %211
  %217 = load i32*, i32** %5, align 8
  %218 = call i64 @parse_pcr(i32* %22, i32* %23, i32* %217)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i32, i32* %22, align 4
  %222 = mul nsw i32 %221, 300
  %223 = load i32, i32* %23, align 4
  %224 = add nsw i32 %222, %223
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %220, %216
  %228 = load i32*, i32** %17, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  %232 = load i32*, i32** %17, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %17, align 8
  br label %235

235:                                              ; preds = %227, %211
  %236 = load i32*, i32** %5, align 8
  %237 = load i32, i32* @TS_PACKET_SIZE, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32* %239, i32** %18, align 8
  %240 = load i32*, i32** %17, align 8
  %241 = load i32*, i32** %18, align 8
  %242 = icmp uge i32* %240, %241
  br i1 %242, label %246, label %243

243:                                              ; preds = %235
  %244 = load i32, i32* %16, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243, %235
  store i32 0, i32* %3, align 4
  br label %500

247:                                              ; preds = %243
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @avio_tell(i32 %252)
  store i32 %253, i32* %19, align 4
  %254 = load i32, i32* %19, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %247
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* @TS_PACKET_SIZE, align 4
  %259 = icmp sge i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @av_assert0(i32 %260)
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* @TS_PACKET_SIZE, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %256, %247
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @MPEGTS_SECTION, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %466

273:                                              ; preds = %267
  %274 = load i32, i32* %13, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %333

276:                                              ; preds = %273
  %277 = load i32*, i32** %17, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %17, align 8
  %279 = load i32, i32* %277, align 4
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = load i32*, i32** %18, align 8
  %283 = load i32*, i32** %17, align 8
  %284 = ptrtoint i32* %282 to i64
  %285 = ptrtoint i32* %283 to i64
  %286 = sub i64 %284, %285
  %287 = sdiv exact i64 %286, 4
  %288 = icmp sgt i64 %281, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %276
  store i32 0, i32* %3, align 4
  br label %500

290:                                              ; preds = %276
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %290
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %312

296:                                              ; preds = %293
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %299 = load i32*, i32** %17, align 8
  %300 = load i32, i32* %7, align 4
  %301 = call i32 @write_section_data(%struct.TYPE_23__* %297, %struct.TYPE_22__* %298, i32* %299, i32 %300, i32 0)
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 7
  %304 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %304, i64 %306
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %307, align 8
  %309 = icmp ne %struct.TYPE_22__* %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %296
  store i32 0, i32* %3, align 4
  br label %500

311:                                              ; preds = %296
  br label %312

312:                                              ; preds = %311, %293, %290
  %313 = load i32, i32* %7, align 4
  %314 = load i32*, i32** %17, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  store i32* %316, i32** %17, align 8
  %317 = load i32*, i32** %17, align 8
  %318 = load i32*, i32** %18, align 8
  %319 = icmp ult i32* %317, %318
  br i1 %319, label %320, label %332

320:                                              ; preds = %312
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %323 = load i32*, i32** %17, align 8
  %324 = load i32*, i32** %18, align 8
  %325 = load i32*, i32** %17, align 8
  %326 = ptrtoint i32* %324 to i64
  %327 = ptrtoint i32* %325 to i64
  %328 = sub i64 %326, %327
  %329 = sdiv exact i64 %328, 4
  %330 = trunc i64 %329 to i32
  %331 = call i32 @write_section_data(%struct.TYPE_23__* %321, %struct.TYPE_22__* %322, i32* %323, i32 %330, i32 1)
  br label %332

332:                                              ; preds = %320, %312
  br label %349

333:                                              ; preds = %273
  %334 = load i32, i32* %11, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %348

336:                                              ; preds = %333
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %339 = load i32*, i32** %17, align 8
  %340 = load i32*, i32** %18, align 8
  %341 = load i32*, i32** %17, align 8
  %342 = ptrtoint i32* %340 to i64
  %343 = ptrtoint i32* %341 to i64
  %344 = sub i64 %342, %343
  %345 = sdiv exact i64 %344, 4
  %346 = trunc i64 %345 to i32
  %347 = call i32 @write_section_data(%struct.TYPE_23__* %337, %struct.TYPE_22__* %338, i32* %339, i32 %346, i32 0)
  br label %348

348:                                              ; preds = %336, %333
  br label %349

349:                                              ; preds = %348, %332
  %350 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %350, i32 0, i32 5
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %465

358:                                              ; preds = %349
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = icmp sle i64 %361, 0
  br i1 %362, label %363, label %465

363:                                              ; preds = %358
  store i32 0, i32* %24, align 4
  br label %364

364:                                              ; preds = %382, %363
  %365 = load i32, i32* %24, align 4
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %365, %368
  br i1 %369, label %370, label %385

370:                                              ; preds = %364
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 6
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %372, align 8
  %374 = load i32, i32* %24, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %370
  br label %385

381:                                              ; preds = %370
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %24, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %24, align 4
  br label %364

385:                                              ; preds = %380, %364
  %386 = load i32, i32* %24, align 4
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %386, %389
  br i1 %390, label %391, label %464

391:                                              ; preds = %385
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %464

396:                                              ; preds = %391
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %397

397:                                              ; preds = %431, %396
  %398 = load i32, i32* %24, align 4
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 5
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = icmp slt i32 %398, %403
  br i1 %404, label %405, label %434

405:                                              ; preds = %397
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i32 0, i32 5
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 2
  %410 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %409, align 8
  %411 = load i32, i32* %24, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %410, i64 %412
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %413, align 8
  store %struct.TYPE_24__* %414, %struct.TYPE_24__** %26, align 8
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp sge i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %405
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_20__*, %struct.TYPE_20__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 1, %426
  %428 = load i32, i32* %25, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %25, align 4
  br label %430

430:                                              ; preds = %421, %405
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %24, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %24, align 4
  br label %397

434:                                              ; preds = %397
  %435 = load i32, i32* %25, align 4
  %436 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %437 = shl i32 1, %436
  %438 = and i32 %435, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %446

440:                                              ; preds = %434
  %441 = load i32, i32* %25, align 4
  %442 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %443 = shl i32 1, %442
  %444 = and i32 %441, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %449, label %446

446:                                              ; preds = %440, %434
  %447 = load i32, i32* %19, align 4
  %448 = icmp sgt i32 %447, 100000
  br i1 %448, label %449, label %463

449:                                              ; preds = %446, %440
  %450 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 5
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** %451, align 8
  %453 = load i32, i32* @AV_LOG_DEBUG, align 4
  %454 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %452, i32 %453, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %455 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %456 = xor i32 %455, -1
  %457 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %457, i32 0, i32 5
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = and i32 %461, %456
  store i32 %462, i32* %460, align 8
  br label %463

463:                                              ; preds = %449, %446
  br label %464

464:                                              ; preds = %463, %391, %385
  br label %465

465:                                              ; preds = %464, %358, %349
  br label %499

466:                                              ; preds = %267
  %467 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @MPEGTS_PES, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %498

472:                                              ; preds = %466
  %473 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %473, i32 0, i32 3
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %475, i32 0, i32 0
  %477 = load i32 (%struct.TYPE_22__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_22__*, i32*, i32, i32, i32)** %476, align 8
  %478 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %479 = load i32*, i32** %17, align 8
  %480 = load i32*, i32** %18, align 8
  %481 = load i32*, i32** %17, align 8
  %482 = ptrtoint i32* %480 to i64
  %483 = ptrtoint i32* %481 to i64
  %484 = sub i64 %482, %483
  %485 = sdiv exact i64 %484, 4
  %486 = trunc i64 %485 to i32
  %487 = load i32, i32* %13, align 4
  %488 = load i32, i32* %19, align 4
  %489 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %489, i32 0, i32 4
  %491 = load i32, i32* %490, align 4
  %492 = sub nsw i32 %488, %491
  %493 = call i32 %477(%struct.TYPE_22__* %478, i32* %479, i32 %486, i32 %487, i32 %492)
  store i32 %493, i32* %27, align 4
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %472
  %496 = load i32, i32* %27, align 4
  store i32 %496, i32* %3, align 4
  br label %500

497:                                              ; preds = %472
  br label %498

498:                                              ; preds = %497, %466
  br label %499

499:                                              ; preds = %498, %465
  store i32 0, i32* %3, align 4
  br label %500

500:                                              ; preds = %499, %495, %310, %289, %246, %94, %82, %67
  %501 = load i32, i32* %3, align 4
  ret i32 %501
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @add_pes_stream(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @discard_pid(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i64 @parse_pcr(i32*, i32*, i32*) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @write_section_data(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
