; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_create.c_AAS_CreateArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_create.c_AAS_CreateArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_22__*, i64*, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_24__**, i32, %struct.TYPE_21__*, %struct.TYPE_23__** }
%struct.TYPE_21__ = type { i32, i32, i64, i32 }

@__const.AAS_CreateArea.up = private unnamed_addr constant %struct.TYPE_19__ { i32 0, i32 0, i32 1 }, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@FACE_SOLID = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@FACE_LIQUID = common dso_local global i32 0, align 4
@FACE_LIQUIDSURFACE = common dso_local global i32 0, align 4
@CONTENTS_LADDER = common dso_local global i32 0, align 4
@FACE_LADDER = common dso_local global i32 0, align 4
@FACE_GROUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@cfg = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@CONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@AREACONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@CONTENTS_MOVER = common dso_local global i32 0, align 4
@AREACONTENTS_MOVER = common dso_local global i32 0, align 4
@CONTENTS_TELEPORTER = common dso_local global i32 0, align 4
@AREACONTENTS_TELEPORTER = common dso_local global i32 0, align 4
@CONTENTS_JUMPPAD = common dso_local global i32 0, align 4
@AREACONTENTS_JUMPPAD = common dso_local global i32 0, align 4
@CONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@AREACONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@AREACONTENTS_WATER = common dso_local global i32 0, align 4
@AREACONTENTS_LAVA = common dso_local global i32 0, align 4
@AREACONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_NOTTEAM1 = common dso_local global i32 0, align 4
@AREACONTENTS_NOTTEAM1 = common dso_local global i32 0, align 4
@CONTENTS_NOTTEAM2 = common dso_local global i32 0, align 4
@AREACONTENTS_NOTTEAM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @AAS_CreateArea(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %10 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_19__* @__const.AAS_CreateArea.up to i8*), i64 12, i1 false)
  %11 = call %struct.TYPE_22__* (...) @AAS_AllocTmpArea()
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %7, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %4, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %5, align 8
  br label %17

17:                                               ; preds = %192, %1
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = icmp ne %struct.TYPE_23__* %18, null
  br i1 %19, label %20, label %200

20:                                               ; preds = %17
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 1
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %27 = icmp eq %struct.TYPE_24__* %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = icmp ne %struct.TYPE_21__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %36, i32 1, %struct.TYPE_22__* %37)
  br label %191

39:                                               ; preds = %20
  %40 = call %struct.TYPE_21__* (...) @AAS_AllocTmpFace()
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %6, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 3
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %43, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = xor i32 %46, %47
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ReverseWinding(i32 %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  br label %67

60:                                               ; preds = %39
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @CopyWinding(i32 %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %70, i64 %75
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CONTENTS_SOLID, align 4
  %81 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %67
  %86 = load i32, i32* @FACE_SOLID, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %135

91:                                               ; preds = %67
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CONTENTS_WATER, align 4
  %96 = load i32, i32* @CONTENTS_SLIME, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @CONTENTS_LAVA, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %94, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %91
  %103 = load i32, i32* @FACE_LIQUID, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %110, i64 %115
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CONTENTS_WATER, align 4
  %121 = load i32, i32* @CONTENTS_SLIME, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @CONTENTS_LAVA, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %119, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %102
  %128 = load i32, i32* @FACE_LIQUIDSURFACE, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %102
  br label %134

134:                                              ; preds = %133, %91
  br label %135

135:                                              ; preds = %134, %85
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %138, i64 %140
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CONTENTS_LADDER, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %164, label %148

148:                                              ; preds = %135
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %151, i64 %156
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CONTENTS_LADDER, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %148, %135
  %165 = load i32, i32* @FACE_LADDER, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %148
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %172 = call i64 @AAS_GroundFace(%struct.TYPE_21__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i32, i32* @FACE_GROUND, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %170
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %4, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %4, align 4
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 2
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %190 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %188, i32 0, %struct.TYPE_22__* %189)
  br label %191

191:                                              ; preds = %180, %33
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %194, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %195, i64 %197
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %198, align 8
  store %struct.TYPE_23__* %199, %struct.TYPE_23__** %5, align 8
  br label %17

200:                                              ; preds = %17
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %203)
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cfg, i32 0, i32 0), align 4
  %210 = and i32 %208, %209
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 2
  store i32 0, i32* %214, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %200
  %222 = load i32, i32* @AREACONTENTS_CLUSTERPORTAL, align 4
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %221, %200
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @CONTENTS_MOVER, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %234, %227
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @CONTENTS_TELEPORTER, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load i32, i32* @AREACONTENTS_TELEPORTER, align 4
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %247, %240
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @CONTENTS_JUMPPAD, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %253
  %261 = load i32, i32* @AREACONTENTS_JUMPPAD, align 4
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %253
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = load i32, i32* @AREACONTENTS_DONOTENTER, align 4
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %273, %266
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @CONTENTS_WATER, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %279
  %287 = load i32, i32* @AREACONTENTS_WATER, align 4
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %286, %279
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @CONTENTS_LAVA, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %292
  %300 = load i32, i32* @AREACONTENTS_LAVA, align 4
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 8
  br label %305

305:                                              ; preds = %299, %292
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @CONTENTS_SLIME, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %305
  %313 = load i32, i32* @AREACONTENTS_SLIME, align 4
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  br label %318

318:                                              ; preds = %312, %305
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @CONTENTS_NOTTEAM1, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %318
  %326 = load i32, i32* @AREACONTENTS_NOTTEAM1, align 4
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %325, %318
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @CONTENTS_NOTTEAM2, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %331
  %339 = load i32, i32* @AREACONTENTS_NOTTEAM2, align 4
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %338, %331
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %351 = call i32 @AAS_FlipAreaFaces(%struct.TYPE_22__* %350)
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %353 = call i32 @AAS_CheckArea(%struct.TYPE_22__* %352)
  %354 = call %struct.TYPE_20__* (...) @AAS_AllocTmpNode()
  store %struct.TYPE_20__* %354, %struct.TYPE_20__** %8, align 8
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 2
  store i64 0, i64* %356, align 8
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 1
  %359 = load i64*, i64** %358, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 0
  store i64 0, i64* %360, align 8
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 1
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 1
  store i64 0, i64* %364, align 8
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  store %struct.TYPE_22__* %365, %struct.TYPE_22__** %367, align 8
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  ret %struct.TYPE_20__* %368
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_22__* @AAS_AllocTmpArea(...) #2

declare dso_local i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #2

declare dso_local %struct.TYPE_21__* @AAS_AllocTmpFace(...) #2

declare dso_local i32 @ReverseWinding(i32) #2

declare dso_local i32 @CopyWinding(i32) #2

declare dso_local i64 @AAS_GroundFace(%struct.TYPE_21__*) #2

declare dso_local i32 @qprintf(i8*, i32) #2

declare dso_local i32 @AAS_FlipAreaFaces(%struct.TYPE_22__*) #2

declare dso_local i32 @AAS_CheckArea(%struct.TYPE_22__*) #2

declare dso_local %struct.TYPE_20__* @AAS_AllocTmpNode(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
