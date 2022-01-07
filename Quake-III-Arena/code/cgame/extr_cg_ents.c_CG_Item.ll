; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Item.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64*, i32 }
%struct.TYPE_20__ = type { i32, i32*, i32**, i32*, i32** }
%struct.TYPE_22__ = type { i32*, i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32*, i32*, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i32, double }
%struct.TYPE_23__ = type { i32*, i32, i32*, i32**, i32*, i32*, i8*, i64, i32, i32, i32, i32 }

@bg_numItems = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Bad item index %i on entity\00", align 1
@EF_NODRAW = common dso_local global i32 0, align 4
@bg_itemlist = common dso_local global %struct.TYPE_24__* null, align 8
@cg_simpleItems = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@IT_TEAM = common dso_local global i64 0, align 8
@RT_SPRITE = common dso_local global i32 0, align 4
@cg_items = common dso_local global %struct.TYPE_19__* null, align 8
@cg = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@IT_HEALTH = common dso_local global i64 0, align 8
@IT_WEAPON = common dso_local global i64 0, align 8
@cg_weapons = common dso_local global %struct.TYPE_22__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@ITEM_SCALEUP_TIME = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@IT_ARMOR = common dso_local global i64 0, align 8
@RF_MINLIGHT = common dso_local global i32 0, align 4
@IT_POWERUP = common dso_local global i64 0, align 8
@HI_KAMIKAZE = common dso_local global i64 0, align 8
@IT_HOLDABLE = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@vec3_origin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @CG_Item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Item(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_23__, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %4, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @bg_numItems, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @CG_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EF_NODRAW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %23
  br label %504

36:                                               ; preds = %28
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** @bg_itemlist, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i64 %40
  store %struct.TYPE_24__* %41, %struct.TYPE_24__** %5, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_simpleItems, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %36
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IT_TEAM, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44
  %51 = call i32 @memset(%struct.TYPE_23__* %3, i32 0, i32 80)
  %52 = load i32, i32* @RT_SPRITE, align 4
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 11
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @VectorCopy(i32* %56, i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  store i32 14, i32* %60, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** @cg_items, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 10
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 255, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 255, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 255, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 255, i32* %80, align 4
  %81 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_23__* %3)
  br label %504

82:                                               ; preds = %44, %36
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 2
  %86 = load double, double* %85, align 8
  %87 = fmul double %86, 1.000000e-05
  %88 = fadd double 5.000000e-03, %87
  %89 = fptrunc double %88 to float
  store float %89, float* %8, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %91 = add nsw i32 %90, 1000
  %92 = sitofp i32 %91 to float
  %93 = load float, float* %8, align 4
  %94 = fmul float %92, %93
  %95 = fptosi float %94 to i32
  %96 = call i32 @cos(i32 %95)
  %97 = mul nsw i32 %96, 4
  %98 = add nsw i32 4, %97
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %98
  store i32 %104, i32* %102, align 4
  %105 = call i32 @memset(%struct.TYPE_23__* %3, i32 0, i32 80)
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IT_HEALTH, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %82
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 1), align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @VectorCopy(i32* %112, i32* %115)
  %117 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 2), align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %119 = load i32**, i32*** %118, align 8
  %120 = call i32 @AxisCopy(i32** %117, i32** %119)
  br label %131

121:                                              ; preds = %82
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 3), align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @VectorCopy(i32* %122, i32* %125)
  %127 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 4), align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %129 = load i32**, i32*** %128, align 8
  %130 = call i32 @AxisCopy(i32** %127, i32** %129)
  br label %131

131:                                              ; preds = %121, %111
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %9, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IT_WEAPON, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %281

137:                                              ; preds = %131
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** @cg_weapons, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i64 %141
  store %struct.TYPE_22__* %142, %struct.TYPE_22__** %9, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %147, %153
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %159, %165
  %167 = add nsw i32 %154, %166
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %174 = load i32**, i32*** %173, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %172, %178
  %180 = add nsw i32 %167, %179
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, %180
  store i32 %186, i32* %184, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %191, %197
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %205 = load i32**, i32*** %204, align 8
  %206 = getelementptr inbounds i32*, i32** %205, i64 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %203, %209
  %211 = add nsw i32 %198, %210
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %218 = load i32**, i32*** %217, align 8
  %219 = getelementptr inbounds i32*, i32** %218, i64 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = mul nsw i32 %216, %222
  %224 = add nsw i32 %211, %223
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %237 = load i32**, i32*** %236, align 8
  %238 = getelementptr inbounds i32*, i32** %237, i64 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 2
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %235, %241
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %249 = load i32**, i32*** %248, align 8
  %250 = getelementptr inbounds i32*, i32** %249, i64 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 %247, %253
  %255 = add nsw i32 %242, %254
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %262 = load i32**, i32*** %261, align 8
  %263 = getelementptr inbounds i32*, i32** %262, i64 2
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %260, %266
  %268 = add nsw i32 %255, %267
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 2
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %273, %268
  store i32 %274, i32* %272, align 4
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 2
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 8
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %137, %131
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** @cg_items, align 8
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 7
  store i64 %290, i64* %291, align 8
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = call i32 @VectorCopy(i32* %294, i32* %296)
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 4
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @VectorCopy(i32* %300, i32* %302)
  %304 = load i8*, i8** @qfalse, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 6
  store i8* %304, i8** %305, align 8
  %306 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = sub nsw i32 %306, %309
  store i32 %310, i32* %6, align 4
  %311 = load i32, i32* %6, align 4
  %312 = icmp sge i32 %311, 0
  br i1 %312, label %313, label %355

313:                                              ; preds = %281
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* @ITEM_SCALEUP_TIME, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %355

317:                                              ; preds = %313
  %318 = load i32, i32* %6, align 4
  %319 = sitofp i32 %318 to float
  %320 = load i32, i32* @ITEM_SCALEUP_TIME, align 4
  %321 = sitofp i32 %320 to float
  %322 = fdiv float %319, %321
  store float %322, float* %7, align 4
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %324 = load i32**, i32*** %323, align 8
  %325 = getelementptr inbounds i32*, i32** %324, i64 0
  %326 = load i32*, i32** %325, align 8
  %327 = load float, float* %7, align 4
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %329 = load i32**, i32*** %328, align 8
  %330 = getelementptr inbounds i32*, i32** %329, i64 0
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @VectorScale(i32* %326, float %327, i32* %331)
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %334 = load i32**, i32*** %333, align 8
  %335 = getelementptr inbounds i32*, i32** %334, i64 1
  %336 = load i32*, i32** %335, align 8
  %337 = load float, float* %7, align 4
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %339 = load i32**, i32*** %338, align 8
  %340 = getelementptr inbounds i32*, i32** %339, i64 1
  %341 = load i32*, i32** %340, align 8
  %342 = call i32 @VectorScale(i32* %336, float %337, i32* %341)
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %344 = load i32**, i32*** %343, align 8
  %345 = getelementptr inbounds i32*, i32** %344, i64 2
  %346 = load i32*, i32** %345, align 8
  %347 = load float, float* %7, align 4
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %349 = load i32**, i32*** %348, align 8
  %350 = getelementptr inbounds i32*, i32** %349, i64 2
  %351 = load i32*, i32** %350, align 8
  %352 = call i32 @VectorScale(i32* %346, float %347, i32* %351)
  %353 = load i8*, i8** @qtrue, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 6
  store i8* %353, i8** %354, align 8
  br label %356

355:                                              ; preds = %313, %281
  store float 1.000000e+00, float* %7, align 4
  br label %356

356:                                              ; preds = %355, %317
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @IT_WEAPON, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %368, label %362

362:                                              ; preds = %356
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @IT_ARMOR, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %373

368:                                              ; preds = %362, %356
  %369 = load i32, i32* @RF_MINLIGHT, align 4
  %370 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 8
  %371 = load i32, i32* %370, align 8
  %372 = or i32 %371, %369
  store i32 %372, i32* %370, align 8
  br label %373

373:                                              ; preds = %368, %362
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @IT_WEAPON, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %409

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %381 = load i32**, i32*** %380, align 8
  %382 = getelementptr inbounds i32*, i32** %381, i64 0
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %385 = load i32**, i32*** %384, align 8
  %386 = getelementptr inbounds i32*, i32** %385, i64 0
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @VectorScale(i32* %383, float 1.500000e+00, i32* %387)
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %390 = load i32**, i32*** %389, align 8
  %391 = getelementptr inbounds i32*, i32** %390, i64 1
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %394 = load i32**, i32*** %393, align 8
  %395 = getelementptr inbounds i32*, i32** %394, i64 1
  %396 = load i32*, i32** %395, align 8
  %397 = call i32 @VectorScale(i32* %392, float 1.500000e+00, i32* %396)
  %398 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %399 = load i32**, i32*** %398, align 8
  %400 = getelementptr inbounds i32*, i32** %399, i64 2
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %403 = load i32**, i32*** %402, align 8
  %404 = getelementptr inbounds i32*, i32** %403, i64 2
  %405 = load i32*, i32** %404, align 8
  %406 = call i32 @VectorScale(i32* %401, float 1.500000e+00, i32* %405)
  %407 = load i8*, i8** @qtrue, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 6
  store i8* %407, i8** %408, align 8
  br label %409

409:                                              ; preds = %379, %373
  %410 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_23__* %3)
  %411 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_simpleItems, i32 0, i32 0), align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %504, label %413

413:                                              ; preds = %409
  %414 = load i32*, i32** %10, align 8
  %415 = call i32 @VectorClear(i32* %414)
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @IT_HEALTH, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %427, label %421

421:                                              ; preds = %413
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @IT_POWERUP, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %503

427:                                              ; preds = %421, %413
  %428 = load %struct.TYPE_19__*, %struct.TYPE_19__** @cg_items, align 8
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %432, i32 0, i32 0
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 1
  %436 = load i64, i64* %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 7
  store i64 %436, i64* %437, align 8
  %438 = icmp ne i64 %436, 0
  br i1 %438, label %439, label %502

439:                                              ; preds = %427
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @IT_POWERUP, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %459

445:                                              ; preds = %439
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 2
  %449 = load i32, i32* %448, align 4
  %450 = add nsw i32 %449, 12
  store i32 %450, i32* %448, align 4
  %451 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %452 = and i32 %451, 1023
  %453 = mul nsw i32 %452, 360
  %454 = sitofp i32 %453 to float
  %455 = fdiv float %454, -1.024000e+03
  %456 = fptosi float %455 to i32
  %457 = load i32*, i32** %10, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  store i32 %456, i32* %458, align 4
  br label %459

459:                                              ; preds = %445, %439
  %460 = load i32*, i32** %10, align 8
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %462 = load i32**, i32*** %461, align 8
  %463 = call i32 @AnglesToAxis(i32* %460, i32** %462)
  %464 = load float, float* %7, align 4
  %465 = fpext float %464 to double
  %466 = fcmp une double %465, 1.000000e+00
  br i1 %466, label %467, label %500

467:                                              ; preds = %459
  %468 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %469 = load i32**, i32*** %468, align 8
  %470 = getelementptr inbounds i32*, i32** %469, i64 0
  %471 = load i32*, i32** %470, align 8
  %472 = load float, float* %7, align 4
  %473 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %474 = load i32**, i32*** %473, align 8
  %475 = getelementptr inbounds i32*, i32** %474, i64 0
  %476 = load i32*, i32** %475, align 8
  %477 = call i32 @VectorScale(i32* %471, float %472, i32* %476)
  %478 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %479 = load i32**, i32*** %478, align 8
  %480 = getelementptr inbounds i32*, i32** %479, i64 1
  %481 = load i32*, i32** %480, align 8
  %482 = load float, float* %7, align 4
  %483 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %484 = load i32**, i32*** %483, align 8
  %485 = getelementptr inbounds i32*, i32** %484, i64 1
  %486 = load i32*, i32** %485, align 8
  %487 = call i32 @VectorScale(i32* %481, float %482, i32* %486)
  %488 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %489 = load i32**, i32*** %488, align 8
  %490 = getelementptr inbounds i32*, i32** %489, i64 2
  %491 = load i32*, i32** %490, align 8
  %492 = load float, float* %7, align 4
  %493 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %494 = load i32**, i32*** %493, align 8
  %495 = getelementptr inbounds i32*, i32** %494, i64 2
  %496 = load i32*, i32** %495, align 8
  %497 = call i32 @VectorScale(i32* %491, float %492, i32* %496)
  %498 = load i8*, i8** @qtrue, align 8
  %499 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 6
  store i8* %498, i8** %499, align 8
  br label %500

500:                                              ; preds = %467, %459
  %501 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_23__* %3)
  br label %502

502:                                              ; preds = %500, %427
  br label %503

503:                                              ; preds = %502, %421
  br label %504

504:                                              ; preds = %35, %50, %503, %409
  ret void
}

declare dso_local i32 @CG_Error(i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_23__*) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @AxisCopy(i32**, i32**) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @AnglesToAxis(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
