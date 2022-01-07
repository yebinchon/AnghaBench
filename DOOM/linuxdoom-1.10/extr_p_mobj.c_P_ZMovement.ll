; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_ZMovement.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_ZMovement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@VIEWHEIGHT = common dso_local global i32 0, align 4
@MF_FLOAT = common dso_local global i32 0, align 4
@MF_SKULLFLY = common dso_local global i32 0, align 4
@MF_INFLOAT = common dso_local global i32 0, align 4
@FLOATSPEED = common dso_local global i32 0, align 4
@GRAVITY = common dso_local global i32 0, align 4
@sfx_oof = common dso_local global i32 0, align 4
@MF_MISSILE = common dso_local global i32 0, align 4
@MF_NOCLIP = common dso_local global i32 0, align 4
@MF_NOGRAVITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_ZMovement(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 6
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %9
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %24
  store i64 %30, i64* %28, align 8
  %31 = load i32, i32* @VIEWHEIGHT, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %32, %37
  %39 = ashr i64 %38, 3
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  br label %45

45:                                               ; preds = %17, %9, %1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MF_FLOAT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %148

60:                                               ; preds = %45
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %148

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MF_SKULLFLY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %147, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MF_INFLOAT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %147, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %82, %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 7
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %91, %96
  %98 = call i32 @P_AproxDistance(i64 %88, i64 %97)
  store i32 %98, i32* %3, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 1
  %108 = add nsw i32 %103, %107
  %109 = sext i32 %108 to i64
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %79
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %4, align 4
  %120 = mul nsw i32 %119, 3
  %121 = sub nsw i32 0, %120
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i32, i32* @FLOATSPEED, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  br label %146

130:                                              ; preds = %117, %79
  %131 = load i32, i32* %4, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %4, align 4
  %136 = mul nsw i32 %135, 3
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i32, i32* @FLOATSPEED, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %138, %133, %130
  br label %146

146:                                              ; preds = %145, %123
  br label %147

147:                                              ; preds = %146, %72, %65
  br label %148

148:                                              ; preds = %147, %60, %45
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sle i64 %151, %154
  br i1 %155, label %156, label %226

156:                                              ; preds = %148
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @MF_SKULLFLY, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 0, %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %163, %156
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %203

175:                                              ; preds = %170
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = icmp ne %struct.TYPE_8__* %178, null
  br i1 %179, label %180, label %200

180:                                              ; preds = %175
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @GRAVITY, align 4
  %185 = sub nsw i32 0, %184
  %186 = mul nsw i32 %185, 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %180
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = ashr i32 %191, 3
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 6
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 %192, i32* %196, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %198 = load i32, i32* @sfx_oof, align 4
  %199 = call i32 @S_StartSound(%struct.TYPE_9__* %197, i32 %198)
  br label %200

200:                                              ; preds = %188, %180, %175
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %170
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MF_MISSILE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %203
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @MF_NOCLIP, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %215
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %224 = call i32 @P_ExplodeMissile(%struct.TYPE_9__* %223)
  br label %315

225:                                              ; preds = %215, %203
  br label %252

226:                                              ; preds = %148
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @MF_NOGRAVITY, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %251, label %233

233:                                              ; preds = %226
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i32, i32* @GRAVITY, align 4
  %240 = sub nsw i32 0, %239
  %241 = mul nsw i32 %240, 2
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  br label %250

244:                                              ; preds = %233
  %245 = load i32, i32* @GRAVITY, align 4
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %238
  br label %251

251:                                              ; preds = %250, %226
  br label %252

252:                                              ; preds = %251, %225
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %255, %259
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %260, %263
  br i1 %264, label %265, label %315

265:                                              ; preds = %252
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 2
  store i32 0, i32* %272, align 8
  br label %273

273:                                              ; preds = %270, %265
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = sub nsw i64 %276, %280
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @MF_SKULLFLY, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %273
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = sub nsw i32 0, %293
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  br label %297

297:                                              ; preds = %290, %273
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @MF_MISSILE, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %314

304:                                              ; preds = %297
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @MF_NOCLIP, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %304
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %313 = call i32 @P_ExplodeMissile(%struct.TYPE_9__* %312)
  br label %315

314:                                              ; preds = %304, %297
  br label %315

315:                                              ; preds = %222, %311, %314, %252
  ret void
}

declare dso_local i32 @P_AproxDistance(i64, i64) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @P_ExplodeMissile(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
