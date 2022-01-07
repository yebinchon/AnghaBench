; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_dash_flush.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_dash_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_25__**, i32, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i32, i8*, i32, i32, i64, i64, i64, i64, %struct.TYPE_23__*, i64, i64, i32, i64 }
%struct.TYPE_23__ = type { i32, i64, i64, i64, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_22__**, i32, %struct.TYPE_20__*, i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@SEGMENT_TYPE_MP4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Representation %d media segment %d written to: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32, i32)* @dash_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dash_flush(%struct.TYPE_26__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %8, align 8
  store i32 0, i32* %10, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @avio_find_protocol_name(i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %39, %3
  %45 = phi i1 [ false, %3 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %130

49:                                               ; preds = %44
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 12
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %129

62:                                               ; preds = %49
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %129, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %129

72:                                               ; preds = %67
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %72
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %83
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %102, %110
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %114, i64 %116
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %122 = call i32 @av_rescale_q(i64 %111, i32 %120, i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %123, %126
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %94, %83, %72, %67, %62, %49
  br label %130

130:                                              ; preds = %129, %44
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %370, %130
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %373

137:                                              ; preds = %131
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i64 %142
  store %struct.TYPE_23__* %143, %struct.TYPE_23__** %16, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %146, i64 %148
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %149, align 8
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %17, align 8
  store i32 0, i32* %19, align 4
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 19
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %137
  br label %370

156:                                              ; preds = %137
  %157 = load i32, i32* %7, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %191

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %191

163:                                              ; preds = %159
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %166, i64 %168
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %163
  br label %370

178:                                              ; preds = %163
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %370

190:                                              ; preds = %183, %178
  br label %191

191:                                              ; preds = %190, %159, %156
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 9
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SEGMENT_TYPE_MP4, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %196
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 21
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %202
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 13
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @write_styp(i32 %212)
  br label %214

214:                                              ; preds = %207, %202, %196
  br label %226

215:                                              ; preds = %191
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 15
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 20
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @snprintf(i32 %218, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %221, i32 %224)
  br label %226

226:                                              ; preds = %215, %214
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %229 = call i32 @flush_dynbuf(%struct.TYPE_24__* %227, %struct.TYPE_23__* %228, i32* %18)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %373

233:                                              ; preds = %226
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 19
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 9
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %233
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 15
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @find_index_range(%struct.TYPE_26__* %241, i32 %244, i32 %247, i32* %19)
  br label %272

249:                                              ; preds = %233
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 18
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 17
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @dashenc_io_close(%struct.TYPE_26__* %250, i32* %252, i32 %255)
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %249
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 17
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 15
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @avpriv_io_move(i32 %262, i32 %265)
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  br label %373

270:                                              ; preds = %259
  br label %271

271:                                              ; preds = %270, %249
  br label %272

272:                                              ; preds = %271, %240
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %301, label %277

277:                                              ; preds = %272
  %278 = load i32, i32* %18, align 4
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 %278, %281
  %283 = mul nsw i32 %282, 8
  %284 = load i32, i32* @AV_TIME_BASE, align 4
  %285 = mul nsw i32 %283, %284
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 7
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 8
  %291 = load i64, i64* %290, align 8
  %292 = sub nsw i64 %288, %291
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %297 = call i32 @av_rescale_q(i64 %292, i32 %295, i32 %296)
  %298 = sdiv i32 %285, %297
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 5
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %277, %272
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 6
  store i32 0, i32* %303, align 8
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 9
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %333, label %308

308:                                              ; preds = %301
  %309 = load i32, i32* %18, align 4
  %310 = mul nsw i32 %309, 8
  %311 = load i32, i32* @AV_TIME_BASE, align 4
  %312 = mul nsw i32 %310, %311
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 7
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 8
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %315, %318
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %324 = call i32 @av_rescale_q(i64 %319, i32 %322, i32 %323)
  %325 = sdiv i32 %312, %324
  store i32 %325, i32* %20, align 4
  %326 = load i32, i32* %20, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %308
  %329 = load i32, i32* %20, align 4
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 9
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %328, %308
  br label %333

333:                                              ; preds = %332, %301
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 16
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 8
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 7
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 8
  %346 = load i64, i64* %345, align 8
  %347 = sub nsw i64 %343, %346
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* %18, align 4
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %14, align 4
  %354 = call i32 @add_segment(%struct.TYPE_23__* %334, i32 %337, i64 %340, i64 %347, i32 %350, i32 %351, i32 %352, i32 %353)
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %356 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %357 = load i32, i32* %9, align 4
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 15
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @av_log(%struct.TYPE_26__* %355, i32 %356, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %357, i32 %360, i32 %363)
  %365 = load i32, i32* %18, align 4
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %333, %189, %177, %155
  %371 = load i32, i32* %9, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %9, align 4
  br label %131

373:                                              ; preds = %269, %232, %131
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %415

378:                                              ; preds = %373
  store i32 0, i32* %9, align 4
  br label %379

379:                                              ; preds = %411, %378
  %380 = load i32, i32* %9, align 4
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %385, label %414

385:                                              ; preds = %379
  %386 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %386, i32 0, i32 8
  %388 = load %struct.TYPE_23__*, %struct.TYPE_23__** %387, align 8
  %389 = load i32, i32* %9, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i64 %390
  store %struct.TYPE_23__* %391, %struct.TYPE_23__** %21, align 8
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 10
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = sub nsw i32 %394, %397
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = sub nsw i32 %398, %401
  store i32 %402, i32* %22, align 4
  %403 = load i32, i32* %22, align 4
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %385
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %408 = load i32, i32* %22, align 4
  %409 = call i32 @dashenc_delete_media_segments(%struct.TYPE_26__* %406, %struct.TYPE_23__* %407, i32 %408)
  br label %410

410:                                              ; preds = %405, %385
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %9, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %9, align 4
  br label %379

414:                                              ; preds = %379
  br label %415

415:                                              ; preds = %414, %373
  %416 = load i32, i32* %6, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %516

418:                                              ; preds = %415
  store i32 0, i32* %9, align 4
  br label %419

419:                                              ; preds = %512, %418
  %420 = load i32, i32* %9, align 4
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = icmp slt i32 %420, %423
  br i1 %424, label %425, label %515

425:                                              ; preds = %419
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 8
  %428 = load %struct.TYPE_23__*, %struct.TYPE_23__** %427, align 8
  %429 = load i32, i32* %9, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i64 %430
  store %struct.TYPE_23__* %431, %struct.TYPE_23__** %23, align 8
  %432 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 13
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %433, align 8
  %435 = icmp ne %struct.TYPE_20__* %434, null
  br i1 %435, label %436, label %511

436:                                              ; preds = %425
  %437 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %438 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %437, i32 0, i32 14
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %511

441:                                              ; preds = %436
  %442 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %442, i32 0, i32 13
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @avio_tell(i32 %446)
  store i32 %447, i32* %24, align 4
  %448 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %449 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %448, i32 0, i32 13
  %450 = load %struct.TYPE_20__*, %struct.TYPE_20__** %449, align 8
  %451 = call i32 @av_write_trailer(%struct.TYPE_20__* %450)
  %452 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %453 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %452, i32 0, i32 7
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %510

456:                                              ; preds = %441
  %457 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %458 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %457, i32 0, i32 13
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @avio_tell(i32 %461)
  %463 = load i32, i32* %24, align 4
  %464 = sub nsw i32 %462, %463
  store i32 %464, i32* %28, align 4
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %467 = call i32 @get_start_index_number(%struct.TYPE_23__* %465, %struct.TYPE_24__* %466, i32* %26, i32* %27)
  %468 = load i32, i32* %26, align 4
  %469 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %470 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %469, i32 0, i32 10
  %471 = load i32, i32* %470, align 4
  %472 = icmp sge i32 %468, %471
  br i1 %472, label %479, label %473

473:                                              ; preds = %456
  %474 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %475 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %474, i32 0, i32 3
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @SEGMENT_TYPE_MP4, align 8
  %478 = icmp ne i64 %476, %477
  br i1 %478, label %479, label %480

479:                                              ; preds = %473, %456
  br label %512

480:                                              ; preds = %473
  %481 = load i32, i32* %28, align 4
  %482 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %483 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %482, i32 0, i32 12
  %484 = load i32, i32* %483, align 8
  %485 = add nsw i32 %484, %481
  store i32 %485, i32* %483, align 8
  %486 = load i32, i32* %26, align 4
  store i32 %486, i32* %25, align 4
  br label %487

487:                                              ; preds = %506, %480
  %488 = load i32, i32* %25, align 4
  %489 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %490 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %489, i32 0, i32 10
  %491 = load i32, i32* %490, align 4
  %492 = icmp slt i32 %488, %491
  br i1 %492, label %493, label %509

493:                                              ; preds = %487
  %494 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %495 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i32 0, i32 11
  %496 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %495, align 8
  %497 = load i32, i32* %25, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %496, i64 %498
  %500 = load %struct.TYPE_22__*, %struct.TYPE_22__** %499, align 8
  store %struct.TYPE_22__* %500, %struct.TYPE_22__** %29, align 8
  %501 = load i32, i32* %28, align 4
  %502 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %503 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = add nsw i32 %504, %501
  store i32 %505, i32* %503, align 4
  br label %506

506:                                              ; preds = %493
  %507 = load i32, i32* %25, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %25, align 4
  br label %487

509:                                              ; preds = %487
  br label %510

510:                                              ; preds = %509, %441
  br label %511

511:                                              ; preds = %510, %436, %425
  br label %512

512:                                              ; preds = %511, %479
  %513 = load i32, i32* %9, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %9, align 4
  br label %419

515:                                              ; preds = %419
  br label %516

516:                                              ; preds = %515, %415
  %517 = load i32, i32* %10, align 4
  %518 = icmp sge i32 %517, 0
  br i1 %518, label %519, label %548

519:                                              ; preds = %516
  %520 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %520, i32 0, i32 6
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %544

524:                                              ; preds = %519
  %525 = load i32, i32* %6, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %544, label %527

527:                                              ; preds = %524
  %528 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %529 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %528, i32 0, i32 4
  %530 = load i64, i64* %529, align 8
  %531 = add nsw i64 %530, 1
  store i64 %531, i64* %529, align 8
  %532 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %533 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %532, i32 0, i32 4
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %536 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %535, i32 0, i32 5
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %534, %537
  br i1 %538, label %539, label %541

539:                                              ; preds = %527
  %540 = load i32, i32* %10, align 4
  store i32 %540, i32* %4, align 4
  br label %550

541:                                              ; preds = %527
  %542 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %543 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %542, i32 0, i32 4
  store i64 0, i64* %543, align 8
  br label %544

544:                                              ; preds = %541, %524, %519
  %545 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %546 = load i32, i32* %6, align 4
  %547 = call i32 @write_manifest(%struct.TYPE_26__* %545, i32 %546)
  store i32 %547, i32* %10, align 4
  br label %548

548:                                              ; preds = %544, %516
  %549 = load i32, i32* %10, align 4
  store i32 %549, i32* %4, align 4
  br label %550

550:                                              ; preds = %548, %539
  %551 = load i32, i32* %4, align 4
  ret i32 %551
}

declare dso_local i8* @avio_find_protocol_name(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @write_styp(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @flush_dynbuf(%struct.TYPE_24__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @find_index_range(%struct.TYPE_26__*, i32, i32, i32*) #1

declare dso_local i32 @dashenc_io_close(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @avpriv_io_move(i32, i32) #1

declare dso_local i32 @add_segment(%struct.TYPE_23__*, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dashenc_delete_media_segments(%struct.TYPE_26__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_20__*) #1

declare dso_local i32 @get_start_index_number(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @write_manifest(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
