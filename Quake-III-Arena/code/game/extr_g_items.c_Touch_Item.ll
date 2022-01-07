; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_Touch_Item.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_Touch_Item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_40__ = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_39__, %struct.TYPE_36__, i8*, i8*, i32, %struct.TYPE_37__*, %struct.TYPE_35__* }
%struct.TYPE_39__ = type { i64, i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32, i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__, i32 }
%struct.TYPE_34__ = type { i64 }

@g_gametype = common dso_local global %struct.TYPE_42__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"Item: %i %s\0A\00", align 1
@qfalse = common dso_local global i64 0, align 8
@EV_ITEM_PICKUP = common dso_local global i32 0, align 4
@EV_GLOBAL_ITEM_PICKUP = common dso_local global i32 0, align 4
@SVF_BROADCAST = common dso_local global i32 0, align 4
@SVF_SINGLECLIENT = common dso_local global i32 0, align 4
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@EF_NODRAW = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@FL_DROPPED_ITEM = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_41__ zeroinitializer, align 8
@RespawnItem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Touch_Item(%struct.TYPE_40__* %0, %struct.TYPE_40__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_40__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %4, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 12
  %13 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %14 = icmp ne %struct.TYPE_35__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %278

16:                                               ; preds = %3
  %17 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %278

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @g_gametype, i32 0, i32 0), align 4
  %24 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %26, i32 0, i32 12
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 1
  %30 = call i32 @BG_CanItemBeGrabbed(i32 %23, %struct.TYPE_36__* %25, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %278

33:                                               ; preds = %22
  %34 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %38, i32 0, i32 11
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  %44 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %44, i32 0, i32 12
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 11
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %84 [
    i32 128, label %55
    i32 135, label %59
    i32 134, label %63
    i32 133, label %67
    i32 130, label %71
    i32 129, label %76
    i32 132, label %80
  ]

55:                                               ; preds = %33
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %57 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %58 = call i32 @Pickup_Weapon(%struct.TYPE_40__* %56, %struct.TYPE_40__* %57)
  store i32 %58, i32* %7, align 4
  br label %85

59:                                               ; preds = %33
  %60 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %62 = call i32 @Pickup_Ammo(%struct.TYPE_40__* %60, %struct.TYPE_40__* %61)
  store i32 %62, i32* %7, align 4
  br label %85

63:                                               ; preds = %33
  %64 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %65 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %66 = call i32 @Pickup_Armor(%struct.TYPE_40__* %64, %struct.TYPE_40__* %65)
  store i32 %66, i32* %7, align 4
  br label %85

67:                                               ; preds = %33
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %70 = call i32 @Pickup_Health(%struct.TYPE_40__* %68, %struct.TYPE_40__* %69)
  store i32 %70, i32* %7, align 4
  br label %85

71:                                               ; preds = %33
  %72 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %73 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %74 = call i32 @Pickup_Powerup(%struct.TYPE_40__* %72, %struct.TYPE_40__* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i64, i64* @qfalse, align 8
  store i64 %75, i64* %8, align 8
  br label %85

76:                                               ; preds = %33
  %77 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %78 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %79 = call i32 @Pickup_Team(%struct.TYPE_40__* %77, %struct.TYPE_40__* %78)
  store i32 %79, i32* %7, align 4
  br label %85

80:                                               ; preds = %33
  %81 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %82 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %83 = call i32 @Pickup_Holdable(%struct.TYPE_40__* %81, %struct.TYPE_40__* %82)
  store i32 %83, i32* %7, align 4
  br label %85

84:                                               ; preds = %33
  br label %278

85:                                               ; preds = %80, %76, %71, %67, %63, %59, %55
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  br label %278

89:                                               ; preds = %85
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %94 = load i32, i32* @EV_ITEM_PICKUP, align 4
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @G_AddPredictableEvent(%struct.TYPE_40__* %93, i32 %94, i32 %98)
  br label %108

100:                                              ; preds = %89
  %101 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %102 = load i32, i32* @EV_ITEM_PICKUP, align 4
  %103 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @G_AddEvent(%struct.TYPE_40__* %101, i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %100, %92
  %109 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %109, i32 0, i32 11
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 130
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %116, i32 0, i32 11
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 129
  br i1 %121, label %122, label %177

122:                                              ; preds = %115, %108
  %123 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %148, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @EV_GLOBAL_ITEM_PICKUP, align 4
  %134 = call %struct.TYPE_40__* @G_TempEntity(i32 %132, i32 %133)
  store %struct.TYPE_40__* %134, %struct.TYPE_40__** %9, align 8
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @SVF_BROADCAST, align 4
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %176

148:                                              ; preds = %122
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @EV_GLOBAL_ITEM_PICKUP, align 4
  %155 = call %struct.TYPE_40__* @G_TempEntity(i32 %153, i32 %154)
  store %struct.TYPE_40__* %155, %struct.TYPE_40__** %10, align 8
  %156 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @SVF_SINGLECLIENT, align 4
  %164 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 4
  br label %176

176:                                              ; preds = %148, %127
  br label %177

177:                                              ; preds = %176, %115
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %180 = call i32 @G_UseTargets(%struct.TYPE_40__* %178, %struct.TYPE_40__* %179)
  %181 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %204

185:                                              ; preds = %177
  %186 = load i32, i32* @SVF_NOCLIENT, align 4
  %187 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* @EF_NODRAW, align 4
  %193 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %192
  store i32 %197, i32* %195, align 8
  %198 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %198, i32 0, i32 6
  %200 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  %201 = load i8*, i8** @qtrue, align 8
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 9
  store i8* %201, i8** %203, align 8
  br label %278

204:                                              ; preds = %177
  %205 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %209, %204
  %214 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %213
  %219 = call i32 (...) @crandom()
  %220 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = mul nsw i32 %219, %222
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp slt i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  store i32 1, i32* %7, align 4
  br label %229

229:                                              ; preds = %228, %218
  br label %230

230:                                              ; preds = %229, %213
  %231 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @FL_DROPPED_ITEM, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load i8*, i8** @qtrue, align 8
  %239 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %239, i32 0, i32 8
  store i8* %238, i8** %240, align 8
  br label %241

241:                                              ; preds = %237, %230
  %242 = load i32, i32* @SVF_NOCLIENT, align 4
  %243 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %242
  store i32 %247, i32* %245, align 8
  %248 = load i32, i32* @EF_NODRAW, align 4
  %249 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %248
  store i32 %253, i32* %251, align 8
  %254 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %255, i32 0, i32 0
  store i64 0, i64* %256, align 8
  %257 = load i32, i32* %7, align 4
  %258 = icmp sle i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %241
  %260 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %260, i32 0, i32 5
  store i64 0, i64* %261, align 8
  %262 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %262, i32 0, i32 4
  store i64 0, i64* %263, align 8
  br label %275

264:                                              ; preds = %241
  %265 = load i64, i64* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @level, i32 0, i32 0), align 8
  %266 = load i32, i32* %7, align 4
  %267 = mul nsw i32 %266, 1000
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %265, %268
  %270 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %270, i32 0, i32 5
  store i64 %269, i64* %271, align 8
  %272 = load i64, i64* @RespawnItem, align 8
  %273 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %273, i32 0, i32 4
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %264, %259
  %276 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %277 = call i32 @trap_LinkEntity(%struct.TYPE_40__* %276)
  br label %278

278:                                              ; preds = %275, %185, %88, %84, %32, %21, %15
  ret void
}

declare dso_local i32 @BG_CanItemBeGrabbed(i32, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @G_LogPrintf(i8*, i32, i32) #1

declare dso_local i32 @Pickup_Weapon(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @Pickup_Ammo(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @Pickup_Armor(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @Pickup_Health(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @Pickup_Powerup(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @Pickup_Team(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @Pickup_Holdable(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @G_AddPredictableEvent(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_40__*, i32, i32) #1

declare dso_local %struct.TYPE_40__* @G_TempEntity(i32, i32) #1

declare dso_local i32 @G_UseTargets(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
