; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q2.c_Q2_ParseMapEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q2.c_Q2_ParseMapEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i64*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_20__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ParseEntity: { not found\00", align 1
@num_entities = common dso_local global i64 0, align 8
@MAX_MAP_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"num_entities == MAX_MAP_ENTITIES\00", align 1
@nummapbrushes = common dso_local global i32 0, align 4
@nummapbrushsides = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_24__* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ParseEntity: EOF without closing brace\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_22__* null, align 8
@mapplanes = common dso_local global %struct.TYPE_25__* null, align 8
@side_brushtextures = common dso_local global i32* null, align 8
@brushsides = common dso_local global %struct.TYPE_21__* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"func_group\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"func_areaportal\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Entity %i: func_areaportal can only be a single brush\00", align 1
@CONTENTS_AREAPORTAL = common dso_local global i32 0, align 4
@c_areaportals = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"style\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Q2_ParseMapEntity(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca [128 x i8], align 16
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @PS_ReadToken(i32* %15, %struct.TYPE_20__* %13)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %244

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i64, i64* @num_entities, align 8
  %28 = load i64, i64* @MAX_MAP_ENTITIES, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* @nummapbrushes, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @nummapbrushsides, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** @entities, align 8
  %36 = load i64, i64* @num_entities, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i64 %36
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %4, align 8
  %38 = load i64, i64* @num_entities, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* @num_entities, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = call i32 @memset(%struct.TYPE_24__* %40, i32 0, i32 32)
  %42 = load i32, i32* @nummapbrushes, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %82, %32
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @PS_ReadToken(i32* %48, %struct.TYPE_20__* %13)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %83

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = call i32 @Q2_ParseBrush(i32* %65, %struct.TYPE_24__* %66)
  br label %81

68:                                               ; preds = %59
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @PS_UnreadLastToken(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call %struct.TYPE_23__* @ParseEpair(i32* %71)
  store %struct.TYPE_23__* %72, %struct.TYPE_23__** %5, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  store %struct.TYPE_23__* %75, %struct.TYPE_23__** %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 4
  store %struct.TYPE_23__* %78, %struct.TYPE_23__** %80, align 8
  br label %81

81:                                               ; preds = %68, %64
  br label %82

82:                                               ; preds = %81
  br i1 true, label %47, label %83

83:                                               ; preds = %82, %58
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 @GetVectorForKey(%struct.TYPE_24__* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64* %87)
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %83
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %197

109:                                              ; preds = %102, %95, %83
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %193, %109
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %196

116:                                              ; preds = %110
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapbrushes, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i64 %123
  store %struct.TYPE_22__* %124, %struct.TYPE_22__** %12, align 8
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %187, %116
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %190

131:                                              ; preds = %125
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i64 %136
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %6, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 3
  %154 = load i64*, i64** %153, align 8
  %155 = call i64 @DotProduct(i32 %151, i64* %154)
  %156 = sub nsw i64 %144, %155
  store i64 %156, i64* %11, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i64 @FindFloatPlane(i32 %163, i64 %164)
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i64 %171
  %173 = load i32*, i32** @side_brushtextures, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** @brushsides, align 8
  %176 = ptrtoint %struct.TYPE_21__* %174 to i64
  %177 = ptrtoint %struct.TYPE_21__* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 16
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 3
  %183 = load i64*, i64** %182, align 8
  %184 = call i32 @TexinfoForBrushTexture(%struct.TYPE_25__* %172, i32* %180, i64* %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %131
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %125

190:                                              ; preds = %125
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %192 = call i32 @MakeBrushWindings(%struct.TYPE_22__* %191)
  br label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %110

196:                                              ; preds = %110
  br label %197

197:                                              ; preds = %196, %102
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %199 = call i8* @ValueForKey(%struct.TYPE_24__* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %200 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %204 = call i32 @Q2_MoveBrushesToWorld(%struct.TYPE_24__* %203)
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  store i32 0, i32* %206, align 4
  store i32 1, i32* %2, align 4
  br label %244

207:                                              ; preds = %197
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %209 = call i8* @ValueForKey(%struct.TYPE_24__* %208, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %210 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %243, label %212

212:                                              ; preds = %207
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 1
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i64, i64* @num_entities, align 8
  %219 = sub i64 %218, 1
  %220 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %219)
  br label %221

221:                                              ; preds = %217, %212
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapbrushes, align 8
  %223 = load i32, i32* @nummapbrushes, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i64 %225
  store %struct.TYPE_22__* %226, %struct.TYPE_22__** %12, align 8
  %227 = load i32, i32* @CONTENTS_AREAPORTAL, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @c_areaportals, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* @c_areaportals, align 4
  %232 = load i32, i32* @c_areaportals, align 4
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %236 = load i32, i32* @c_areaportals, align 4
  %237 = call i32 @sprintf(i8* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %236)
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %239 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %240 = call i32 @SetKeyValue(%struct.TYPE_24__* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %239)
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %242 = call i32 @Q2_MoveBrushesToWorld(%struct.TYPE_24__* %241)
  store i32 1, i32* %2, align 4
  br label %244

243:                                              ; preds = %207
  store i32 1, i32* %2, align 4
  br label %244

244:                                              ; preds = %243, %221, %202, %18
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @PS_ReadToken(i32*, %struct.TYPE_20__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @Q2_ParseBrush(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @PS_UnreadLastToken(i32*) #1

declare dso_local %struct.TYPE_23__* @ParseEpair(i32*) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_24__*, i8*, i64*) #1

declare dso_local i64 @DotProduct(i32, i64*) #1

declare dso_local i64 @FindFloatPlane(i32, i64) #1

declare dso_local i32 @TexinfoForBrushTexture(%struct.TYPE_25__*, i32*, i64*) #1

declare dso_local i32 @MakeBrushWindings(%struct.TYPE_22__*) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @Q2_MoveBrushesToWorld(%struct.TYPE_24__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SetKeyValue(%struct.TYPE_24__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
