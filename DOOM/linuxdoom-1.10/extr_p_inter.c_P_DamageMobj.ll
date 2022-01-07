; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_DamageMobj.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_DamageMobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_17__*, i64* }
%struct.TYPE_17__ = type { i32, i32, i32, i64, %struct.TYPE_15__*, i32*, i64, %struct.TYPE_17__*, i64, %struct.TYPE_14__*, i64, i64, i32, i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_15__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@MF_SHOOTABLE = common dso_local global i32 0, align 4
@MF_SKULLFLY = common dso_local global i32 0, align 4
@gameskill = common dso_local global i64 0, align 8
@sk_baby = common dso_local global i64 0, align 8
@MF_NOCLIP = common dso_local global i32 0, align 4
@wp_chainsaw = common dso_local global i64 0, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@ANG180 = common dso_local global i64 0, align 8
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@finecosine = common dso_local global i32* null, align 8
@finesine = common dso_local global i32* null, align 8
@CF_GODMODE = common dso_local global i32 0, align 4
@pw_invulnerability = common dso_local global i64 0, align 8
@players = common dso_local global %struct.TYPE_16__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@MF_JUSTHIT = common dso_local global i32 0, align 4
@MT_VILE = common dso_local global i64 0, align 8
@BASETHRESHOLD = common dso_local global i64 0, align 8
@states = common dso_local global i32* null, align 8
@S_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_DamageMobj(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MF_SHOOTABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %393

21:                                               ; preds = %4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %393

27:                                               ; preds = %21
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MF_SKULLFLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 15
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 11
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 14
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %11, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %46 = icmp ne %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i64, i64* @gameskill, align 8
  %49 = load i64, i64* @sk_baby, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %47, %41
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %57, label %162

57:                                               ; preds = %54
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MF_NOCLIP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %162, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 14
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = icmp ne %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 14
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @wp_chainsaw, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %162

80:                                               ; preds = %72, %67, %64
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @R_PointToAngle2(i32 %83, i32 %86, i32 %89, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @FRACUNIT, align 4
  %96 = ashr i32 %95, 3
  %97 = mul nsw i32 %94, %96
  %98 = mul nsw i32 %97, 100
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %98, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 40
  br i1 %106, label %107, label %136

107:                                              ; preds = %80
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %108, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  %121 = load i32, i32* @FRACUNIT, align 4
  %122 = mul nsw i32 64, %121
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %113
  %125 = call i32 (...) @P_Random()
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i64, i64* @ANG180, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %12, align 4
  %135 = mul nsw i32 %134, 4
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %128, %124, %113, %107, %80
  %137 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %138 = load i32, i32* %9, align 4
  %139 = lshr i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32*, i32** @finecosine, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @FixedMul(i32 %140, i32 %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** @finesine, align 8
  %153 = load i32, i32* %9, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @FixedMul(i32 %151, i32 %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 10
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, %157
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %136, %72, %57, %54
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %164 = icmp ne %struct.TYPE_16__* %163, null
  br i1 %164, label %165, label %290

165:                                              ; preds = %162
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 9
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 11
  br i1 %173, label %174, label %185

174:                                              ; preds = %165
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %180, %174, %165
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %186, 1000
  br i1 %187, label %188, label %204

188:                                              ; preds = %185
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CF_GODMODE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 7
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @pw_invulnerability, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195, %188
  br label %393

204:                                              ; preds = %195, %185
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %241

209:                                              ; preds = %204
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* %8, align 4
  %216 = sdiv i32 %215, 3
  store i32 %216, i32* %10, align 4
  br label %220

217:                                              ; preds = %209
  %218 = load i32, i32* %8, align 4
  %219 = sdiv i32 %218, 2
  store i32 %219, i32* %10, align 4
  br label %220

220:                                              ; preds = %217, %214
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %10, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 2
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %226, %220
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, %233
  store i32 %237, i32* %235, align 8
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %8, align 4
  %240 = sub nsw i32 %239, %238
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %232, %204
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %246, %243
  store i64 %247, i64* %245, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %241
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 4
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %252, %241
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 6
  store %struct.TYPE_17__* %256, %struct.TYPE_17__** %258, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %266, 100
  br i1 %267, label %268, label %271

268:                                              ; preds = %255
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 5
  store i32 100, i32* %270, align 8
  br label %271

271:                                              ; preds = %268, %255
  %272 = load i32, i32* %8, align 4
  %273 = icmp slt i32 %272, 100
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load i32, i32* %8, align 4
  br label %277

276:                                              ; preds = %271
  br label %277

277:                                              ; preds = %276, %274
  %278 = phi i32 [ %275, %274 ], [ 100, %276 ]
  store i32 %278, i32* %13, align 4
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** @players, align 8
  %281 = load i64, i64* @consoleplayer, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i64 %281
  %283 = icmp eq %struct.TYPE_16__* %279, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %277
  %285 = load i32, i32* %13, align 4
  %286 = mul nsw i32 %285, 2
  %287 = add nsw i32 40, %286
  %288 = call i32 @I_Tactile(i32 40, i32 10, i32 %287)
  br label %289

289:                                              ; preds = %284, %277
  br label %290

290:                                              ; preds = %289, %162
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp sle i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %290
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = call i32 @P_KillMobj(%struct.TYPE_17__* %301, %struct.TYPE_17__* %302)
  br label %393

304:                                              ; preds = %290
  %305 = call i32 (...) @P_Random()
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 4
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %305, %310
  br i1 %311, label %312, label %332

312:                                              ; preds = %304
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @MF_SKULLFLY, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %332, label %319

319:                                              ; preds = %312
  %320 = load i32, i32* @MF_JUSTHIT, align 4
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @P_SetMobjState(%struct.TYPE_17__* %325, i64 %330)
  br label %332

332:                                              ; preds = %319, %312, %304
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 8
  store i64 0, i64* %334, align 8
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 6
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %332
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @MT_VILE, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %393

345:                                              ; preds = %339, %332
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %347 = icmp ne %struct.TYPE_17__* %346, null
  br i1 %347, label %348, label %393

348:                                              ; preds = %345
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %351 = icmp ne %struct.TYPE_17__* %349, %350
  br i1 %351, label %352, label %393

352:                                              ; preds = %348
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @MT_VILE, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %393

358:                                              ; preds = %352
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 7
  store %struct.TYPE_17__* %359, %struct.TYPE_17__** %361, align 8
  %362 = load i64, i64* @BASETHRESHOLD, align 8
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 6
  store i64 %362, i64* %364, align 8
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 5
  %367 = load i32*, i32** %366, align 8
  %368 = load i32*, i32** @states, align 8
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 4
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = getelementptr inbounds i32, i32* %368, i64 %373
  %375 = icmp eq i32* %367, %374
  br i1 %375, label %376, label %392

376:                                              ; preds = %358
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 4
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 4
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @S_NULL, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %392

384:                                              ; preds = %376
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 4
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = call i32 @P_SetMobjState(%struct.TYPE_17__* %385, i64 %390)
  br label %392

392:                                              ; preds = %384, %376, %358
  br label %393

393:                                              ; preds = %20, %26, %203, %300, %392, %352, %348, %345, %339
  ret void
}

declare dso_local i32 @R_PointToAngle2(i32, i32, i32, i32) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i64 @FixedMul(i32, i32) #1

declare dso_local i32 @I_Tactile(i32, i32, i32) #1

declare dso_local i32 @P_KillMobj(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
