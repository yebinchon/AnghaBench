; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_Weapon.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_Weapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64*, i64*, i32, i64, i64, i32*, i64* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@pm = common dso_local global %struct.TYPE_9__* null, align 8
@PMF_RESPAWNED = common dso_local global i32 0, align 4
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@WP_NONE = common dso_local global i32 0, align 4
@BUTTON_USE_HOLDABLE = common dso_local global i32 0, align 4
@PMF_USE_ITEM_HELD = common dso_local global i32 0, align 4
@bg_itemlist = common dso_local global %struct.TYPE_10__* null, align 8
@STAT_HOLDABLE_ITEM = common dso_local global i64 0, align 8
@HI_MEDKIT = common dso_local global i64 0, align 8
@STAT_MAX_HEALTH = common dso_local global i64 0, align 8
@EV_USE_ITEM0 = common dso_local global i64 0, align 8
@pml = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@WEAPON_FIRING = common dso_local global i64 0, align 8
@WEAPON_DROPPING = common dso_local global i64 0, align 8
@WEAPON_RAISING = common dso_local global i64 0, align 8
@WEAPON_READY = common dso_local global i8* null, align 8
@TORSO_STAND2 = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@BUTTON_ATTACK = common dso_local global i32 0, align 4
@TORSO_ATTACK2 = common dso_local global i32 0, align 4
@TORSO_ATTACK = common dso_local global i32 0, align 4
@EV_NOAMMO = common dso_local global i64 0, align 8
@EV_FIRE_WEAPON = common dso_local global i64 0, align 8
@PW_HASTE = common dso_local global i64 0, align 8
@PW_AMMOREGEN = common dso_local global i64 0, align 8
@PW_SCOUT = common dso_local global i64 0, align 8
@STAT_PERSISTANT_POWERUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_Weapon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_Weapon() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %3 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @PMF_RESPAWNED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %376

11:                                               ; preds = %0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @PERS_TEAM, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TEAM_SPECTATOR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %376

23:                                               ; preds = %11
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @STAT_HEALTH, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ule i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32, i32* @WP_NONE, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i32 %34, i32* %38, align 8
  br label %376

39:                                               ; preds = %23
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BUTTON_USE_HOLDABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %123

47:                                               ; preds = %39
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PMF_USE_ITEM_HELD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %122, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bg_itemlist, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @STAT_HOLDABLE_ITEM, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HI_MEDKIT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %56
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @STAT_HEALTH, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 25
  %89 = icmp uge i64 %79, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %121

91:                                               ; preds = %71, %56
  %92 = load i32, i32* @PMF_USE_ITEM_HELD, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 8
  %99 = load i64, i64* @EV_USE_ITEM0, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bg_itemlist, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @STAT_HOLDABLE_ITEM, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %99, %111
  %113 = call i32 @PM_AddEvent(i64 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @STAT_HOLDABLE_ITEM, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %91, %90
  br label %376

122:                                              ; preds = %47
  br label %132

123:                                              ; preds = %39
  %124 = load i32, i32* @PMF_USE_ITEM_HELD, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %125
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %123, %122
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pml, i32 0, i32 0), align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %145, %140
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %139, %132
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp sle i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @WEAPON_FIRING, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %154, %147
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %167, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %162
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @PM_BeginWeaponChange(i32 %177)
  br label %179

179:                                              ; preds = %173, %162
  br label %180

180:                                              ; preds = %179, %154
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %376

188:                                              ; preds = %180
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @WEAPON_DROPPING, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = call i32 (...) @PM_FinishWeaponChange()
  br label %376

198:                                              ; preds = %188
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @WEAPON_RAISING, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %226

206:                                              ; preds = %198
  %207 = load i8*, i8** @WEAPON_READY, align 8
  %208 = ptrtoint i8* %207 to i64
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 5
  store i64 %208, i64* %212, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 138
  br i1 %218, label %219, label %222

219:                                              ; preds = %206
  %220 = load i32, i32* @TORSO_STAND2, align 4
  %221 = call i32 @PM_StartTorsoAnim(i32 %220)
  br label %225

222:                                              ; preds = %206
  %223 = load i32, i32* @TORSO_STAND, align 4
  %224 = call i32 @PM_StartTorsoAnim(i32 %223)
  br label %225

225:                                              ; preds = %222, %219
  br label %376

226:                                              ; preds = %198
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @BUTTON_ATTACK, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %226
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  store i64 0, i64* %238, align 8
  %239 = load i8*, i8** @WEAPON_READY, align 8
  %240 = ptrtoint i8* %239 to i64
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 5
  store i64 %240, i64* %244, align 8
  br label %376

245:                                              ; preds = %226
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 138
  br i1 %251, label %252, label %271

252:                                              ; preds = %245
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %268, label %257

257:                                              ; preds = %252
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 4
  store i64 0, i64* %261, align 8
  %262 = load i8*, i8** @WEAPON_READY, align 8
  %263 = ptrtoint i8* %262 to i64
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 5
  store i64 %263, i64* %267, align 8
  br label %376

268:                                              ; preds = %252
  %269 = load i32, i32* @TORSO_ATTACK2, align 4
  %270 = call i32 @PM_StartTorsoAnim(i32 %269)
  br label %274

271:                                              ; preds = %245
  %272 = load i32, i32* @TORSO_ATTACK, align 4
  %273 = call i32 @PM_StartTorsoAnim(i32 %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i64, i64* @WEAPON_FIRING, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 5
  store i64 %275, i64* %279, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 6
  %284 = load i32*, i32** %283, align 8
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %284, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %274
  %295 = load i64, i64* @EV_NOAMMO, align 8
  %296 = call i32 @PM_AddEvent(i64 %295)
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, 500
  store i64 %302, i64* %300, align 8
  br label %376

303:                                              ; preds = %274
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 6
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %308, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, -1
  br i1 %317, label %318, label %333

318:                                              ; preds = %303
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 6
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %323, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %330, align 4
  br label %333

333:                                              ; preds = %318, %303
  %334 = load i64, i64* @EV_FIRE_WEAPON, align 8
  %335 = call i32 @PM_AddEvent(i64 %334)
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  switch i32 %340, label %341 [
    i32 138, label %342
    i32 135, label %343
    i32 128, label %344
    i32 134, label %345
    i32 136, label %346
    i32 129, label %347
    i32 132, label %348
    i32 130, label %349
    i32 140, label %350
    i32 137, label %351
  ]

341:                                              ; preds = %333
  br label %342

342:                                              ; preds = %333, %341
  store i32 400, i32* %1, align 4
  br label %352

343:                                              ; preds = %333
  store i32 50, i32* %1, align 4
  br label %352

344:                                              ; preds = %333
  store i32 1000, i32* %1, align 4
  br label %352

345:                                              ; preds = %333
  store i32 100, i32* %1, align 4
  br label %352

346:                                              ; preds = %333
  store i32 800, i32* %1, align 4
  br label %352

347:                                              ; preds = %333
  store i32 800, i32* %1, align 4
  br label %352

348:                                              ; preds = %333
  store i32 100, i32* %1, align 4
  br label %352

349:                                              ; preds = %333
  store i32 1500, i32* %1, align 4
  br label %352

350:                                              ; preds = %333
  store i32 200, i32* %1, align 4
  br label %352

351:                                              ; preds = %333
  store i32 400, i32* %1, align 4
  br label %352

352:                                              ; preds = %351, %350, %349, %348, %347, %346, %345, %344, %343, %342
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 7
  %357 = load i64*, i64** %356, align 8
  %358 = load i64, i64* @PW_HASTE, align 8
  %359 = getelementptr inbounds i64, i64* %357, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %352
  %363 = load i32, i32* %1, align 4
  %364 = sitofp i32 %363 to double
  %365 = fdiv double %364, 1.300000e+00
  %366 = fptosi double %365 to i32
  store i32 %366, i32* %1, align 4
  br label %367

367:                                              ; preds = %362, %352
  %368 = load i32, i32* %1, align 4
  %369 = sext i32 %368 to i64
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = add nsw i64 %374, %369
  store i64 %375, i64* %373, align 8
  br label %376

376:                                              ; preds = %367, %294, %257, %234, %225, %196, %187, %121, %33, %22, %10
  ret void
}

declare dso_local i32 @PM_AddEvent(i64) #1

declare dso_local i32 @PM_BeginWeaponChange(i32) #1

declare dso_local i32 @PM_FinishWeaponChange(...) #1

declare dso_local i32 @PM_StartTorsoAnim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
