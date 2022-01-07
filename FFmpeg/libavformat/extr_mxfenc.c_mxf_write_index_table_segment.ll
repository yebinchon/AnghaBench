; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_index_table_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_index_table_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__**, i32*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"edit units count %d\0A\00", align 1
@index_table_segment_key = common dso_local global i32 0, align 4
@IndexTableSegment = common dso_local global i32 0, align 4
@KAG_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"missing frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @mxf_write_index_table_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_index_table_segment(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %3, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = load i32, i32* @AV_LOG_DEBUG, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %493

42:                                               ; preds = %36, %1
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @index_table_segment_key, align 4
  %45 = call i32 @avio_write(i32* %43, i32 %44, i32 16)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @klv_encode_ber4_length(i32* %46, i32 0)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @avio_tell(i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @mxf_write_local_tag(i32* %50, i32 16, i32 15370)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @IndexTableSegment, align 4
  %54 = call i32 @mxf_write_uuid(i32* %52, i32 %53, i32 0)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @mxf_write_local_tag(i32* %55, i32 8, i32 16139)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @avio_wb32(i32* %57, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @avio_wb32(i32* %63, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @mxf_write_local_tag(i32* %69, i32 8, i32 16140)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @avio_wb64(i32* %71, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @mxf_write_local_tag(i32* %76, i32 8, i32 16141)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @avio_wb64(i32* %83, i32 0)
  br label %91

85:                                               ; preds = %42
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @avio_wb64(i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @mxf_write_local_tag(i32* %92, i32 4, i32 16133)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @avio_wb32(i32* %94, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @mxf_write_local_tag(i32* %99, i32 4, i32 16134)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @avio_wb32(i32* %101, i32 2)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @mxf_write_local_tag(i32* %103, i32 4, i32 16135)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @avio_wb32(i32* %105, i32 1)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @mxf_write_local_tag(i32* %107, i32 1, i32 16136)
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @avio_w8(i32* %109, i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = mul nsw i32 %121, 6
  %123 = add nsw i32 8, %122
  %124 = call i32 @mxf_write_local_tag(i32* %117, i32 %123, i32 16137)
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  %130 = call i32 @avio_wb32(i32* %125, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @avio_wb32(i32* %131, i32 6)
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @avio_w8(i32* %133, i32 0)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @avio_w8(i32* %135, i32 0)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @avio_wb32(i32* %137, i32 0)
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %220, %91
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %223

145:                                              ; preds = %139
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %148, i64 %150
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %12, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %13, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @avio_w8(i32* %156, i32 %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %145
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %165, %145
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @avio_w8(i32* %172, i32 0)
  %174 = load i32*, i32** %4, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @avio_wb32(i32* %174, i32 %177)
  br label %219

179:                                              ; preds = %166
  %180 = load i32, i32* %5, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @avio_w8(i32* %183, i32 0)
  %185 = load i32*, i32** %4, align 8
  %186 = load i32, i32* @KAG_SIZE, align 4
  %187 = call i32 @avio_wb32(i32* %185, i32 %186)
  br label %218

188:                                              ; preds = %179
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %209, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %197, %201
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i64 @klv_fill_size(i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %204
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %191, %188
  %210 = load i32*, i32** %4, align 8
  %211 = call i32 @avio_w8(i32* %210, i32 1)
  %212 = load i32*, i32** %4, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sub nsw i32 %213, 1
  %215 = load i32, i32* %10, align 4
  %216 = mul nsw i32 %214, %215
  %217 = call i32 @avio_wb32(i32* %212, i32 %216)
  br label %218

218:                                              ; preds = %209, %182
  br label %219

219:                                              ; preds = %218, %171
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %139

223:                                              ; preds = %139
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %489, label %228

228:                                              ; preds = %223
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %231, i64 0
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  store %struct.TYPE_13__* %235, %struct.TYPE_13__** %14, align 8
  %236 = load i32*, i32** %4, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %239, 15
  %241 = add nsw i32 8, %240
  %242 = call i32 @mxf_write_local_tag(i32* %236, i32 %241, i32 16138)
  %243 = load i32*, i32** %4, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @avio_wb32(i32* %243, i32 %246)
  %248 = load i32*, i32** %4, align 8
  %249 = call i32 @avio_wb32(i32* %248, i32 15)
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %469, %228
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %472

256:                                              ; preds = %250
  store i32 0, i32* %15, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 51
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %283, label %267

267:                                              ; preds = %256
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 3
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 %271, %274
  %276 = call i8* @FFMAX(i8* %270, i32 %275)
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 3
  store i8* %276, i8** %278, align 8
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* %5, align 4
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %267, %256
  %284 = load i32, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %341

286:                                              ; preds = %283
  %287 = load i32, i32* %5, align 4
  %288 = load i32, i32* %8, align 4
  %289 = sub nsw i32 %287, %288
  store i32 %289, i32* %16, align 4
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %290, %298
  br i1 %299, label %300, label %340

300:                                              ; preds = %286
  %301 = load i32, i32* %8, align 4
  store i32 %301, i32* %6, align 4
  br label %302

302:                                              ; preds = %321, %300
  %303 = load i32, i32* %6, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp slt i32 %303, %306
  br i1 %307, label %308, label %324

308:                                              ; preds = %302
  %309 = load i32, i32* %16, align 4
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %311, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %309, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %308
  br label %324

320:                                              ; preds = %308
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %6, align 4
  br label %302

324:                                              ; preds = %319, %302
  %325 = load i32, i32* %6, align 4
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %325, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %324
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %332 = load i32, i32* @AV_LOG_WARNING, align 4
  %333 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %331, i32 %332, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %334

334:                                              ; preds = %330, %324
  %335 = load i32, i32* %6, align 4
  %336 = load i32, i32* %8, align 4
  %337 = sub nsw i32 %335, %336
  %338 = load i32, i32* %16, align 4
  %339 = sub nsw i32 %337, %338
  store i32 %339, i32* %15, align 4
  br label %340

340:                                              ; preds = %334, %286
  br label %341

341:                                              ; preds = %340, %283
  %342 = load i32*, i32** %4, align 8
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @avio_w8(i32* %342, i32 %343)
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 4
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, 48
  %354 = icmp eq i32 %353, 48
  br i1 %354, label %355, label %372

355:                                              ; preds = %341
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 2
  %358 = load i8*, i8** %357, align 8
  %359 = load i32, i32* %5, align 4
  %360 = load i32, i32* %9, align 4
  %361 = sub nsw i32 %359, %360
  %362 = call i8* @FFMAX(i8* %358, i32 %361)
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 2
  store i8* %362, i8** %364, align 8
  %365 = load i32*, i32** %4, align 8
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %5, align 4
  %370 = sub nsw i32 %368, %369
  %371 = call i32 @avio_w8(i32* %365, i32 %370)
  br label %394

372:                                              ; preds = %341
  %373 = load i32*, i32** %4, align 8
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* %5, align 4
  %376 = sub nsw i32 %374, %375
  %377 = call i32 @avio_w8(i32* %373, i32 %376)
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 4
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %379, align 8
  %381 = load i32, i32* %5, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = and i32 %385, 32
  %387 = icmp eq i32 %386, 32
  br i1 %387, label %388, label %392

388:                                              ; preds = %372
  %389 = load i32, i32* %8, align 4
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %388, %372
  %393 = load i32, i32* %5, align 4
  store i32 %393, i32* %9, align 4
  br label %394

394:                                              ; preds = %392, %355
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 4
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = and i32 %402, 51
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %429, label %405

405:                                              ; preds = %394
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 4
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %407, align 8
  %409 = load i32, i32* %5, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = and i32 %413, 64
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %429

416:                                              ; preds = %405
  %417 = load i32, i32* %15, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %429, label %419

419:                                              ; preds = %416
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 4
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %421, align 8
  %423 = load i32, i32* %5, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = or i32 %427, 128
  store i32 %428, i32* %426, align 4
  br label %429

429:                                              ; preds = %419, %416, %405, %394
  %430 = load i32*, i32** %4, align 8
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 4
  %433 = load %struct.TYPE_12__*, %struct.TYPE_12__** %432, align 8
  %434 = load i32, i32* %5, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @avio_w8(i32* %430, i32 %438)
  %440 = load i32*, i32** %4, align 8
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 4
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %442, align 8
  %444 = load i32, i32* %5, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @avio_wb64(i32* %440, i32 %448)
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = icmp sgt i32 %452, 1
  br i1 %453, label %454, label %465

454:                                              ; preds = %429
  %455 = load i32*, i32** %4, align 8
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 4
  %458 = load %struct.TYPE_12__*, %struct.TYPE_12__** %457, align 8
  %459 = load i32, i32* %5, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @avio_wb32(i32* %455, i32 %463)
  br label %468

465:                                              ; preds = %429
  %466 = load i32*, i32** %4, align 8
  %467 = call i32 @avio_wb32(i32* %466, i32 0)
  br label %468

468:                                              ; preds = %465, %454
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %5, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %5, align 4
  br label %250

472:                                              ; preds = %250
  %473 = load i32, i32* %8, align 4
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = sub nsw i32 %473, %476
  %478 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %478, i32 0, i32 0
  store i32 %477, i32* %479, align 8
  %480 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = add nsw i32 %485, %482
  store i32 %486, i32* %484, align 4
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 1
  store i32 0, i32* %488, align 4
  br label %489

489:                                              ; preds = %472, %223
  %490 = load i32*, i32** %4, align 8
  %491 = load i32, i32* %11, align 4
  %492 = call i32 @mxf_update_klv_size(i32* %490, i32 %491)
  br label %493

493:                                              ; preds = %489, %41
  ret void
}

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @klv_encode_ber4_length(i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @mxf_write_local_tag(i32*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(i32*, i32, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i64 @klv_fill_size(i32) #1

declare dso_local i8* @FFMAX(i8*, i32) #1

declare dso_local i32 @mxf_update_klv_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
