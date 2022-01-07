; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_LoadPortals.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_LoadPortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, double** }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"LoadPortals: couldn't read %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%79s\0A%i\0A%i\0A%i\0A\00", align 1
@portalclusters = common dso_local global i32 0, align 4
@numportals = common dso_local global i32 0, align 4
@numfaces = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"LoadPortals: failed to read header\00", align 1
@PORTALFILE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"LoadPortals: not a portal file\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%6i portalclusters\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%6i numportals\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%6i numfaces\0A\00", align 1
@MAX_CLUSTERS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"more than %d clusters in portal file\0A\00", align 1
@portals = common dso_local global %struct.TYPE_14__* null, align 8
@leafs = common dso_local global %struct.TYPE_14__* null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"%i %i %i \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"LoadPortals: reading portal %i\00", align 1
@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"LoadPortals: portal %i has too many points\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"LoadPortals: reading hint state\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"(%lf %lf %lf ) \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_PORTALS_ON_LEAF = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [27 x i8] c"Leaf with too many portals\00", align 1
@vec3_origin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_LoadPortals(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca [3 x double], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32*, i32** @stdin, align 8
  store i32* %20, i32** %9, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load i8*, i8** %2, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %33 = call i32 (i32*, i8*, ...) @fscanf(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %32, i32* @portalclusters, i32* @numportals, i32* @numfaces)
  %34 = icmp ne i32 %33, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %39 = load i8*, i8** @PORTALFILE, align 8
  %40 = call i64 @strcmp(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* @portalclusters, align 4
  %46 = call i32 @_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @numportals, align 4
  %48 = call i32 @_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @numfaces, align 4
  %50 = call i32 @_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @portalclusters, align 4
  %52 = load i32, i32* @MAX_CLUSTERS, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @MAX_CLUSTERS, align 4
  %56 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %44
  %58 = load i32, i32* @numportals, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 40
  %62 = trunc i64 %61 to i32
  %63 = call %struct.TYPE_14__* @malloc(i32 %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** @portals, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @portals, align 8
  %65 = load i32, i32* @numportals, align 4
  %66 = mul nsw i32 2, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 40
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.TYPE_14__* %64, i32 0, i32 %69)
  %71 = load i32, i32* @portalclusters, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 40
  %74 = trunc i64 %73 to i32
  %75 = call %struct.TYPE_14__* @malloc(i32 %74)
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** @leafs, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leafs, align 8
  %77 = load i32, i32* @portalclusters, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 40
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(%struct.TYPE_14__* %76, i32 0, i32 %80)
  store i32 0, i32* %3, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** @portals, align 8
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %6, align 8
  br label %83

83:                                               ; preds = %310, %57
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @numportals, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %313

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %91 = call i32 (i32*, i8*, ...) @fscanf(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %10, i32* %89, i32* %90)
  %92 = icmp ne i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %3, align 4
  %95 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @portalclusters, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @portalclusters, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 (i32*, i8*, ...) @fscanf(i32* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32* %5)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i32, i32* %10, align 4
  %124 = call i8* @VL_AllocWinding(i32 %123)
  %125 = bitcast i8* %124 to %struct.TYPE_12__*
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %127, align 8
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %11, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %168, %122
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %138 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %139 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %140 = call i32 (i32*, i8*, ...) @fscanf(i32* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), double* %137, double* %138, double* %139)
  %141 = icmp ne i32 %140, 3
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %3, align 4
  %144 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %142, %135
  store i32 0, i32* %15, align 4
  br label %146

146:                                              ; preds = %164, %145
  %147 = load i32, i32* %15, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 %151
  %153 = load double, double* %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load double**, double*** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double*, double** %156, i64 %158
  %160 = load double*, double** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %160, i64 %162
  store double %153, double* %163, align 8
  br label %164

164:                                              ; preds = %149
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %146

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %131

171:                                              ; preds = %131
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 (i32*, i8*, ...) @fscanf(i32* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %175 = call i32 @VL_PlaneFromWinding(%struct.TYPE_12__* %174, %struct.TYPE_13__* %13)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leafs, align 8
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %179
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %7, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %171
  %187 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %171
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %192, i64 %195
  store %struct.TYPE_14__* %189, %struct.TYPE_14__** %196, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %198, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 3
  store %struct.TYPE_12__* %201, %struct.TYPE_12__** %203, align 8
  %204 = load i32, i32* @vec3_origin, align 4
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @VectorSubtract(i32 %204, i32 %206, i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 0, %213
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 4
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %223 = call i32 @VL_SetPortalSphere(%struct.TYPE_14__* %222)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 1
  store %struct.TYPE_14__* %225, %struct.TYPE_14__** %6, align 8
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leafs, align 8
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i64 %229
  store %struct.TYPE_14__* %230, %struct.TYPE_14__** %7, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %188
  %237 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %188
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %241, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %242, i64 %245
  store %struct.TYPE_14__* %239, %struct.TYPE_14__** %246, align 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %248, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i8* @VL_AllocWinding(i32 %253)
  %255 = bitcast i8* %254 to %struct.TYPE_12__*
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 3
  store %struct.TYPE_12__* %255, %struct.TYPE_12__** %257, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store i32 %260, i32* %264, align 8
  store i32 0, i32* %4, align 4
  br label %265

265:                                              ; preds = %294, %238
  %266 = load i32, i32* %4, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %266, %269
  br i1 %270, label %271, label %297

271:                                              ; preds = %265
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = load double**, double*** %273, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, 1
  %279 = load i32, i32* %4, align 4
  %280 = sub nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double*, double** %274, i64 %281
  %283 = load double*, double** %282, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 3
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 1
  %288 = load double**, double*** %287, align 8
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds double*, double** %288, i64 %290
  %292 = load double*, double** %291, align 8
  %293 = call i32 @VectorCopy(double* %283, double* %292)
  br label %294

294:                                              ; preds = %271
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  br label %265

297:                                              ; preds = %265
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 2
  %300 = bitcast %struct.TYPE_13__* %299 to i8*
  %301 = bitcast %struct.TYPE_13__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %300, i8* align 4 %301, i64 8, i1 false)
  %302 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 8
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %307 = call i32 @VL_SetPortalSphere(%struct.TYPE_14__* %306)
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 1
  store %struct.TYPE_14__* %309, %struct.TYPE_14__** %6, align 8
  br label %310

310:                                              ; preds = %297
  %311 = load i32, i32* %3, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %3, align 4
  br label %83

313:                                              ; preds = %83
  %314 = load i32*, i32** %9, align 8
  %315 = call i32 @fclose(i32* %314)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @fscanf(i32*, i8*, ...) #1

declare dso_local i32 @_printf(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i8* @VL_AllocWinding(i32) #1

declare dso_local i32 @VL_PlaneFromWinding(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VL_SetPortalSphere(%struct.TYPE_14__*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
