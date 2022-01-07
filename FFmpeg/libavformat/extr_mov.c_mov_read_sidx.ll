; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_sidx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_sidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"sidx version %u\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"could not find corresponding track id %d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid sidx timescale 1/%d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"sidx reference_type 1\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*, i64)* @mov_read_sidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_sidx(%struct.TYPE_22__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_25__, align 4
  %21 = alloca %struct.TYPE_25__, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_21__*, align 8
  %27 = alloca %struct.TYPE_20__*, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  store i64 %2, i64* %28, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32* %1, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @avio_tell(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %30, %32
  store i64 %33, i64* %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %19, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @avio_r8(i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (%struct.TYPE_18__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_18__* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %4, align 4
  br label %324

44:                                               ; preds = %3
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @avio_rb24(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i8* @avio_rb32(i32* %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %83, %44
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %50
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %63, i64 %65
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %58
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %77, i64 %79
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  store %struct.TYPE_24__* %81, %struct.TYPE_24__** %16, align 8
  br label %86

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %50

86:                                               ; preds = %72, %50
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %88 = icmp ne %struct.TYPE_24__* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = load i32, i32* @AV_LOG_WARNING, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @av_log(%struct.TYPE_18__* %92, i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32 0, i32* %4, align 4
  br label %324

96:                                               ; preds = %86
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  store %struct.TYPE_19__* %99, %struct.TYPE_19__** %18, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i8* @avio_rb32(i32* %100)
  %102 = call i32 @av_make_q(i32 1, i8* %101)
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = bitcast %struct.TYPE_25__* %20 to i8*
  %105 = bitcast %struct.TYPE_25__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ule i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %96
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @av_log(%struct.TYPE_18__* %112, i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %117, i32* %4, align 4
  br label %324

118:                                              ; preds = %96
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = call i8* @avio_rb32(i32* %122)
  %124 = ptrtoint i8* %123 to i64
  store i64 %124, i64* %9, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i8* @avio_rb32(i32* %125)
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr i8, i8* %126, i64 %127
  %129 = ptrtoint i8* %128 to i64
  store i64 %129, i64* %8, align 8
  br label %137

130:                                              ; preds = %118
  %131 = load i32*, i32** %7, align 8
  %132 = call i64 @avio_rb64(i32* %131)
  store i64 %132, i64* %9, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i64 @avio_rb64(i32* %133)
  %135 = load i64, i64* %8, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %130, %121
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @avio_rb16(i32* %138)
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @avio_rb16(i32* %140)
  store i32 %141, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %195, %137
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %198

146:                                              ; preds = %142
  %147 = load i32*, i32** %7, align 8
  %148 = call i8* @avio_rb32(i32* %147)
  %149 = ptrtoint i8* %148 to i32
  store i32 %149, i32* %24, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = call i8* @avio_rb32(i32* %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %25, align 4
  %153 = load i32, i32* %24, align 4
  %154 = and i32 %153, -2147483648
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %146
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = call i32 (%struct.TYPE_18__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_18__* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %161, i32* %4, align 4
  br label %324

162:                                              ; preds = %146
  %163 = load i32*, i32** %7, align 8
  %164 = call i8* @avio_rb32(i32* %163)
  %165 = load i64, i64* %9, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @av_rescale_q(i64 %165, i32 %170, i32 %168)
  store i64 %171, i64* %10, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = load i64, i64* %8, align 8
  %174 = call i32 @update_frag_index(%struct.TYPE_22__* %172, i64 %173)
  store i32 %174, i32* %22, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call %struct.TYPE_20__* @get_frag_stream_info(%struct.TYPE_17__* %176, i32 %177, i32 %178)
  store %struct.TYPE_20__* %179, %struct.TYPE_20__** %23, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %181 = icmp ne %struct.TYPE_20__* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %162
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %162
  %187 = load i32, i32* %24, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %8, align 8
  %190 = add nsw i64 %189, %188
  store i64 %190, i64* %8, align 8
  %191 = load i32, i32* %25, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %9, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %9, align 8
  br label %195

195:                                              ; preds = %186
  %196 = load i32, i32* %12, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %142

198:                                              ; preds = %142
  %199 = load i64, i64* %9, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  store i64 %199, i64* %201, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 1
  store i64 %199, i64* %203, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  %206 = load i64, i64* %8, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = call i64 @avio_size(i32* %207)
  %209 = icmp eq i64 %206, %208
  br i1 %209, label %210, label %323

210:                                              ; preds = %198
  store i32 0, i32* %12, align 4
  br label %211

211:                                              ; preds = %267, %210
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ult i32 %212, %216
  br i1 %217, label %218, label %270

218:                                              ; preds = %211
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i64 %224
  store %struct.TYPE_21__* %225, %struct.TYPE_21__** %26, align 8
  store i32 0, i32* %13, align 4
  br label %226

226:                                              ; preds = %263, %218
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %228 = icmp eq %struct.TYPE_24__* %227, null
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ult i32 %230, %233
  br label %235

235:                                              ; preds = %229, %226
  %236 = phi i1 [ false, %226 ], [ %234, %229 ]
  br i1 %236, label %237, label %266

237:                                              ; preds = %235
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i64 %242
  store %struct.TYPE_20__* %243, %struct.TYPE_20__** %27, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %237
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %254, i64 %256
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %257, align 8
  store %struct.TYPE_24__* %258, %struct.TYPE_24__** %17, align 8
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %260, align 8
  store %struct.TYPE_19__* %261, %struct.TYPE_19__** %19, align 8
  br label %266

262:                                              ; preds = %237
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %13, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %226

266:                                              ; preds = %249, %235
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %12, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %12, align 4
  br label %211

270:                                              ; preds = %211
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %272 = icmp ne %struct.TYPE_24__* %271, null
  br i1 %272, label %273, label %319

273:                                              ; preds = %270
  store i32 0, i32* %12, align 4
  br label %274

274:                                              ; preds = %315, %273
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ult i32 %275, %280
  br i1 %281, label %282, label %318

282:                                              ; preds = %274
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %286, align 8
  %288 = load i32, i32* %12, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %287, i64 %289
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %290, align 8
  store %struct.TYPE_24__* %291, %struct.TYPE_24__** %16, align 8
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %293, align 8
  store %struct.TYPE_19__* %294, %struct.TYPE_19__** %18, align 8
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %314, label %299

299:                                              ; preds = %282
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i64 @av_rescale(i64 %302, i32 %305, i32 %308)
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 2
  store i64 %309, i64* %311, align 8
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 1
  store i64 %309, i64* %313, align 8
  br label %314

314:                                              ; preds = %299, %282
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %12, align 4
  %317 = add i32 %316, 1
  store i32 %317, i32* %12, align 4
  br label %274

318:                                              ; preds = %274
  br label %319

319:                                              ; preds = %318, %270
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 1
  store i32 1, i32* %322, align 4
  br label %323

323:                                              ; preds = %319, %198
  store i32 0, i32* %4, align 4
  br label %324

324:                                              ; preds = %323, %156, %109, %89, %38
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @av_make_q(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @avio_rb64(i32*) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @update_frag_index(%struct.TYPE_22__*, i64) #1

declare dso_local %struct.TYPE_20__* @get_frag_stream_info(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @avio_size(i32*) #1

declare dso_local i64 @av_rescale(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
