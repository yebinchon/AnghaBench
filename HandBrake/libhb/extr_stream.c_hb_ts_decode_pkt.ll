; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_decode_pkt.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_decode_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_21__, %struct.TYPE_24__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32*, i32, i32, i64, i64, %struct.TYPE_19__, i32, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"packet error bit set\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"adaptation code 0\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid adapt len %d\00", align 1
@TS_HAS_PCR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"continuity error: got %d expected %d\00", align 1
@P = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"missing start code\00", align 1
@V = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_ts_decode_pkt(%struct.TYPE_26__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [8 x i32], align 16
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %26 = call i32 @ts_index_of_video(%struct.TYPE_26__* %25)
  store i32 %26, i32* %10, align 4
  store i32* null, i32** %12, align 8
  %27 = call i32* @hb_buffer_list_clear(i32* %13)
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %39 = call i32* @flush_ts_streams(%struct.TYPE_26__* %38)
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @hb_buffer_list_append(i32* %13, i32* %40)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 31
  %50 = shl i32 %49, 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @index_of_pid(%struct.TYPE_26__* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %60, i32** %5, align 8
  br label %601

61:                                               ; preds = %45
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 128
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @ts_err(%struct.TYPE_26__* %71, i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %74 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %74, i32** %5, align 8
  br label %601

75:                                               ; preds = %61
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 48
  %80 = ashr i32 %79, 4
  store i32 %80, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @ts_err(%struct.TYPE_26__* %84, i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %87 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %87, i32** %5, align 8
  br label %601

88:                                               ; preds = %75
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 184, i32* %17, align 4
  br label %110

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp sgt i32 %100, 184
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %17, align 4
  %106 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @ts_err(%struct.TYPE_26__* %103, i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %107, i32** %5, align 8
  br label %601

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %92
  br label %110

110:                                              ; preds = %109, %91
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %17, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %202

114:                                              ; preds = %111
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 64
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %114
  %122 = load i32, i32* %17, align 4
  %123 = icmp sgt i32 %122, 7
  br i1 %123, label %124, label %201

124:                                              ; preds = %121
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 16
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %201

130:                                              ; preds = %124
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 255
  br i1 %134, label %135, label %160

135:                                              ; preds = %130
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 255
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 7
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 255
  br i1 %144, label %145, label %160

145:                                              ; preds = %140
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 255
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 9
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 255
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 10
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 255
  br i1 %159, label %201, label %160

160:                                              ; preds = %155, %150, %145, %140, %135, %130
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %162 = call i32* @flush_ts_streams(%struct.TYPE_26__* %161)
  store i32* %162, i32** %12, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = call i32 @hb_buffer_list_append(i32* %13, i32* %163)
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 6
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 25
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 7
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 17
  %173 = or i32 %168, %172
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 8
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 9
  %178 = or i32 %173, %177
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 9
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 1
  %183 = or i32 %178, %182
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 10
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 7
  %188 = or i32 %183, %187
  store i32 %188, i32* %18, align 4
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  %192 = load i32, i32* @TS_HAS_PCR, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %18, align 4
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 2
  store i32 %197, i32* %200, align 8
  br label %201

201:                                              ; preds = %160, %155, %124, %121
  br label %202

202:                                              ; preds = %201, %111
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %202
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @TS_HAS_PCR, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %216, i32** %5, align 8
  br label %601

217:                                              ; preds = %208, %202
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i64 %223
  store %struct.TYPE_25__* %224, %struct.TYPE_25__** %19, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 64
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %20, align 4
  %231 = load i32, i32* %16, align 4
  %232 = and i32 %231, 1
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %355

234:                                              ; preds = %217
  %235 = load i32*, i32** %7, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, 15
  store i32 %238, i32* %21, align 4
  %239 = load i32, i32* %21, align 4
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %244, label %276

244:                                              ; preds = %234
  %245 = load i32, i32* %16, align 4
  %246 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  store i32 %245, i32* %246, align 16
  %247 = load i32, i32* %17, align 4
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  store i32 %247, i32* %248, align 4
  %249 = load i32, i32* %17, align 4
  %250 = add nsw i32 %249, 4
  %251 = add nsw i32 %250, 6
  %252 = add nsw i32 %251, 9
  %253 = icmp sle i32 %252, 188
  br i1 %253, label %254, label %263

254:                                              ; preds = %244
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 2
  %256 = load i32*, i32** %7, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 4
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = getelementptr inbounds i32, i32* %260, i64 9
  %262 = call i32 @memcpy(i32* %255, i32* %261, i32 6)
  br label %266

263:                                              ; preds = %244
  %264 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 2
  %265 = call i32 @memset(i32* %264, i32 0, i32 6)
  br label %266

266:                                              ; preds = %263, %254
  %267 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = call i64 @memcmp(i32* %267, i32* %270, i32 8)
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %274, i32** %5, align 8
  br label %601

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275, %234
  %277 = load i32, i32* %20, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %317, label %279

279:                                              ; preds = %276
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, -1
  br i1 %283, label %284, label %317

284:                                              ; preds = %279
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %317, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* %21, align 4
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 1
  %295 = and i32 %294, 15
  %296 = icmp ne i32 %290, %295
  br i1 %296, label %297, label %317

297:                                              ; preds = %289
  %298 = load i32, i32* %21, align 4
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp eq i32 %298, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %297
  %304 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %304, i32** %5, align 8
  br label %601

305:                                              ; preds = %297
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %307 = load i32, i32* %21, align 4
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  %312 = and i32 %311, 15
  %313 = call i32 @ts_warn(%struct.TYPE_26__* %306, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %307, i32 %312)
  %314 = load i32, i32* %21, align 4
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  br label %317

317:                                              ; preds = %305, %289, %284, %279, %276
  %318 = load i32, i32* %21, align 4
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load i32, i32* %16, align 4
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  store i32 %321, i32* %325, align 4
  %326 = load i32, i32* %17, align 4
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  store i32 %326, i32* %330, align 4
  %331 = load i32, i32* %17, align 4
  %332 = add nsw i32 %331, 4
  %333 = add nsw i32 %332, 6
  %334 = add nsw i32 %333, 9
  %335 = icmp sle i32 %334, 188
  br i1 %335, label %336, label %348

336:                                              ; preds = %317
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  %341 = load i32*, i32** %7, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 4
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = getelementptr inbounds i32, i32* %345, i64 9
  %347 = call i32 @memcpy(i32* %340, i32* %346, i32 6)
  br label %354

348:                                              ; preds = %317
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 2
  %353 = call i32 @memset(i32* %352, i32 0, i32 6)
  br label %354

354:                                              ; preds = %348, %336
  br label %355

355:                                              ; preds = %354, %217
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %357 = load i32, i32* %11, align 4
  %358 = call i64 @ts_stream_kind(%struct.TYPE_26__* %356, i32 %357)
  %359 = load i64, i64* @P, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %355
  %362 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %362, i32** %5, align 8
  br label %601

363:                                              ; preds = %355
  %364 = load i32, i32* %20, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %495

366:                                              ; preds = %363
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 8
  %369 = load %struct.TYPE_23__*, %struct.TYPE_23__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %366
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %375 = load i32, i32* %11, align 4
  %376 = call i32* @generate_output_data(%struct.TYPE_26__* %374, i32 %375)
  store i32* %376, i32** %12, align 8
  %377 = load i32*, i32** %12, align 8
  %378 = call i32 @hb_buffer_list_append(i32* %13, i32* %377)
  br label %379

379:                                              ; preds = %373, %366
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %380, i32 0, i32 3
  store i32 0, i32* %381, align 4
  %382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %383 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %382, i32 0, i32 4
  store i64 0, i64* %383, align 8
  %384 = load i32*, i32** %7, align 8
  %385 = load i32, i32* %17, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = getelementptr inbounds i32, i32* %387, i64 4
  store i32* %388, i32** %23, align 8
  %389 = load i32*, i32** %23, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  %391 = load i32, i32* %390, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %403, label %393

393:                                              ; preds = %379
  %394 = load i32*, i32** %23, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 1
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %393
  %399 = load i32*, i32** %23, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 2
  %401 = load i32, i32* %400, align 4
  %402 = icmp ne i32 %401, 1
  br i1 %402, label %403, label %410

403:                                              ; preds = %398, %393, %379
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %405 = load i32, i32* %11, align 4
  %406 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @ts_err(%struct.TYPE_26__* %404, i32 %405, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %407, i32 0, i32 2
  store i32 1, i32* %408, align 8
  %409 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %409, i32** %5, align 8
  br label %601

410:                                              ; preds = %398
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %412 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %411, i32 0, i32 2
  store i32 0, i32* %412, align 8
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* %10, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %494

416:                                              ; preds = %410
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %418, align 8
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %493, label %426

426:                                              ; preds = %416
  %427 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %427, i32 0, i32 3
  %429 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %428, i32 0, i32 3
  %430 = load i64, i64* %429, align 8
  %431 = icmp slt i64 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %426
  %433 = load i32*, i32** %23, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 7
  %435 = load i32, i32* %434, align 4
  %436 = ashr i32 %435, 6
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %432
  %439 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %439, i32** %5, align 8
  br label %601

440:                                              ; preds = %432, %426
  %441 = load i32*, i32** %23, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 7
  %443 = load i32, i32* %442, align 4
  %444 = ashr i32 %443, 6
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %492

446:                                              ; preds = %440
  %447 = load i32*, i32** %23, align 8
  %448 = load i32*, i32** %23, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 7
  %450 = load i32, i32* %449, align 4
  %451 = and i32 %450, 64
  %452 = icmp ne i32 %451, 0
  %453 = zext i1 %452 to i64
  %454 = select i1 %452, i32 14, i32 9
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %447, i64 %455
  %457 = call i32 @pes_timestamp(i32* %456)
  store i32 %457, i32* %24, align 4
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = icmp slt i64 %461, 0
  br i1 %462, label %481, label %463

463:                                              ; preds = %446
  %464 = load i32, i32* %24, align 4
  %465 = sext i32 %464 to i64
  %466 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 3
  %469 = load i64, i64* %468, align 8
  %470 = sub nsw i64 %465, %469
  %471 = icmp sgt i64 %470, 54000
  br i1 %471, label %481, label %472

472:                                              ; preds = %463
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %473, i32 0, i32 3
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 3
  %476 = load i64, i64* %475, align 8
  %477 = load i32, i32* %24, align 4
  %478 = sext i32 %477 to i64
  %479 = sub nsw i64 %476, %478
  %480 = icmp sgt i64 %479, 54000
  br i1 %480, label %481, label %486

481:                                              ; preds = %472, %463, %446
  %482 = load i32, i32* %24, align 4
  %483 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %483, i32 0, i32 3
  %485 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %484, i32 0, i32 2
  store i32 %482, i32* %485, align 8
  br label %486

486:                                              ; preds = %481, %472
  %487 = load i32, i32* %24, align 4
  %488 = sext i32 %487 to i64
  %489 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %489, i32 0, i32 3
  %491 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %490, i32 0, i32 3
  store i64 %488, i64* %491, align 8
  br label %492

492:                                              ; preds = %486, %440
  br label %493

493:                                              ; preds = %492, %416
  br label %494

494:                                              ; preds = %493, %410
  br label %495

495:                                              ; preds = %494, %363
  %496 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %497 = load i32, i32* %11, align 4
  %498 = load i32*, i32** %7, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 4
  %500 = load i32, i32* %17, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  %503 = load i32, i32* %17, align 4
  %504 = sub nsw i32 184, %503
  %505 = call i32 @hb_ts_stream_append_pkt(%struct.TYPE_26__* %496, i32 %497, i32* %502, i32 %504)
  %506 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %534

510:                                              ; preds = %495
  %511 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 0
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %513, align 8
  %515 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %516 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %515, i32 0, i32 5
  %517 = load i64, i64* %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %514, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* @V, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %534

523:                                              ; preds = %510
  %524 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %528 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %527, i32 0, i32 8
  %529 = load %struct.TYPE_23__*, %struct.TYPE_23__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %530, i32 0, i32 0
  store i32 %526, i32* %531, align 4
  %532 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %532, i32 0, i32 0
  store i32 0, i32* %533, align 8
  br label %534

534:                                              ; preds = %523, %510, %495
  %535 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %536 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %572, label %539

539:                                              ; preds = %534
  %540 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %541 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %540, i32 0, i32 8
  %542 = load %struct.TYPE_23__*, %struct.TYPE_23__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = icmp sge i32 %544, 19
  br i1 %545, label %546, label %572

546:                                              ; preds = %539
  %547 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %548 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %549 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %548, i32 0, i32 8
  %550 = load %struct.TYPE_23__*, %struct.TYPE_23__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %554 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %553, i32 0, i32 8
  %555 = load %struct.TYPE_23__*, %struct.TYPE_23__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 6
  %560 = call i64 @hb_parse_ps(%struct.TYPE_26__* %547, i32 %552, i32 %557, %struct.TYPE_19__* %559)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %571

562:                                              ; preds = %546
  %563 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %564 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %563, i32 0, i32 3
  store i32 1, i32* %564, align 4
  %565 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %566 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %565, i32 0, i32 6
  %567 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 8
  %569 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %570 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %569, i32 0, i32 7
  store i32 %568, i32* %570, align 8
  br label %571

571:                                              ; preds = %562, %546
  br label %572

572:                                              ; preds = %571, %539, %534
  %573 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %574 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %573, i32 0, i32 3
  %575 = load i32, i32* %574, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %599

577:                                              ; preds = %572
  %578 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %579 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %578, i32 0, i32 6
  %580 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = icmp sgt i64 %581, 0
  br i1 %582, label %583, label %599

583:                                              ; preds = %577
  %584 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %585 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %584, i32 0, i32 4
  %586 = load i64, i64* %585, align 8
  %587 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %587, i32 0, i32 6
  %589 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %588, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = add nsw i64 %590, 6
  %592 = icmp sge i64 %586, %591
  br i1 %592, label %593, label %599

593:                                              ; preds = %583
  %594 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %595 = load i32, i32* %11, align 4
  %596 = call i32* @generate_output_data(%struct.TYPE_26__* %594, i32 %595)
  store i32* %596, i32** %12, align 8
  %597 = load i32*, i32** %12, align 8
  %598 = call i32 @hb_buffer_list_append(i32* %13, i32* %597)
  br label %599

599:                                              ; preds = %593, %583, %577, %572
  %600 = call i32* @hb_buffer_list_clear(i32* %13)
  store i32* %600, i32** %5, align 8
  br label %601

601:                                              ; preds = %599, %438, %403, %361, %303, %273, %215, %102, %83, %70, %59
  %602 = load i32*, i32** %5, align 8
  ret i32* %602
}

declare dso_local i32 @ts_index_of_video(%struct.TYPE_26__*) #1

declare dso_local i32* @hb_buffer_list_clear(i32*) #1

declare dso_local i32* @flush_ts_streams(%struct.TYPE_26__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, i32*) #1

declare dso_local i32 @index_of_pid(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ts_err(%struct.TYPE_26__*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ts_warn(%struct.TYPE_26__*, i8*, i32, i32) #1

declare dso_local i64 @ts_stream_kind(%struct.TYPE_26__*, i32) #1

declare dso_local i32* @generate_output_data(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @pes_timestamp(i32*) #1

declare dso_local i32 @hb_ts_stream_append_pkt(%struct.TYPE_26__*, i32, i32*, i32) #1

declare dso_local i64 @hb_parse_ps(%struct.TYPE_26__*, i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
