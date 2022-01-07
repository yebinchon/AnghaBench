; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_missile.c_G_MissileImpact.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_missile.c_G_MissileImpact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i64, i64, i32*, %struct.TYPE_37__*, %struct.TYPE_38__, i32, i32, i64, %struct.TYPE_31__*, %struct.TYPE_36__, i8*, i64, i32, %struct.TYPE_40__*, i32, i32, i32, i64, %struct.TYPE_40__* }
%struct.TYPE_37__ = type { i64, i32 }
%struct.TYPE_38__ = type { i64, double*, double*, i32* }
%struct.TYPE_31__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32*, i32 }
%struct.TYPE_36__ = type { i32, i64, i64, i32*, %struct.TYPE_33__, i32, i32, i32 }
%struct.TYPE_33__ = type { i32*, i64, i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_39__ = type { i64, i32*, i32, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32* }

@qfalse = common dso_local global i8* null, align 8
@g_entities = common dso_local global %struct.TYPE_40__* null, align 8
@EF_BOUNCE = common dso_local global i32 0, align 4
@EF_BOUNCE_HALF = common dso_local global i32 0, align 4
@EV_GRENADE_BOUNCE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@level = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"hook\00", align 1
@EV_MISSILE_HIT = common dso_local global i32 0, align 4
@EV_MISSILE_MISS = common dso_local global i32 0, align 4
@ET_GENERAL = common dso_local global i8* null, align 8
@ET_GRAPPLE = common dso_local global i64 0, align 8
@Weapon_HookThink = common dso_local global i32 0, align 4
@FRAMETIME = common dso_local global i64 0, align 8
@PMF_GRAPPLE_PULL = common dso_local global i32 0, align 4
@SURF_METALSTEPS = common dso_local global i32 0, align 4
@EV_MISSILE_MISS_METAL = common dso_local global i32 0, align 4
@ET_PLAYER = common dso_local global i64 0, align 8
@EV_PROXIMITY_MINE_STICK = common dso_local global i32 0, align 4
@ProximityMine_Activate = common dso_local global i32 0, align 4
@ProximityMine_Die = common dso_local global i32 0, align 4
@TR_GRAVITY = common dso_local global i64 0, align 8
@TR_STATIONARY = common dso_local global i64 0, align 8
@WP_PROX_LAUNCHER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_MissileImpact(%struct.TYPE_40__* %0, %struct.TYPE_39__* %1) #0 {
  %3 = alloca %struct.TYPE_40__*, align 8
  %4 = alloca %struct.TYPE_39__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_40__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %3, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %4, align 8
  %10 = load i8*, i8** @qfalse, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.TYPE_40__*, %struct.TYPE_40__** @g_entities, align 8
  %12 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i64 %14
  store %struct.TYPE_40__* %15, %struct.TYPE_40__** %5, align 8
  %16 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EF_BOUNCE, align 4
  %26 = load i32, i32* @EF_BOUNCE_HALF, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %33 = call i32 @G_BounceMissile(%struct.TYPE_40__* %31, %struct.TYPE_39__* %32)
  %34 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %35 = load i32, i32* @EV_GRENADE_BOUNCE, align 4
  %36 = call i32 @G_AddEvent(%struct.TYPE_40__* %34, i32 %35, i32 0)
  br label %418

37:                                               ; preds = %20, %2
  %38 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %38, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %105

42:                                               ; preds = %37
  %43 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %43, i32 0, i32 17
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %104

47:                                               ; preds = %42
  %48 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %49 = load %struct.TYPE_40__*, %struct.TYPE_40__** @g_entities, align 8
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %49, i64 %53
  %55 = call i64 @LogAccuracyHit(%struct.TYPE_40__* %48, %struct.TYPE_40__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load %struct.TYPE_40__*, %struct.TYPE_40__** @g_entities, align 8
  %59 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_37__*, %struct.TYPE_37__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load i8*, i8** @qtrue, align 8
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %57, %47
  %71 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %72, i32 0, i32 4
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @level, i32 0, i32 0), align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_33__* %73, i64 %74, i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i64 @VectorLength(i32* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %70
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %85 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** @g_entities, align 8
  %87 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %86, i64 %90
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %97, i32 0, i32 17
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %100, i32 0, i32 16
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @G_Damage(%struct.TYPE_40__* %84, %struct.TYPE_40__* %85, %struct.TYPE_40__* %91, i32* %92, i32 %96, i64 %99, i32 0, i32 %102)
  br label %104

104:                                              ; preds = %83, %42
  br label %105

105:                                              ; preds = %104, %37
  %106 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %106, i32 0, i32 14
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strcmp(i32 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %300, label %111

111:                                              ; preds = %105
  %112 = call %struct.TYPE_40__* (...) @G_Spawn()
  store %struct.TYPE_40__* %112, %struct.TYPE_40__** %8, align 8
  %113 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 11
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %223

117:                                              ; preds = %111
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_37__*, %struct.TYPE_37__** %119, align 8
  %121 = icmp ne %struct.TYPE_37__* %120, null
  br i1 %121, label %122, label %223

122:                                              ; preds = %117
  %123 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %124 = load i32, i32* @EV_MISSILE_HIT, align 4
  %125 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @DirToByte(i32* %128)
  %130 = call i32 @G_AddEvent(%struct.TYPE_40__* %123, i32 %124, i32 %129)
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 9
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 6
  store i32 %134, i32* %137, align 4
  %138 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %139 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %139, i32 0, i32 13
  store %struct.TYPE_40__* %138, %struct.TYPE_40__** %140, align 8
  %141 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = sitofp i32 %146 to double
  %148 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 1
  %151 = load double*, double** %150, align 8
  %152 = getelementptr inbounds double, double* %151, i64 0
  %153 = load double, double* %152, align 8
  %154 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %155, i32 0, i32 2
  %157 = load double*, double** %156, align 8
  %158 = getelementptr inbounds double, double* %157, i64 0
  %159 = load double, double* %158, align 8
  %160 = fadd double %153, %159
  %161 = fmul double %160, 5.000000e-01
  %162 = fadd double %147, %161
  %163 = fptosi double %162 to i32
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = sitofp i32 %171 to double
  %173 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %174, i32 0, i32 1
  %176 = load double*, double** %175, align 8
  %177 = getelementptr inbounds double, double* %176, i64 1
  %178 = load double, double* %177, align 8
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 2
  %182 = load double*, double** %181, align 8
  %183 = getelementptr inbounds double, double* %182, i64 1
  %184 = load double, double* %183, align 8
  %185 = fadd double %178, %184
  %186 = fmul double %185, 5.000000e-01
  %187 = fadd double %172, %186
  %188 = fptosi double %187 to i32
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to double
  %198 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %199, i32 0, i32 1
  %201 = load double*, double** %200, align 8
  %202 = getelementptr inbounds double, double* %201, i64 2
  %203 = load double, double* %202, align 8
  %204 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %205, i32 0, i32 2
  %207 = load double*, double** %206, align 8
  %208 = getelementptr inbounds double, double* %207, i64 2
  %209 = load double, double* %208, align 8
  %210 = fadd double %203, %209
  %211 = fmul double %210, 5.000000e-01
  %212 = fadd double %197, %211
  %213 = fptosi double %212 to i32
  %214 = load i32*, i32** %9, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  store i32 %213, i32* %215, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %217, i32 0, i32 9
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @SnapVectorTowards(i32* %216, i32 %221)
  br label %239

223:                                              ; preds = %117, %111
  %224 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = call i32 @VectorCopy(i32* %226, i32* %227)
  %229 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %230 = load i32, i32* @EV_MISSILE_MISS, align 4
  %231 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @DirToByte(i32* %234)
  %236 = call i32 @G_AddEvent(%struct.TYPE_40__* %229, i32 %230, i32 %235)
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 13
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %238, align 8
  br label %239

239:                                              ; preds = %223, %122
  %240 = load i32*, i32** %9, align 8
  %241 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %241, i32 0, i32 9
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @SnapVectorTowards(i32* %240, i32 %245)
  %247 = load i8*, i8** @qtrue, align 8
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %248, i32 0, i32 10
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** @ET_GENERAL, align 8
  %251 = ptrtoint i8* %250 to i64
  %252 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %252, i32 0, i32 9
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 2
  store i64 %251, i64* %254, align 8
  %255 = load i64, i64* @ET_GRAPPLE, align 8
  %256 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %257, i32 0, i32 2
  store i64 %255, i64* %258, align 8
  %259 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = call i32 @G_SetOrigin(%struct.TYPE_40__* %259, i32* %260)
  %262 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %263 = load i32*, i32** %9, align 8
  %264 = call i32 @G_SetOrigin(%struct.TYPE_40__* %262, i32* %263)
  %265 = load i32, i32* @Weapon_HookThink, align 4
  %266 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %266, i32 0, i32 12
  store i32 %265, i32* %267, align 8
  %268 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @level, i32 0, i32 0), align 8
  %269 = load i64, i64* @FRAMETIME, align 8
  %270 = add nsw i64 %268, %269
  %271 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %271, i32 0, i32 1
  store i64 %270, i64* %272, align 8
  %273 = load i32, i32* @PMF_GRAPPLE_PULL, align 4
  %274 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 8
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %273
  store i32 %282, i32* %280, align 8
  %283 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %287, i32 0, i32 8
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @VectorCopy(i32* %286, i32* %294)
  %296 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %297 = call i32 @trap_LinkEntity(%struct.TYPE_40__* %296)
  %298 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %299 = call i32 @trap_LinkEntity(%struct.TYPE_40__* %298)
  br label %418

300:                                              ; preds = %105
  %301 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %301, i32 0, i32 11
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %326

305:                                              ; preds = %300
  %306 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %306, i32 0, i32 3
  %308 = load %struct.TYPE_37__*, %struct.TYPE_37__** %307, align 8
  %309 = icmp ne %struct.TYPE_37__* %308, null
  br i1 %309, label %310, label %326

310:                                              ; preds = %305
  %311 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %312 = load i32, i32* @EV_MISSILE_HIT, align 4
  %313 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = call i32 @DirToByte(i32* %316)
  %318 = call i32 @G_AddEvent(%struct.TYPE_40__* %311, i32 %312, i32 %317)
  %319 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %319, i32 0, i32 9
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %323, i32 0, i32 9
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 6
  store i32 %322, i32* %325, align 4
  br label %352

326:                                              ; preds = %305, %300
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @SURF_METALSTEPS, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %326
  %334 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %335 = load i32, i32* @EV_MISSILE_MISS_METAL, align 4
  %336 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = call i32 @DirToByte(i32* %339)
  %341 = call i32 @G_AddEvent(%struct.TYPE_40__* %334, i32 %335, i32 %340)
  br label %351

342:                                              ; preds = %326
  %343 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %344 = load i32, i32* @EV_MISSILE_MISS, align 4
  %345 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = call i32 @DirToByte(i32* %348)
  %350 = call i32 @G_AddEvent(%struct.TYPE_40__* %343, i32 %344, i32 %349)
  br label %351

351:                                              ; preds = %342, %333
  br label %352

352:                                              ; preds = %351, %310
  %353 = load i8*, i8** @qtrue, align 8
  %354 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %354, i32 0, i32 10
  store i8* %353, i8** %355, align 8
  %356 = load i8*, i8** @ET_GENERAL, align 8
  %357 = ptrtoint i8* %356 to i64
  %358 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %358, i32 0, i32 9
  %360 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %359, i32 0, i32 2
  store i64 %357, i64* %360, align 8
  %361 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %364, i32 0, i32 9
  %366 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @SnapVectorTowards(i32* %363, i32 %368)
  %370 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = call i32 @G_SetOrigin(%struct.TYPE_40__* %370, i32* %373)
  %375 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %375, i32 0, i32 7
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %415

379:                                              ; preds = %352
  %380 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %383, i32 0, i32 8
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %384, align 8
  %386 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %386, i32 0, i32 7
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %393 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 8
  %396 = call i64 @G_RadiusDamage(i32* %382, %struct.TYPE_31__* %385, i64 %388, i32 %391, %struct.TYPE_40__* %392, i32 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %414

398:                                              ; preds = %379
  %399 = load i8*, i8** %6, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %413, label %401

401:                                              ; preds = %398
  %402 = load %struct.TYPE_40__*, %struct.TYPE_40__** @g_entities, align 8
  %403 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %403, i32 0, i32 4
  %405 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %402, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %407, i32 0, i32 3
  %409 = load %struct.TYPE_37__*, %struct.TYPE_37__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 8
  br label %413

413:                                              ; preds = %401, %398
  br label %414

414:                                              ; preds = %413, %379
  br label %415

415:                                              ; preds = %414, %352
  %416 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %417 = call i32 @trap_LinkEntity(%struct.TYPE_40__* %416)
  br label %418

418:                                              ; preds = %415, %239, %30
  ret void
}

declare dso_local i32 @G_BounceMissile(%struct.TYPE_40__*, %struct.TYPE_39__*) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_33__*, i64, i32*) #1

declare dso_local i64 @VectorLength(i32*) #1

declare dso_local i32 @G_Damage(%struct.TYPE_40__*, %struct.TYPE_40__*, %struct.TYPE_40__*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_40__* @G_Spawn(...) #1

declare dso_local i32 @DirToByte(i32*) #1

declare dso_local i32 @SnapVectorTowards(i32*, i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @G_SetOrigin(%struct.TYPE_40__*, i32*) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_40__*) #1

declare dso_local i64 @G_RadiusDamage(i32*, %struct.TYPE_31__*, i64, i32, %struct.TYPE_40__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
