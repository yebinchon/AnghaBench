; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_weapon_railgun_fire.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_weapon_railgun_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__*, %struct.TYPE_22__, i64 }
%struct.TYPE_24__ = type { i64, i32, i64, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }

@MAX_RAIL_HITS = common dso_local global i32 0, align 4
@s_quadFactor = common dso_local global i32 0, align 4
@muzzle = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@ENTITYNUM_MAX_NORMAL = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_26__* null, align 8
@MOD_RAILGUN = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@EV_RAILTRAIL = common dso_local global i32 0, align 4
@right = common dso_local global i32 0, align 4
@up = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@EF_AWARD_IMPRESSIVE = common dso_local global i32 0, align 4
@EF_AWARD_EXCELLENT = common dso_local global i32 0, align 4
@EF_AWARD_GAUNTLET = common dso_local global i32 0, align 4
@EF_AWARD_ASSIST = common dso_local global i32 0, align 4
@EF_AWARD_DEFEND = common dso_local global i32 0, align 4
@EF_AWARD_CAP = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@REWARD_SPRITE_TIME = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @weapon_railgun_fire(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %14 = load i32, i32* @MAX_RAIL_HITS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca %struct.TYPE_26__*, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load i32, i32* @s_quadFactor, align 4
  %19 = mul nsw i32 100, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @muzzle, align 4
  %21 = load i32, i32* @forward, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @VectorMA(i32 %20, i32 8192, i32 %21, i32 %22)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %82, %1
  %29 = load i32, i32* @muzzle, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MASK_SHOT, align 4
  %33 = call i32 @trap_Trace(%struct.TYPE_25__* %4, i32 %29, i32* null, i32* null, i32 %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ENTITYNUM_MAX_NORMAL, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %86

39:                                               ; preds = %28
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** @g_entities, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i64 %42
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %6, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %39
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %51 = call i64 @LogAccuracyHit(%struct.TYPE_26__* %49, %struct.TYPE_26__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %60 = load i32, i32* @forward, align 4
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MOD_RAILGUN, align 4
  %65 = call i32 @G_Damage(%struct.TYPE_26__* %57, %struct.TYPE_26__* %58, %struct.TYPE_26__* %59, i32 %60, i32 %62, i32 %63, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %56, %39
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CONTENTS_SOLID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %86

73:                                               ; preds = %66
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %75 = call i32 @trap_UnlinkEntity(%struct.TYPE_26__* %74)
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %17, i64 %78
  store %struct.TYPE_26__* %76, %struct.TYPE_26__** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @MAX_RAIL_HITS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %28, label %86

86:                                               ; preds = %82, %72, %38
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %97, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %17, i64 %93
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = call i32 @trap_LinkEntity(%struct.TYPE_26__* %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %87

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @muzzle, align 4
  %104 = call i32 @SnapVectorTowards(i32 %102, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @EV_RAILTRAIL, align 4
  %108 = call %struct.TYPE_26__* @G_TempEntity(i32 %106, i32 %107)
  store %struct.TYPE_26__* %108, %struct.TYPE_26__** %5, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* @muzzle, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @VectorCopy(i32 %116, i32 %120)
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @right, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @VectorMA(i32 %125, i32 4, i32 %126, i32 %130)
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @up, align 4
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @VectorMA(i32 %135, i32 -1, i32 %136, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SURF_NOIMPACT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %100
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  store i32 255, i32* %150, align 4
  br label %159

151:                                              ; preds = %100
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @DirToByte(i32 %154)
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  br label %159

159:                                              ; preds = %151, %147
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* %9, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %159
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 8
  br label %246

174:                                              ; preds = %159
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, %175
  store i32 %181, i32* %179, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp sge i32 %186, 2
  br i1 %187, label %188, label %239

188:                                              ; preds = %174
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, 2
  store i32 %194, i32* %192, align 8
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* @EF_AWARD_IMPRESSIVE, align 4
  %206 = load i32, i32* @EF_AWARD_EXCELLENT, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @EF_AWARD_GAUNTLET, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @EF_AWARD_ASSIST, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @EF_AWARD_DEFEND, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @EF_AWARD_CAP, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, %216
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* @EF_AWARD_IMPRESSIVE, align 4
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %224
  store i32 %231, i32* %229, align 8
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @level, i32 0, i32 0), align 8
  %233 = load i64, i64* @REWARD_SPRITE_TIME, align 8
  %234 = add nsw i64 %232, %233
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 2
  store i64 %234, i64* %238, align 8
  br label %239

239:                                              ; preds = %188, %174
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %239, %169
  %247 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %247)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #2

declare dso_local i32 @trap_Trace(%struct.TYPE_25__*, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_26__*, %struct.TYPE_26__*) #2

declare dso_local i32 @G_Damage(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_26__*) #2

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_26__*) #2

declare dso_local i32 @SnapVectorTowards(i32, i32) #2

declare dso_local %struct.TYPE_26__* @G_TempEntity(i32, i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @DirToByte(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
