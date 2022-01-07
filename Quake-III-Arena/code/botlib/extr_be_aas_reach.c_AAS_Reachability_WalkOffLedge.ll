; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WalkOffLedge.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WalkOffLedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32**, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32*, i32*, %struct.TYPE_17__*, i64, i32, i64 }
%struct.TYPE_15__ = type { i32*, i64 }

@aasworld = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@FACE_GROUND = common dso_local global i32 0, align 4
@AREA_GROUNDED = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@FACE_SOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@AREACONTENTS_SLIME = common dso_local global i32 0, align 4
@AREACONTENTS_LAVA = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TRAVEL_WALKOFFLEDGE = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_17__** null, align 8
@reach_walkoffledge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_Reachability_WalkOffLedge(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca %struct.TYPE_18__*, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca %struct.TYPE_19__*, align 8
  %28 = alloca %struct.TYPE_16__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.TYPE_17__*, align 8
  %36 = alloca %struct.TYPE_15__, align 8
  %37 = alloca %struct.TYPE_15__, align 8
  store i32 %0, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @AAS_AreaGrounded(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @AAS_AreaSwim(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %1
  br label %542

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 7), align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i64 %49
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %22, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %539, %46
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %542

57:                                               ; preds = %51
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 0), align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 6), align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @abs(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i64 %69
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %24, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FACE_GROUND, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %57
  br label %539

78:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %535, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %538

85:                                               ; preds = %79
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 1), align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %531, %85
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %534

101:                                              ; preds = %95
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 0), align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %13, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 6), align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i64 @abs(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i64 %113
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %25, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FACE_GROUND, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %101
  br label %531

122:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %527, %122
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %530

129:                                              ; preds = %123
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 1), align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @abs(i32 %139)
  %141 = load i32, i32* %16, align 4
  %142 = call i64 @abs(i32 %141)
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %526

144:                                              ; preds = %129
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %2, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %18, align 4
  br label %158

154:                                              ; preds = %144
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %154, %150
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 7), align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i64 %161
  store %struct.TYPE_20__* %162, %struct.TYPE_20__** %23, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 2), align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AREA_GROUNDED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %262

172:                                              ; preds = %158
  %173 = load i32, i32* @qfalse, align 4
  store i32 %173, i32* %19, align 4
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %254, %172
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %257

180:                                              ; preds = %174
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 0), align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %181, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i64 @abs(i32 %190)
  %192 = load i32, i32* %13, align 4
  %193 = call i64 @abs(i32 %192)
  %194 = icmp eq i64 %191, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %180
  br label %254

196:                                              ; preds = %180
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 6), align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i64 @abs(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i64 %199
  store %struct.TYPE_18__* %200, %struct.TYPE_18__** %26, align 8
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %243, %196
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %246

207:                                              ; preds = %201
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 1), align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %17, align 4
  %218 = call i64 @abs(i32 %217)
  %219 = load i32, i32* %15, align 4
  %220 = call i64 @abs(i32 %219)
  %221 = icmp eq i64 %218, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %207
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @FACE_SOLID, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %222
  %230 = load i32, i32* @qtrue, align 4
  store i32 %230, i32* %19, align 4
  br label %246

231:                                              ; preds = %222
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @FACE_GROUND, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %231
  %239 = load i32, i32* @qfalse, align 4
  store i32 %239, i32* %19, align 4
  br label %246

240:                                              ; preds = %231
  %241 = load i32, i32* @qtrue, align 4
  store i32 %241, i32* %19, align 4
  br label %246

242:                                              ; preds = %207
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %201

246:                                              ; preds = %240, %238, %229, %201
  %247 = load i32, i32* %7, align 4
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %257

253:                                              ; preds = %246
  br label %254

254:                                              ; preds = %253, %195
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %174

257:                                              ; preds = %252, %174
  %258 = load i32, i32* %19, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  br label %530

261:                                              ; preds = %257
  br label %262

262:                                              ; preds = %261, %158
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 5), align 8
  %264 = load i32, i32* %15, align 4
  %265 = call i64 @abs(i32 %264)
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i64 %265
  store %struct.TYPE_19__* %266, %struct.TYPE_19__** %27, align 8
  %267 = load i32, i32* %15, align 4
  %268 = icmp slt i32 %267, 0
  %269 = zext i1 %268 to i32
  store i32 %269, i32* %21, align 4
  %270 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 4), align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = load i32, i32* %21, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32*, i32** %270, i64 %277
  %279 = load i32*, i32** %278, align 8
  store i32* %279, i32** %29, align 8
  %280 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 4), align 8
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %21, align 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %283, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds i32*, i32** %280, i64 %290
  %292 = load i32*, i32** %291, align 8
  store i32* %292, i32** %30, align 8
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 3), align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i64 %296
  store %struct.TYPE_16__* %297, %struct.TYPE_16__** %28, align 8
  %298 = load i32*, i32** %30, align 8
  %299 = load i32*, i32** %29, align 8
  %300 = load i32*, i32** %31, align 8
  %301 = call i32 @VectorSubtract(i32* %298, i32* %299, i32* %300)
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %31, align 8
  %306 = load i32*, i32** %33, align 8
  %307 = call i32 @CrossProduct(i32 %304, i32* %305, i32* %306)
  %308 = load i32*, i32** %33, align 8
  %309 = call i32 @VectorNormalize(i32* %308)
  %310 = load i32*, i32** %29, align 8
  %311 = load i32*, i32** %30, align 8
  %312 = load i32*, i32** %32, align 8
  %313 = call i32 @VectorAdd(i32* %310, i32* %311, i32* %312)
  %314 = load i32*, i32** %32, align 8
  %315 = load i32*, i32** %32, align 8
  %316 = call i32 @VectorScale(i32* %314, double 5.000000e-01, i32* %315)
  %317 = load i32*, i32** %32, align 8
  %318 = load i32*, i32** %33, align 8
  %319 = load i32*, i32** %32, align 8
  %320 = call i32 @VectorMA(i32* %317, i32 8, i32* %318, i32* %319)
  %321 = load i32*, i32** %32, align 8
  %322 = load i32*, i32** %34, align 8
  %323 = call i32 @VectorCopy(i32* %321, i32* %322)
  %324 = load i32*, i32** %34, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 2
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %326, 1000
  store i32 %327, i32* %325, align 4
  %328 = load i32*, i32** %32, align 8
  %329 = load i32*, i32** %34, align 8
  %330 = load i32, i32* @PRESENCE_CROUCH, align 4
  %331 = call { i32*, i64 } @AAS_TraceClientBBox(i32* %328, i32* %329, i32 %330, i32 -1)
  %332 = bitcast %struct.TYPE_15__* %37 to { i32*, i64 }*
  %333 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %332, i32 0, i32 0
  %334 = extractvalue { i32*, i64 } %331, 0
  store i32* %334, i32** %333, align 8
  %335 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %332, i32 0, i32 1
  %336 = extractvalue { i32*, i64 } %331, 1
  store i64 %336, i64* %335, align 8
  %337 = bitcast %struct.TYPE_15__* %36 to i8*
  %338 = bitcast %struct.TYPE_15__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %337, i8* align 8 %338, i64 16, i1 false)
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %262
  br label %530

343:                                              ; preds = %262
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @AAS_PointAreaNum(i32* %345)
  store i32 %346, i32* %20, align 4
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* %2, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %343
  br label %530

351:                                              ; preds = %343
  %352 = load i32, i32* %2, align 4
  %353 = load i32, i32* %20, align 4
  %354 = call i64 @AAS_ReachabilityExists(i32 %352, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %351
  br label %530

357:                                              ; preds = %351
  %358 = load i32, i32* %20, align 4
  %359 = call i32 @AAS_AreaGrounded(i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %366, label %361

361:                                              ; preds = %357
  %362 = load i32, i32* %20, align 4
  %363 = call i64 @AAS_AreaSwim(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %361
  br label %530

366:                                              ; preds = %361, %357
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 2), align 8
  %368 = load i32, i32* %20, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @AREACONTENTS_SLIME, align 4
  %374 = load i32, i32* @AREACONTENTS_LAVA, align 4
  %375 = or i32 %373, %374
  %376 = and i32 %372, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %366
  br label %530

379:                                              ; preds = %366
  %380 = load i32*, i32** %32, align 8
  %381 = load i32*, i32** %34, align 8
  %382 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %383 = call i32 @AAS_TraceAreas(i32* %380, i32* %381, i32* %382, i32* null, i32 10)
  store i32 %383, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %384

384:                                              ; preds = %397, %379
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* %11, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %400

388:                                              ; preds = %384
  %389 = load i32, i32* %9, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = call i64 @AAS_AreaClusterPortal(i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %388
  br label %400

396:                                              ; preds = %388
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %9, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %9, align 4
  br label %384

400:                                              ; preds = %395, %384
  %401 = load i32, i32* %9, align 4
  %402 = load i32, i32* %11, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  br label %530

405:                                              ; preds = %400
  %406 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 0), align 8
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %421

408:                                              ; preds = %405
  %409 = load i32*, i32** %32, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  %411 = load i32, i32* %410, align 4
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 2
  %415 = load i32, i32* %414, align 4
  %416 = sub nsw i32 %411, %415
  %417 = call i32 @fabs(i32 %416)
  %418 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 0), align 8
  %419 = icmp sgt i32 %417, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %408
  br label %530

421:                                              ; preds = %408, %405
  %422 = call %struct.TYPE_17__* (...) @AAS_AllocReachability()
  store %struct.TYPE_17__* %422, %struct.TYPE_17__** %35, align 8
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %424 = icmp ne %struct.TYPE_17__* %423, null
  br i1 %424, label %426, label %425

425:                                              ; preds = %421
  br label %530

426:                                              ; preds = %421
  %427 = load i32, i32* %20, align 4
  %428 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 0
  store i32 %427, i32* %429, align 8
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 7
  store i64 0, i64* %431, align 8
  %432 = load i32, i32* %15, align 4
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 1
  store i32 %432, i32* %434, align 4
  %435 = load i32*, i32** %32, align 8
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 2
  %438 = load i32*, i32** %437, align 8
  %439 = call i32 @VectorCopy(i32* %435, i32* %438)
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %443 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %442, i32 0, i32 3
  %444 = load i32*, i32** %443, align 8
  %445 = call i32 @VectorCopy(i32* %441, i32* %444)
  %446 = load i32, i32* @TRAVEL_WALKOFFLEDGE, align 4
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %448 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %447, i32 0, i32 6
  store i32 %446, i32* %448, align 8
  %449 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 6), align 8
  %450 = load i32*, i32** %32, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 2
  %452 = load i32, i32* %451, align 4
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 2
  %456 = load i32, i32* %455, align 4
  %457 = sub nsw i32 %452, %456
  %458 = call i32 @fabs(i32 %457)
  %459 = mul nsw i32 %458, 50
  %460 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 1), align 4
  %461 = sdiv i32 %459, %460
  %462 = sext i32 %461 to i64
  %463 = add nsw i64 %449, %462
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 5
  store i64 %463, i64* %465, align 8
  %466 = load i32, i32* %20, align 4
  %467 = call i64 @AAS_AreaSwim(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %511, label %469

469:                                              ; preds = %426
  %470 = load i32, i32* %20, align 4
  %471 = call i32 @AAS_AreaJumpPad(i32 %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %511, label %473

473:                                              ; preds = %469
  %474 = load i32*, i32** %32, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 2
  %476 = load i32, i32* %475, align 4
  %477 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %478 = load i32*, i32** %477, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 2
  %480 = load i32, i32* %479, align 4
  %481 = sub nsw i32 %476, %480
  %482 = call i64 @AAS_FallDelta(i32 %481)
  %483 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 2), align 8
  %484 = icmp sgt i64 %482, %483
  br i1 %484, label %485, label %491

485:                                              ; preds = %473
  %486 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 5), align 8
  %487 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %488 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %487, i32 0, i32 5
  %489 = load i64, i64* %488, align 8
  %490 = add nsw i64 %489, %486
  store i64 %490, i64* %488, align 8
  br label %510

491:                                              ; preds = %473
  %492 = load i32*, i32** %32, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 2
  %494 = load i32, i32* %493, align 4
  %495 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 2
  %498 = load i32, i32* %497, align 4
  %499 = sub nsw i32 %494, %498
  %500 = call i64 @AAS_FallDelta(i32 %499)
  %501 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 3), align 8
  %502 = icmp sgt i64 %500, %501
  br i1 %502, label %503, label %509

503:                                              ; preds = %491
  %504 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 4), align 8
  %505 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %506 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %505, i32 0, i32 5
  %507 = load i64, i64* %506, align 8
  %508 = add nsw i64 %507, %504
  store i64 %508, i64* %506, align 8
  br label %509

509:                                              ; preds = %503, %491
  br label %510

510:                                              ; preds = %509, %485
  br label %511

511:                                              ; preds = %510, %469, %426
  %512 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @areareachability, align 8
  %513 = load i32, i32* %2, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %512, i64 %514
  %516 = load %struct.TYPE_17__*, %struct.TYPE_17__** %515, align 8
  %517 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %518 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %517, i32 0, i32 4
  store %struct.TYPE_17__* %516, %struct.TYPE_17__** %518, align 8
  %519 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %520 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @areareachability, align 8
  %521 = load i32, i32* %2, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %520, i64 %522
  store %struct.TYPE_17__* %519, %struct.TYPE_17__** %523, align 8
  %524 = load i32, i32* @reach_walkoffledge, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* @reach_walkoffledge, align 4
  br label %526

526:                                              ; preds = %511, %129
  br label %527

527:                                              ; preds = %526
  %528 = load i32, i32* %6, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %6, align 4
  br label %123

530:                                              ; preds = %425, %420, %404, %378, %365, %356, %350, %342, %260, %123
  br label %531

531:                                              ; preds = %530, %121
  %532 = load i32, i32* %4, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %4, align 4
  br label %95

534:                                              ; preds = %95
  br label %535

535:                                              ; preds = %534
  %536 = load i32, i32* %5, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %5, align 4
  br label %79

538:                                              ; preds = %79
  br label %539

539:                                              ; preds = %538, %77
  %540 = load i32, i32* %3, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %3, align 4
  br label %51

542:                                              ; preds = %45, %51
  ret void
}

declare dso_local i32 @AAS_AreaGrounded(i32) #1

declare dso_local i64 @AAS_AreaSwim(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @CrossProduct(i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, double, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local { i32*, i64 } @AAS_TraceClientBBox(i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i64 @AAS_ReachabilityExists(i32, i32) #1

declare dso_local i32 @AAS_TraceAreas(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @AAS_AreaClusterPortal(i32) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local %struct.TYPE_17__* @AAS_AllocReachability(...) #1

declare dso_local i32 @AAS_AreaJumpPad(i32) #1

declare dso_local i64 @AAS_FallDelta(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
