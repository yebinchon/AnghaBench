; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_PlayerStateToEntityStateExtraPolate.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_PlayerStateToEntityStateExtraPolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64*, i32, i32, i32, i32*, i32, i32, i64*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__, %struct.TYPE_7__, i32, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@PM_INTERMISSION = common dso_local global i64 0, align 8
@PM_SPECTATOR = common dso_local global i64 0, align 8
@ET_INVISIBLE = common dso_local global i8* null, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@GIB_HEALTH = common dso_local global i64 0, align 8
@ET_PLAYER = common dso_local global i8* null, align 8
@TR_LINEAR_STOP = common dso_local global i32 0, align 4
@TR_INTERPOLATE = common dso_local global i32 0, align 4
@YAW = common dso_local global i64 0, align 8
@EF_DEAD = common dso_local global i32 0, align 4
@MAX_PS_EVENTS = common dso_local global i32 0, align 4
@MAX_POWERUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BG_PlayerStateToEntityStateExtraPolate(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PM_INTERMISSION, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PM_SPECTATOR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %4
  %23 = load i8*, i8** @ET_INVISIBLE, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 15
  store i8* %23, i8** %25, align 8
  br label %44

26:                                               ; preds = %16
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @STAT_HEALTH, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GIB_HEALTH, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i8*, i8** @ET_INVISIBLE, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 15
  store i8* %36, i8** %38, align 8
  br label %43

39:                                               ; preds = %26
  %40 = load i8*, i8** @ET_PLAYER, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 14
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @TR_LINEAR_STOP, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 13
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 20
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 13
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @VectorCopy(i32 %56, i32 %60)
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %44
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SnapVector(i32 %68)
  br label %70

70:                                               ; preds = %64, %44
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 13
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @VectorCopy(i32 %73, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 13
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 13
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 50, i32* %85, align 4
  %86 = load i32, i32* @TR_INTERPOLATE, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 12
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 18
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @VectorCopy(i32 %92, i32 %96)
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %70
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 12
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @SnapVector(i32 %104)
  br label %106

106:                                              ; preds = %100, %70
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 17
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 11
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @YAW, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 16
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 15
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 14
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @STAT_HEALTH, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp sle i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %106
  %143 = load i32, i32* @EF_DEAD, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %155

148:                                              ; preds = %106
  %149 = load i32, i32* @EF_DEAD, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %148, %142
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  br label %233

171:                                              ; preds = %155
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %232

179:                                              ; preds = %171
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MAX_PS_EVENTS, align 4
  %187 = sub nsw i32 %185, %186
  %188 = icmp slt i32 %182, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %179
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @MAX_PS_EVENTS, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %189, %179
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @MAX_PS_EVENTS, align 4
  %202 = sub nsw i32 %201, 1
  %203 = and i32 %200, %202
  store i32 %203, i32* %10, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 3
  %215 = shl i32 %214, 8
  %216 = or i32 %210, %215
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 11
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %197, %171
  br label %233

233:                                              ; preds = %232, %160
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 4
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  store i32 0, i32* %9, align 4
  br label %246

246:                                              ; preds = %267, %233
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* @MAX_POWERUPS, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %270

250:                                              ; preds = %246
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 8
  %253 = load i64*, i64** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %250
  %260 = load i32, i32* %9, align 4
  %261 = shl i32 1, %260
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %259, %250
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %246

270:                                              ; preds = %246
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @SnapVector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
