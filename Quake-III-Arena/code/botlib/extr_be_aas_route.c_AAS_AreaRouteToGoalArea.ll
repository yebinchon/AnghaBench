; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_AreaRouteToGoalArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_AreaRouteToGoalArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_12__*, %struct.TYPE_10__*, i64*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_11__ = type { i32*, i32* }

@aasworld = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@bot_developer = common dso_local global i64 0, align 8
@botimport = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"AAS_AreaTravelTimeToGoalArea: areanum %d out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"AAS_AreaTravelTimeToGoalArea: goalareanum %d out of range\0A\00", align 1
@TFL_DONOTENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_AreaRouteToGoalArea(i32 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca %struct.TYPE_11__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 7), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %7, align 4
  br label %455

31:                                               ; preds = %6
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32*, i32** %12, align 8
  store i32 1, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @qtrue, align 4
  store i32 %38, i32* %7, align 4
  br label %455

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 0), align 8
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42, %39
  %47 = load i64, i64* @bot_developer, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @botimport, i32 0, i32 0), align 8
  %51 = load i32, i32* @PRT_ERROR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 %50(i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %7, align 4
  br label %455

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 0), align 8
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59, %56
  %64 = load i64, i64* @bot_developer, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @botimport, i32 0, i32 0), align 8
  %68 = load i32, i32* @PRT_ERROR, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 %67(i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %7, align 4
  br label %455

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %81, %73
  %75 = call i32 (...) @AvailableMemory()
  %76 = icmp slt i32 %75, 1048576
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = call i32 (...) @AAS_FreeOldestCache()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %82

81:                                               ; preds = %77
  br label %74

82:                                               ; preds = %80, %74
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @AAS_AreaDoNotEnter(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @AAS_AreaDoNotEnter(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @TFL_DONOTENTER, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %94
  %110 = load i32, i32* %15, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 0, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %116
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %22, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %112
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123, %112
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %129, %123
  br label %159

132:                                              ; preds = %109, %94
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %132
  %136 = load i32, i32* %15, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 0, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %142
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %22, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %138
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149, %138
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %155, %149
  br label %158

158:                                              ; preds = %157, %135, %132
  br label %159

159:                                              ; preds = %158, %131
  %160 = load i32, i32* %14, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %248

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %248

165:                                              ; preds = %162
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %248

169:                                              ; preds = %165
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i32 %170, i32 %171, i32 %172)
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %24, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @AAS_ClusterAreaNum(i32 %174, i32 %175)
  store i32 %176, i32* %18, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 6), align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i64 %179
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %23, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp sge i32 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  br label %455

187:                                              ; preds = %169
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %247

196:                                              ; preds = %187
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %202, %209
  %211 = load i32*, i32** %13, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i64, i64* %9, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %196
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %12, align 8
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* @qtrue, align 4
  store i32 %223, i32* %7, align 4
  br label %455

224:                                              ; preds = %196
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 2), align 8
  %226 = load i32*, i32** %13, align 8
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %228
  store %struct.TYPE_12__* %229, %struct.TYPE_12__** %26, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i64, i64* %9, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call zeroext i16 @AAS_AreaTravelTime(i32 %237, i64 %238, i32 %241)
  %243 = zext i16 %242 to i32
  %244 = add nsw i32 %236, %243
  %245 = load i32*, i32** %12, align 8
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* @qtrue, align 4
  store i32 %246, i32* %7, align 4
  br label %455

247:                                              ; preds = %187
  br label %248

248:                                              ; preds = %247, %165, %162, %159
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %14, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %15, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %248
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %265 = load i32, i32* %15, align 4
  %266 = sub nsw i32 0, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i64 %267
  store %struct.TYPE_13__* %268, %struct.TYPE_13__** %22, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %15, align 4
  br label %272

272:                                              ; preds = %263, %248
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* %11, align 4
  %276 = call %struct.TYPE_11__* @AAS_GetPortalRoutingCache(i32 %273, i32 %274, i32 %275)
  store %struct.TYPE_11__* %276, %struct.TYPE_11__** %25, align 8
  %277 = load i32, i32* %14, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %306

279:                                              ; preds = %272
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = sub nsw i32 0, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %12, align 8
  store i32 %287, i32* %288, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sub nsw i32 0, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %294, %302
  %304 = load i32*, i32** %13, align 8
  store i32 %303, i32* %304, align 4
  %305 = load i32, i32* @qtrue, align 4
  store i32 %305, i32* %7, align 4
  br label %455

306:                                              ; preds = %272
  store i16 0, i16* %21, align 2
  store i32 -1, i32* %19, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 6), align 8
  %308 = load i32, i32* %14, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i64 %309
  store %struct.TYPE_14__* %310, %struct.TYPE_14__** %23, align 8
  store i32 0, i32* %17, align 4
  br label %311

311:                                              ; preds = %440, %306
  %312 = load i32, i32* %17, align 4
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %443

317:                                              ; preds = %311
  %318 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 1), align 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %318, i64 %324
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %16, align 4
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %317
  br label %440

336:                                              ; preds = %317
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %338 = load i32, i32* %16, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i64 %339
  store %struct.TYPE_13__* %340, %struct.TYPE_13__** %22, align 8
  %341 = load i32, i32* %14, align 4
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %11, align 4
  %346 = call %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i32 %341, i32 %344, i32 %345)
  store %struct.TYPE_11__* %346, %struct.TYPE_11__** %24, align 8
  %347 = load i32, i32* %14, align 4
  %348 = load i32, i32* %8, align 4
  %349 = call i32 @AAS_ClusterAreaNum(i32 %347, i32 %348)
  store i32 %349, i32* %18, align 4
  %350 = load i32, i32* %18, align 4
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = icmp sge i32 %350, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %336
  br label %440

356:                                              ; preds = %336
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %356
  br label %440

366:                                              ; preds = %356
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %16, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %18, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %373, %380
  %382 = trunc i32 %381 to i16
  store i16 %382, i16* %20, align 2
  %383 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 4), align 8
  %384 = load i32, i32* %16, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i64, i64* %383, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = load i16, i16* %20, align 2
  %389 = zext i16 %388 to i64
  %390 = add nsw i64 %389, %387
  %391 = trunc i64 %390 to i16
  store i16 %391, i16* %20, align 2
  %392 = load i64, i64* %9, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %426

394:                                              ; preds = %366
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %18, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = add nsw i32 %400, %407
  %409 = load i32*, i32** %13, align 8
  store i32 %408, i32* %409, align 4
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 2), align 8
  %411 = load i32*, i32** %13, align 8
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i64 %413
  store %struct.TYPE_12__* %414, %struct.TYPE_12__** %26, align 8
  %415 = load i32, i32* %8, align 4
  %416 = load i64, i64* %9, align 8
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = call zeroext i16 @AAS_AreaTravelTime(i32 %415, i64 %416, i32 %419)
  %421 = zext i16 %420 to i32
  %422 = load i16, i16* %20, align 2
  %423 = zext i16 %422 to i32
  %424 = add nsw i32 %423, %421
  %425 = trunc i32 %424 to i16
  store i16 %425, i16* %20, align 2
  br label %426

426:                                              ; preds = %394, %366
  %427 = load i16, i16* %21, align 2
  %428 = icmp ne i16 %427, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %426
  %430 = load i16, i16* %20, align 2
  %431 = zext i16 %430 to i32
  %432 = load i16, i16* %21, align 2
  %433 = zext i16 %432 to i32
  %434 = icmp slt i32 %431, %433
  br i1 %434, label %435, label %439

435:                                              ; preds = %429, %426
  %436 = load i32*, i32** %13, align 8
  %437 = load i32, i32* %436, align 4
  store i32 %437, i32* %19, align 4
  %438 = load i16, i16* %20, align 2
  store i16 %438, i16* %21, align 2
  br label %439

439:                                              ; preds = %435, %429
  br label %440

440:                                              ; preds = %439, %365, %355, %335
  %441 = load i32, i32* %17, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %17, align 4
  br label %311

443:                                              ; preds = %311
  %444 = load i32, i32* %19, align 4
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %443
  %447 = load i32, i32* @qfalse, align 4
  store i32 %447, i32* %7, align 4
  br label %455

448:                                              ; preds = %443
  %449 = load i32, i32* %19, align 4
  %450 = load i32*, i32** %13, align 8
  store i32 %449, i32* %450, align 4
  %451 = load i16, i16* %21, align 2
  %452 = zext i16 %451 to i32
  %453 = load i32*, i32** %12, align 8
  store i32 %452, i32* %453, align 4
  %454 = load i32, i32* @qtrue, align 4
  store i32 %454, i32* %7, align 4
  br label %455

455:                                              ; preds = %448, %446, %279, %224, %214, %186, %71, %54, %35, %29
  %456 = load i32, i32* %7, align 4
  ret i32 %456
}

declare dso_local i32 @AvailableMemory(...) #1

declare dso_local i32 @AAS_FreeOldestCache(...) #1

declare dso_local i64 @AAS_AreaDoNotEnter(i32) #1

declare dso_local %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i32, i32, i32) #1

declare dso_local i32 @AAS_ClusterAreaNum(i32, i32) #1

declare dso_local zeroext i16 @AAS_AreaTravelTime(i32, i64, i32) #1

declare dso_local %struct.TYPE_11__* @AAS_GetPortalRoutingCache(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
