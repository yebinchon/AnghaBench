; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_AddPlayerWeapon.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_AddPlayerWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64*, i64, i64, i64, i64, i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_26__, i64 }
%struct.TYPE_26__ = type { i64, i64, i64, i64 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_28__, %struct.TYPE_27__, i32 }
%struct.TYPE_28__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_30__ = type { i32*, i32, i32, i64, i32, i32, i32 }

@cg_weapons = common dso_local global %struct.TYPE_29__* null, align 8
@cg = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@WP_RAILGUN = common dso_local global i64 0, align 8
@WEAPON_FIRING = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@EF_FIRING = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tag_weapon\00", align 1
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"tag_barrel\00", align 1
@cg_entities = common dso_local global %struct.TYPE_32__* null, align 8
@WP_LIGHTNING = common dso_local global i64 0, align 8
@WP_GAUNTLET = common dso_local global i64 0, align 8
@WP_GRAPPLING_HOOK = common dso_local global i64 0, align 8
@MUZZLE_FLASH_TIME = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"tag_flash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddPlayerWeapon(%struct.TYPE_30__* %0, i32* %1, %struct.TYPE_32__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__, align 8
  %10 = alloca %struct.TYPE_30__, align 8
  %11 = alloca %struct.TYPE_30__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @CG_RegisterWeapon(i64 %22)
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** @cg_weapons, align 8
  %25 = load i64, i64* %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i64 %25
  store %struct.TYPE_29__* %26, %struct.TYPE_29__** %14, align 8
  %27 = call i32 @memset(%struct.TYPE_30__* %9, i32 0, i32 40)
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @VectorCopy(i32 %30, i32 %32)
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %84

44:                                               ; preds = %4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg, i32 0, i32 1, i32 0), align 8
  %46 = load i64, i64* @WP_RAILGUN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg, i32 0, i32 1, i32 1), align 8
  %50 = load i64, i64* @WEAPON_FIRING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg, i32 0, i32 1, i32 3), align 8
  %54 = sitofp i64 %53 to float
  %55 = fdiv float %54, 1.500000e+03
  store float %55, float* %16, align 4
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 0, i32* %58, align 4
  %59 = load float, float* %16, align 4
  %60 = fpext float %59 to double
  %61 = fsub double 1.000000e+00, %60
  %62 = fmul double 2.550000e+02, %61
  %63 = fptosi double %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %63, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %63, i32* %69, align 4
  br label %83

70:                                               ; preds = %48, %44
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 255, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 255, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 255, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 255, i32* %82, align 4
  br label %83

83:                                               ; preds = %70, %52
  br label %84

84:                                               ; preds = %83, %4
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 3
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %413

93:                                               ; preds = %84
  %94 = load i32*, i32** %6, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %150, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @qfalse, align 4
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @EF_FIRING, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %96
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @vec3_origin, align 4
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @trap_S_AddLoopingSound(i64 %117, i32 %120, i32 %121, i64 %124)
  %126 = load i32, i32* @qtrue, align 4
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  br label %149

130:                                              ; preds = %108, %96
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @vec3_origin, align 4
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @trap_S_AddLoopingSound(i64 %139, i32 %142, i32 %143, i64 %146)
  br label %148

148:                                              ; preds = %135, %130
  br label %149

149:                                              ; preds = %148, %113
  br label %150

150:                                              ; preds = %149, %93
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @CG_PositionEntityOnTag(%struct.TYPE_30__* %9, %struct.TYPE_30__* %151, i64 %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @CG_AddWeaponWithPowerups(%struct.TYPE_30__* %9, i32 %159)
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %209

165:                                              ; preds = %150
  %166 = call i32 @memset(%struct.TYPE_30__* %10, i32 0, i32 40)
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @VectorCopy(i32 %169, i32 %171)
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 5
  store i32 %175, i32* %176, align 4
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 4
  store i32 %179, i32* %180, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 3
  store i64 %183, i64* %184, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = load i64, i64* @YAW, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32 0, i32* %187, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = load i64, i64* @PITCH, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 0, i32* %190, align 4
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %192 = call i32 @CG_MachinegunSpinAngle(%struct.TYPE_32__* %191)
  %193 = load i32*, i32** %12, align 8
  %194 = load i64, i64* @ROLL, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %192, i32* %195, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @AnglesToAxis(i32* %196, i32 %198)
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_30__* %10, %struct.TYPE_30__* %9, i64 %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @CG_AddWeaponWithPowerups(%struct.TYPE_30__* %10, i32 %207)
  br label %209

209:                                              ; preds = %165, %150
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** @cg_entities, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i64 %214
  store %struct.TYPE_32__* %215, %struct.TYPE_32__** %15, align 8
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** @cg_entities, align 8
  %218 = ptrtoint %struct.TYPE_32__* %216 to i64
  %219 = ptrtoint %struct.TYPE_32__* %217 to i64
  %220 = sub i64 %218, %219
  %221 = sdiv exact i64 %220, 64
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %221, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %209
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_32__* %228, %struct.TYPE_32__** %15, align 8
  br label %229

229:                                              ; preds = %227, %209
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* @WP_LIGHTNING, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %241, label %233

233:                                              ; preds = %229
  %234 = load i64, i64* %13, align 8
  %235 = load i64, i64* @WP_GAUNTLET, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  %238 = load i64, i64* %13, align 8
  %239 = load i64, i64* @WP_GRAPPLING_HOOK, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %237, %233, %229
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @EF_FIRING, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %266

250:                                              ; preds = %241, %237
  %251 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg, i32 0, i32 0), align 8
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = sub nsw i64 %251, %254
  %256 = load i64, i64* @MUZZLE_FLASH_TIME, align 8
  %257 = icmp sgt i64 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %258
  br label %413

265:                                              ; preds = %258, %250
  br label %266

266:                                              ; preds = %265, %249
  %267 = call i32 @memset(%struct.TYPE_30__* %11, i32 0, i32 40)
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @VectorCopy(i32 %270, i32 %272)
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 5
  store i32 %276, i32* %277, align 4
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 4
  store i32 %280, i32* %281, align 8
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 3
  store i64 %284, i64* %285, align 8
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %266
  br label %413

290:                                              ; preds = %266
  %291 = load i32*, i32** %12, align 8
  %292 = load i64, i64* @YAW, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32 0, i32* %293, align 4
  %294 = load i32*, i32** %12, align 8
  %295 = load i64, i64* @PITCH, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  store i32 0, i32* %296, align 4
  %297 = call i32 (...) @crandom()
  %298 = mul nsw i32 %297, 10
  %299 = load i32*, i32** %12, align 8
  %300 = load i64, i64* @ROLL, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32 %298, i32* %301, align 4
  %302 = load i32*, i32** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @AnglesToAxis(i32* %302, i32 %304)
  %306 = load i64, i64* %13, align 8
  %307 = load i64, i64* @WP_RAILGUN, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %343

309:                                              ; preds = %290
  %310 = load %struct.TYPE_31__*, %struct.TYPE_31__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cgs, i32 0, i32 0), align 8
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %310, i64 %314
  store %struct.TYPE_31__* %315, %struct.TYPE_31__** %17, align 8
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = mul nsw i32 255, %320
  %322 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  store i32 %321, i32* %324, align 4
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 255, %329
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  store i32 %330, i32* %333, align 4
  %334 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %335 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 2
  %338 = load i32, i32* %337, align 4
  %339 = mul nsw i32 255, %338
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 2
  store i32 %339, i32* %342, align 4
  br label %343

343:                                              ; preds = %309, %290
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_30__* %11, %struct.TYPE_30__* %9, i64 %346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %348 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_30__* %11)
  %349 = load i32*, i32** %6, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %361, label %351

351:                                              ; preds = %343
  %352 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg, i32 0, i32 2), align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %351
  %355 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg, i32 0, i32 1, i32 2), align 8
  %360 = icmp ne i64 %358, %359
  br i1 %360, label %361, label %413

361:                                              ; preds = %354, %351, %343
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %363 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @CG_LightningBolt(%struct.TYPE_32__* %362, i32 %364)
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @CG_SpawnRailTrail(%struct.TYPE_32__* %366, i32 %368)
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %390, label %376

376:                                              ; preds = %361
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 0
  %379 = load i64*, i64** %378, align 8
  %380 = getelementptr inbounds i64, i64* %379, i64 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %390, label %383

383:                                              ; preds = %376
  %384 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 0
  %386 = load i64*, i64** %385, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 2
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %412

390:                                              ; preds = %383, %376, %361
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = call i32 (...) @rand()
  %394 = and i32 %393, 31
  %395 = add nsw i32 300, %394
  %396 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %397 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %396, i32 0, i32 0
  %398 = load i64*, i64** %397, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 0
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %402 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %401, i32 0, i32 0
  %403 = load i64*, i64** %402, align 8
  %404 = getelementptr inbounds i64, i64* %403, i64 1
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %407 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %406, i32 0, i32 0
  %408 = load i64*, i64** %407, align 8
  %409 = getelementptr inbounds i64, i64* %408, i64 2
  %410 = load i64, i64* %409, align 8
  %411 = call i32 @trap_R_AddLightToScene(i32 %392, i32 %395, i64 %400, i64 %405, i64 %410)
  br label %412

412:                                              ; preds = %390, %383
  br label %413

413:                                              ; preds = %92, %264, %289, %412, %354
  ret void
}

declare dso_local i32 @CG_RegisterWeapon(i64) #1

declare dso_local i32 @memset(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_S_AddLoopingSound(i64, i32, i32, i64) #1

declare dso_local i32 @CG_PositionEntityOnTag(%struct.TYPE_30__*, %struct.TYPE_30__*, i64, i8*) #1

declare dso_local i32 @CG_AddWeaponWithPowerups(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @CG_MachinegunSpinAngle(%struct.TYPE_32__*) #1

declare dso_local i32 @AnglesToAxis(i32*, i32) #1

declare dso_local i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_30__*, %struct.TYPE_30__*, i64, i8*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_30__*) #1

declare dso_local i32 @CG_LightningBolt(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @CG_SpawnRailTrail(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @trap_R_AddLightToScene(i32, i32, i64, i64, i64) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
