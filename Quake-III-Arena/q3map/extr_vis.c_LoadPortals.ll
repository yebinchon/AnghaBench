; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_LoadPortals.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_LoadPortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_15__** }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, double** }

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
@leafbytes = common dso_local global i32 0, align 4
@leaflongs = common dso_local global i32 0, align 4
@portalbytes = common dso_local global i32 0, align 4
@portallongs = common dso_local global i32 0, align 4
@portals = common dso_local global %struct.TYPE_15__* null, align 8
@leafs = common dso_local global %struct.TYPE_15__* null, align 8
@VIS_HEADER_SIZE = common dso_local global i64 0, align 8
@numVisBytes = common dso_local global i64 0, align 8
@visBytes = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"%i %i %i \00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"LoadPortals: reading portal %i\00", align 1
@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"LoadPortals: portal %i has too many points\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"LoadPortals: reading hint state\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"(%lf %lf %lf ) \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_PORTALS_ON_LEAF = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [27 x i8] c"Leaf with too many portals\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@faces = common dso_local global %struct.TYPE_15__* null, align 8
@faceleafs = common dso_local global %struct.TYPE_15__* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"%i %i \00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Leaf with too many faces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadPortals(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca [3 x double], align 16
  %15 = alloca i32, align 4
  %16 = alloca [3 x double], align 16
  %17 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32*, i32** @stdin, align 8
  store i32* %22, i32** %9, align 8
  br label %32

23:                                               ; preds = %1
  %24 = load i8*, i8** %2, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %35 = call i32 (i32*, i8*, ...) @fscanf(i32* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %34, i32* @portalclusters, i32* @numportals, i32* @numfaces)
  %36 = icmp ne i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %41 = load i8*, i8** @PORTALFILE, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* @portalclusters, align 4
  %48 = call i32 @_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @numportals, align 4
  %50 = call i32 @_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @numfaces, align 4
  %52 = call i32 @_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @portalclusters, align 4
  %54 = add nsw i32 %53, 63
  %55 = and i32 %54, -64
  %56 = ashr i32 %55, 3
  store i32 %56, i32* @leafbytes, align 4
  %57 = load i32, i32* @leafbytes, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @leaflongs, align 4
  %61 = load i32, i32* @numportals, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %62, 63
  %64 = and i32 %63, -64
  %65 = ashr i32 %64, 3
  store i32 %65, i32* @portalbytes, align 4
  %66 = load i32, i32* @portalbytes, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* @portallongs, align 4
  %70 = load i32, i32* @numportals, align 4
  %71 = mul nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 56
  %74 = trunc i64 %73 to i32
  %75 = call %struct.TYPE_15__* @malloc(i32 %74)
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** @portals, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** @portals, align 8
  %77 = load i32, i32* @numportals, align 4
  %78 = mul nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 56
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(%struct.TYPE_15__* %76, i32 0, i32 %81)
  %83 = load i32, i32* @portalclusters, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 56
  %86 = trunc i64 %85 to i32
  %87 = call %struct.TYPE_15__* @malloc(i32 %86)
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** @leafs, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** @leafs, align 8
  %89 = load i32, i32* @portalclusters, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 56
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(%struct.TYPE_15__* %88, i32 0, i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %104, %46
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @portalclusters, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** @leafs, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %94

107:                                              ; preds = %94
  %108 = load i64, i64* @VIS_HEADER_SIZE, align 8
  %109 = load i32, i32* @portalclusters, align 4
  %110 = load i32, i32* @leafbytes, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  store i64 %113, i64* @numVisBytes, align 8
  %114 = load i32, i32* @portalclusters, align 4
  %115 = load i64, i64* @visBytes, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @leafbytes, align 4
  %119 = load i64, i64* @visBytes, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %118, i32* %121, align 4
  store i32 0, i32* %3, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** @portals, align 8
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %6, align 8
  br label %123

123:                                              ; preds = %364, %107
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @numportals, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %367

127:                                              ; preds = %123
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %131 = call i32 (i32*, i8*, ...) @fscanf(i32* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %10, i32* %129, i32* %130)
  %132 = icmp ne i32 %131, 3
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %3, align 4
  %142 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %136
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @portalclusters, align 4
  %147 = icmp ugt i32 %145, %146
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @portalclusters, align 4
  %152 = icmp ugt i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %3, align 4
  %155 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 (i32*, i8*, ...) @fscanf(i32* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32* %5)
  %159 = icmp ne i32 %158, 1
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %156
  %163 = load i32, i32* %10, align 4
  %164 = call i8* @NewWinding(i32 %163)
  %165 = bitcast i8* %164 to %struct.TYPE_14__*
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 6
  store %struct.TYPE_14__* %165, %struct.TYPE_14__** %167, align 8
  store %struct.TYPE_14__* %165, %struct.TYPE_14__** %11, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %208, %162
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %211

175:                                              ; preds = %171
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %178 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %179 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %180 = call i32 (i32*, i8*, ...) @fscanf(i32* %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), double* %177, double* %178, double* %179)
  %181 = icmp ne i32 %180, 3
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i32, i32* %3, align 4
  %184 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %182, %175
  store i32 0, i32* %15, align 4
  br label %186

186:                                              ; preds = %204, %185
  %187 = load i32, i32* %15, align 4
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %189, label %207

189:                                              ; preds = %186
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 %191
  %193 = load double, double* %192, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load double**, double*** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double*, double** %196, i64 %198
  %200 = load double*, double** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %200, i64 %202
  store double %193, double* %203, align 8
  br label %204

204:                                              ; preds = %189
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %186

207:                                              ; preds = %186
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %171

211:                                              ; preds = %171
  %212 = load i32*, i32** %9, align 8
  %213 = call i32 (i32*, i8*, ...) @fscanf(i32* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %215 = call i32 @PlaneFromWinding(%struct.TYPE_14__* %214, %struct.TYPE_16__* %13)
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** @leafs, align 8
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i64 %219
  store %struct.TYPE_15__* %220, %struct.TYPE_15__** %7, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %211
  %227 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %211
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 7
  %232 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %231, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %232, i64 %235
  store %struct.TYPE_15__* %229, %struct.TYPE_15__** %236, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %238, align 8
  %241 = load i32, i32* %3, align 4
  %242 = add nsw i32 %241, 1
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 6
  store %struct.TYPE_14__* %248, %struct.TYPE_14__** %250, align 8
  %251 = load i32, i32* @vec3_origin, align 4
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @VectorSubtract(i32 %251, i32 %253, i32 %257)
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 0, %260
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 4
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %270 = call i32 @SetPortalSphere(%struct.TYPE_15__* %269)
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 1
  store %struct.TYPE_15__* %272, %struct.TYPE_15__** %6, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** @leafs, align 8
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i64 %276
  store %struct.TYPE_15__* %277, %struct.TYPE_15__** %7, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %228
  %284 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %228
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %288, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %289, i64 %292
  store %struct.TYPE_15__* %286, %struct.TYPE_15__** %293, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %295, align 8
  %298 = load i32, i32* %3, align 4
  %299 = add nsw i32 %298, 1
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  %302 = load i32, i32* %5, align 4
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 3
  store i32 %302, i32* %304, align 4
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i8* @NewWinding(i32 %307)
  %309 = bitcast i8* %308 to %struct.TYPE_14__*
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 6
  store %struct.TYPE_14__* %309, %struct.TYPE_14__** %311, align 8
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 6
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  store i32 %314, i32* %318, align 8
  store i32 0, i32* %4, align 4
  br label %319

319:                                              ; preds = %348, %285
  %320 = load i32, i32* %4, align 4
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp slt i32 %320, %323
  br i1 %324, label %325, label %351

325:                                              ; preds = %319
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 1
  %328 = load double**, double*** %327, align 8
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sub nsw i32 %331, 1
  %333 = load i32, i32* %4, align 4
  %334 = sub nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds double*, double** %328, i64 %335
  %337 = load double*, double** %336, align 8
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 6
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 1
  %342 = load double**, double*** %341, align 8
  %343 = load i32, i32* %4, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds double*, double** %342, i64 %344
  %346 = load double*, double** %345, align 8
  %347 = call i32 @VectorCopy(double* %337, double* %346)
  br label %348

348:                                              ; preds = %325
  %349 = load i32, i32* %4, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %4, align 4
  br label %319

351:                                              ; preds = %319
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 5
  %354 = bitcast %struct.TYPE_16__* %353 to i8*
  %355 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %354, i8* align 4 %355, i64 8, i1 false)
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 4
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %361 = call i32 @SetPortalSphere(%struct.TYPE_15__* %360)
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 1
  store %struct.TYPE_15__* %363, %struct.TYPE_15__** %6, align 8
  br label %364

364:                                              ; preds = %351
  %365 = load i32, i32* %3, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %3, align 4
  br label %123

367:                                              ; preds = %123
  %368 = load i32, i32* @numfaces, align 4
  %369 = mul nsw i32 2, %368
  %370 = sext i32 %369 to i64
  %371 = mul i64 %370, 56
  %372 = trunc i64 %371 to i32
  %373 = call %struct.TYPE_15__* @malloc(i32 %372)
  store %struct.TYPE_15__* %373, %struct.TYPE_15__** @faces, align 8
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** @faces, align 8
  %375 = load i32, i32* @numfaces, align 4
  %376 = mul nsw i32 2, %375
  %377 = sext i32 %376 to i64
  %378 = mul i64 %377, 56
  %379 = trunc i64 %378 to i32
  %380 = call i32 @memset(%struct.TYPE_15__* %374, i32 0, i32 %379)
  %381 = load i32, i32* @portalclusters, align 4
  %382 = sext i32 %381 to i64
  %383 = mul i64 %382, 56
  %384 = trunc i64 %383 to i32
  %385 = call %struct.TYPE_15__* @malloc(i32 %384)
  store %struct.TYPE_15__* %385, %struct.TYPE_15__** @faceleafs, align 8
  %386 = load %struct.TYPE_15__*, %struct.TYPE_15__** @faceleafs, align 8
  %387 = load i32, i32* @portalclusters, align 4
  %388 = sext i32 %387 to i64
  %389 = mul i64 %388, 56
  %390 = trunc i64 %389 to i32
  %391 = call i32 @memset(%struct.TYPE_15__* %386, i32 0, i32 %390)
  store i32 0, i32* %3, align 4
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** @faces, align 8
  store %struct.TYPE_15__* %392, %struct.TYPE_15__** %6, align 8
  br label %393

393:                                              ; preds = %513, %367
  %394 = load i32, i32* %3, align 4
  %395 = load i32, i32* @numfaces, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %516

397:                                              ; preds = %393
  %398 = load i32*, i32** %9, align 8
  %399 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %400 = call i32 (i32*, i8*, ...) @fscanf(i32* %398, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32* %10, i32* %399)
  %401 = icmp ne i32 %400, 2
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load i32, i32* %3, align 4
  %404 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %403)
  br label %405

405:                                              ; preds = %402, %397
  %406 = load i32, i32* %10, align 4
  %407 = call i8* @NewWinding(i32 %406)
  %408 = bitcast i8* %407 to %struct.TYPE_14__*
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 6
  store %struct.TYPE_14__* %408, %struct.TYPE_14__** %410, align 8
  store %struct.TYPE_14__* %408, %struct.TYPE_14__** %11, align 8
  %411 = load i32, i32* %10, align 4
  %412 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %412, i32 0, i32 0
  store i32 %411, i32* %413, align 8
  store i32 0, i32* %4, align 4
  br label %414

414:                                              ; preds = %451, %405
  %415 = load i32, i32* %4, align 4
  %416 = load i32, i32* %10, align 4
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %418, label %454

418:                                              ; preds = %414
  %419 = load i32*, i32** %9, align 8
  %420 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %421 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %422 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %423 = call i32 (i32*, i8*, ...) @fscanf(i32* %419, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), double* %420, double* %421, double* %422)
  %424 = icmp ne i32 %423, 3
  br i1 %424, label %425, label %428

425:                                              ; preds = %418
  %426 = load i32, i32* %3, align 4
  %427 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %426)
  br label %428

428:                                              ; preds = %425, %418
  store i32 0, i32* %17, align 4
  br label %429

429:                                              ; preds = %447, %428
  %430 = load i32, i32* %17, align 4
  %431 = icmp slt i32 %430, 3
  br i1 %431, label %432, label %450

432:                                              ; preds = %429
  %433 = load i32, i32* %17, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 %434
  %436 = load double, double* %435, align 8
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 1
  %439 = load double**, double*** %438, align 8
  %440 = load i32, i32* %4, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds double*, double** %439, i64 %441
  %443 = load double*, double** %442, align 8
  %444 = load i32, i32* %17, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %443, i64 %445
  store double %436, double* %446, align 8
  br label %447

447:                                              ; preds = %432
  %448 = load i32, i32* %17, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %17, align 4
  br label %429

450:                                              ; preds = %429
  br label %451

451:                                              ; preds = %450
  %452 = load i32, i32* %4, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %4, align 4
  br label %414

454:                                              ; preds = %414
  %455 = load i32*, i32** %9, align 8
  %456 = call i32 (i32*, i8*, ...) @fscanf(i32* %455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %458 = call i32 @PlaneFromWinding(%struct.TYPE_14__* %457, %struct.TYPE_16__* %13)
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** @faceleafs, align 8
  %460 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i64 %462
  store %struct.TYPE_15__* %463, %struct.TYPE_15__** %7, align 8
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 0
  store i32 -1, i32* %465, align 8
  %466 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %454
  %472 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  br label %473

473:                                              ; preds = %471, %454
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %475 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 7
  %477 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %476, align 8
  %478 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %477, i64 %480
  store %struct.TYPE_15__* %474, %struct.TYPE_15__** %481, align 8
  %482 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = add i64 %484, 1
  store i64 %485, i64* %483, align 8
  %486 = load i32, i32* %3, align 4
  %487 = add nsw i32 %486, 1
  %488 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i32 0, i32 2
  store i32 %487, i32* %489, align 8
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %491 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %491, i32 0, i32 6
  store %struct.TYPE_14__* %490, %struct.TYPE_14__** %492, align 8
  %493 = load i32, i32* @vec3_origin, align 4
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %496, i32 0, i32 5
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @VectorSubtract(i32 %493, i32 %495, i32 %499)
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = sub nsw i32 0, %502
  %504 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %505 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 0
  store i32 %503, i32* %506, align 4
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 4
  store i32 -1, i32* %508, align 8
  %509 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %510 = call i32 @SetPortalSphere(%struct.TYPE_15__* %509)
  %511 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 1
  store %struct.TYPE_15__* %512, %struct.TYPE_15__** %6, align 8
  br label %513

513:                                              ; preds = %473
  %514 = load i32, i32* %3, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %3, align 4
  br label %393

516:                                              ; preds = %393
  %517 = load i32*, i32** %9, align 8
  %518 = call i32 @fclose(i32* %517)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @fscanf(i32*, i8*, ...) #1

declare dso_local i32 @_printf(i8*, i32) #1

declare dso_local %struct.TYPE_15__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @NewWinding(i32) #1

declare dso_local i32 @PlaneFromWinding(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @SetPortalSphere(%struct.TYPE_15__*) #1

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
