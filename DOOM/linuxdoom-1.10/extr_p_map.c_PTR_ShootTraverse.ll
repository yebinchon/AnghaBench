; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PTR_ShootTraverse.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PTR_ShootTraverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__*, i64 }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64 }

@shootthing = common dso_local global %struct.TYPE_19__* null, align 8
@ML_TWOSIDED = common dso_local global i32 0, align 4
@attackrange = common dso_local global i64 0, align 8
@openbottom = common dso_local global i64 0, align 8
@shootz = common dso_local global i64 0, align 8
@aimslope = common dso_local global i64 0, align 8
@opentop = common dso_local global i64 0, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@trace = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@skyflatnum = common dso_local global i64 0, align 8
@MF_SHOOTABLE = common dso_local global i32 0, align 4
@MF_NOBLOOD = common dso_local global i32 0, align 4
@la_damage = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PTR_ShootTraverse(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %157

18:                                               ; preds = %1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %8, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** @shootthing, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = call i32 @P_ShootSpecialLine(%struct.TYPE_19__* %28, %struct.TYPE_20__* %29)
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ML_TWOSIDED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %95

39:                                               ; preds = %31
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = call i32 @P_LineOpening(%struct.TYPE_20__* %40)
  %42 = load i64, i64* @attackrange, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @FixedMul(i64 %42, i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %39
  %59 = load i64, i64* @openbottom, align 8
  %60 = load i64, i64* @shootz, align 8
  %61 = sub nsw i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @FixedDiv(i32 %62, i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @aimslope, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %95

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %39
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %70
  %83 = load i64, i64* @opentop, align 8
  %84 = load i64, i64* @shootz, align 8
  %85 = sub nsw i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @FixedDiv(i32 %86, i64 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @aimslope, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %95

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %70
  store i32 1, i32* %2, align 4
  br label %265

95:                                               ; preds = %92, %68, %38
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @FRACUNIT, align 4
  %100 = mul nsw i32 4, %99
  %101 = load i64, i64* @attackrange, align 8
  %102 = call i64 @FixedDiv(i32 %100, i64 %101)
  %103 = sub nsw i64 %98, %102
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 0), align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 1), align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @FixedMul(i64 %105, i64 %106)
  %108 = add nsw i64 %104, %107
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 2), align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 3), align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i64 @FixedMul(i64 %110, i64 %111)
  %113 = add nsw i64 %109, %112
  store i64 %113, i64* %5, align 8
  %114 = load i64, i64* @shootz, align 8
  %115 = load i64, i64* @aimslope, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @attackrange, align 8
  %118 = call i64 @FixedMul(i64 %116, i64 %117)
  %119 = call i64 @FixedMul(i64 %115, i64 %118)
  %120 = add nsw i64 %114, %119
  store i64 %120, i64* %6, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @skyflatnum, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %95
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %129, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %265

137:                                              ; preds = %128
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = icmp ne %struct.TYPE_17__* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @skyflatnum, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %265

151:                                              ; preds = %142, %137
  br label %152

152:                                              ; preds = %151, %95
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @P_SpawnPuff(i64 %153, i64 %154, i64 %155)
  store i32 0, i32* %2, align 4
  br label %265

157:                                              ; preds = %1
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %9, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** @shootthing, align 8
  %164 = icmp eq %struct.TYPE_19__* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  store i32 1, i32* %2, align 4
  br label %265

166:                                              ; preds = %157
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MF_SHOOTABLE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  store i32 1, i32* %2, align 4
  br label %265

174:                                              ; preds = %166
  %175 = load i64, i64* @attackrange, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @FixedMul(i64 %175, i64 %178)
  store i64 %179, i64* %11, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = load i64, i64* @shootz, align 8
  %188 = sub nsw i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = load i64, i64* %11, align 8
  %191 = call i64 @FixedDiv(i32 %189, i64 %190)
  store i64 %191, i64* %12, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* @aimslope, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %174
  store i32 1, i32* %2, align 4
  br label %265

196:                                              ; preds = %174
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @shootz, align 8
  %201 = sub nsw i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = load i64, i64* %11, align 8
  %204 = call i64 @FixedDiv(i32 %202, i64 %203)
  store i64 %204, i64* %13, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* @aimslope, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  store i32 1, i32* %2, align 4
  br label %265

209:                                              ; preds = %196
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* @FRACUNIT, align 4
  %214 = mul nsw i32 10, %213
  %215 = load i64, i64* @attackrange, align 8
  %216 = call i64 @FixedDiv(i32 %214, i64 %215)
  %217 = sub nsw i64 %212, %216
  store i64 %217, i64* %7, align 8
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 0), align 8
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 1), align 8
  %220 = load i64, i64* %7, align 8
  %221 = call i64 @FixedMul(i64 %219, i64 %220)
  %222 = add nsw i64 %218, %221
  store i64 %222, i64* %4, align 8
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 2), align 8
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @trace, i32 0, i32 3), align 8
  %225 = load i64, i64* %7, align 8
  %226 = call i64 @FixedMul(i64 %224, i64 %225)
  %227 = add nsw i64 %223, %226
  store i64 %227, i64* %5, align 8
  %228 = load i64, i64* @shootz, align 8
  %229 = load i64, i64* @aimslope, align 8
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* @attackrange, align 8
  %232 = call i64 @FixedMul(i64 %230, i64 %231)
  %233 = call i64 @FixedMul(i64 %229, i64 %232)
  %234 = add nsw i64 %228, %233
  store i64 %234, i64* %6, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @MF_NOBLOOD, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %209
  %245 = load i64, i64* %4, align 8
  %246 = load i64, i64* %5, align 8
  %247 = load i64, i64* %6, align 8
  %248 = call i32 @P_SpawnPuff(i64 %245, i64 %246, i64 %247)
  br label %255

249:                                              ; preds = %209
  %250 = load i64, i64* %4, align 8
  %251 = load i64, i64* %5, align 8
  %252 = load i64, i64* %6, align 8
  %253 = load i64, i64* @la_damage, align 8
  %254 = call i32 @P_SpawnBlood(i64 %250, i64 %251, i64 %252, i64 %253)
  br label %255

255:                                              ; preds = %249, %244
  %256 = load i64, i64* @la_damage, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** @shootthing, align 8
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** @shootthing, align 8
  %262 = load i64, i64* @la_damage, align 8
  %263 = call i32 @P_DamageMobj(%struct.TYPE_19__* %259, %struct.TYPE_19__* %260, %struct.TYPE_19__* %261, i64 %262)
  br label %264

264:                                              ; preds = %258, %255
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %208, %195, %173, %165, %152, %150, %136, %94
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @P_ShootSpecialLine(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @P_LineOpening(%struct.TYPE_20__*) #1

declare dso_local i64 @FixedMul(i64, i64) #1

declare dso_local i64 @FixedDiv(i32, i64) #1

declare dso_local i32 @P_SpawnPuff(i64, i64, i64) #1

declare dso_local i32 @P_SpawnBlood(i64, i64, i64, i64) #1

declare dso_local i32 @P_DamageMobj(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
