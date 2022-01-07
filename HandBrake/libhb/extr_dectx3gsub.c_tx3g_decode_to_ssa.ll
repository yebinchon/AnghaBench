; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dectx3gsub.c_tx3g_decode_to_ssa.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dectx3gsub.c_tx3g_decode_to_ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [61 x i8] c"dectx3gsub: TextSampleModifierBox has unsupported large size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"dectx3gsub: TextSampleModifierBox has unsupported extended type\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"styl\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"dectx3gsub: found additional StyleBoxes on subtitle; skipping\00", align 1
@SSA_PREAMBLE_LEN = common dso_local global i32 0, align 4
@MAX_MARKUP_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"%d,,Default,,0,0,0,,\00", align 1
@HB_FRAME_SUBTITLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, %struct.TYPE_15__*)* @tx3g_decode_to_ssa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @tx3g_decode_to_ssa(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8* %31, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  %32 = call i8* (...) @READ_U16()
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i8* @READ_ARRAY(i32 %34)
  store i8* %35, i8** %11, align 8
  br label %36

36:                                               ; preds = %135, %72, %2
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %136

40:                                               ; preds = %36
  %41 = call i8* (...) @READ_U32()
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @hb_log(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %136

57:                                               ; preds = %52
  %58 = call i8* (...) @READ_U32()
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @FOURCC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @hb_log(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %136

65:                                               ; preds = %57
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @FOURCC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %132

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = call i32 @hb_log(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @SKIP_ARRAY(i32 %74)
  br label %36

76:                                               ; preds = %69
  %77 = call i8* (...) @READ_U16()
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = call %struct.TYPE_16__* @calloc(i32 %82, i32 40)
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %9, align 8
  br label %84

84:                                               ; preds = %81, %76
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %128, %84
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  %90 = call i8* (...) @READ_U16()
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 8
  %97 = call i8* (...) @READ_U16()
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 4
  %104 = call i8* (...) @READ_U16()
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 5
  store i8* %104, i8** %109, align 8
  %110 = call i8* (...) @READ_U8()
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  store i8* %110, i8** %115, align 8
  %116 = call i8* (...) @READ_U8()
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  store i8* %116, i8** %121, align 8
  %122 = call i8* (...) @READ_U32()
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  store i8* %122, i8** %127, align 8
  br label %128

128:                                              ; preds = %89
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %85

131:                                              ; preds = %85
  br label %135

132:                                              ; preds = %65
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @SKIP_ARRAY(i32 %133)
  br label %135

135:                                              ; preds = %132, %131
  br label %36

136:                                              ; preds = %63, %55, %36
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @SSA_PREAMBLE_LEN, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @MAX_MARKUP_LEN, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call %struct.TYPE_15__* @hb_buffer_init(i32 %144)
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %16, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %147 = icmp eq %struct.TYPE_15__* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %304

149:                                              ; preds = %136
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %153 = load i8*, i8** %17, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @sprintf(i8* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  %158 = load i8*, i8** %17, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = load i8*, i8** %17, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %17, align 8
  %163 = load i8*, i8** %17, align 8
  store i8* %163, i8** %18, align 8
  %164 = load i8*, i8** %11, align 8
  store i8* %164, i8** %6, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8* %168, i8** %7, align 8
  br label %169

169:                                              ; preds = %254, %149
  %170 = load i8*, i8** %6, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = icmp ult i8* %170, %171
  br i1 %172, label %173, label %257

173:                                              ; preds = %169
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = call i64 @IS_10xxxxxx(i8 signext %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i8*, i8** %6, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @WRITE_CHAR(i8 signext %180)
  br label %254

182:                                              ; preds = %173
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %239

186:                                              ; preds = %182
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %19, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %219

195:                                              ; preds = %186
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  %198 = load i32, i32* %8, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %210, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %19, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %200, %195
  %211 = load i8*, i8** %17, align 8
  %212 = call i32 @write_ssa_markup(i8* %211, %struct.TYPE_16__* null)
  %213 = load i8*, i8** %17, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %17, align 8
  br label %216

216:                                              ; preds = %210, %200
  %217 = load i32, i32* %20, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %20, align 4
  br label %219

219:                                              ; preds = %216, %186
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %221 = load i32, i32* %20, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %19, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %219
  %229 = load i8*, i8** %17, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %231 = load i32, i32* %20, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i64 %232
  %234 = call i32 @write_ssa_markup(i8* %229, %struct.TYPE_16__* %233)
  %235 = load i8*, i8** %17, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %17, align 8
  br label %238

238:                                              ; preds = %228, %219
  br label %239

239:                                              ; preds = %238, %182
  %240 = load i8*, i8** %6, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 10
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = call i32 @WRITE_CHAR(i8 signext 92)
  %246 = call i32 @WRITE_CHAR(i8 signext 78)
  br label %251

247:                                              ; preds = %239
  %248 = load i8*, i8** %6, align 8
  %249 = load i8, i8* %248, align 1
  %250 = call i32 @WRITE_CHAR(i8 signext %249)
  br label %251

251:                                              ; preds = %247, %244
  %252 = load i32, i32* %19, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %19, align 4
  br label %254

254:                                              ; preds = %251, %178
  %255 = load i8*, i8** %6, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %6, align 8
  br label %169

257:                                              ; preds = %169
  %258 = load i8*, i8** %18, align 8
  %259 = load i8*, i8** %17, align 8
  %260 = icmp eq i8* %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %263 = call i32 @free(%struct.TYPE_16__* %262)
  %264 = call i32 @hb_buffer_close(%struct.TYPE_15__** %16)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %308

265:                                              ; preds = %257
  %266 = load i8*, i8** %17, align 8
  store i8 0, i8* %266, align 1
  %267 = load i8*, i8** %17, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %17, align 8
  %269 = load i8*, i8** %17, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = ptrtoint i8* %269 to i64
  %274 = ptrtoint i8* %272 to i64
  %275 = sub i64 %273, %274
  %276 = trunc i64 %275 to i32
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* @HB_FRAME_SUBTITLE, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 3
  store i32 %279, i32* %282, align 4
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  store i32 %286, i32* %289, align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  store i32 %293, i32* %296, align 4
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  store i32 %300, i32* %303, align 4
  br label %304

304:                                              ; preds = %265, %148
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %306 = call i32 @free(%struct.TYPE_16__* %305)
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %307, %struct.TYPE_15__** %3, align 8
  br label %308

308:                                              ; preds = %304, %261
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %309
}

declare dso_local i8* @READ_U16(...) #1

declare dso_local i8* @READ_ARRAY(i32) #1

declare dso_local i8* @READ_U32(...) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @FOURCC(i8*) #1

declare dso_local i32 @SKIP_ARRAY(i32) #1

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i8* @READ_U8(...) #1

declare dso_local %struct.TYPE_15__* @hb_buffer_init(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_10xxxxxx(i8 signext) #1

declare dso_local i32 @WRITE_CHAR(i8 signext) #1

declare dso_local i32 @write_ssa_markup(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
