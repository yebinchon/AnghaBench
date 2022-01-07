; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_weight.c_ReadWeightConfig.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_weight.c_ReadWeightConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, i32*, i32, i64 }
%struct.TYPE_19__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1
@MAX_WEIGHT_FILES = common dso_local global i32 0, align 4
@weightFileList = common dso_local global %struct.TYPE_16__** null, align 8
@botimport = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"weightFileList was full trying to load %s\0A\00", align 1
@BOTFILESBASEFOLDER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"counldn't load %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@MAX_WEIGHTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"too many fuzzy weights\0A\00", align 1
@TT_STRING = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@MAX_INVENTORYVALUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"invalid name %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"loaded %s\0A\00", align 1
@bot_developer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ReadWeightConfig(i8* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  %11 = call i32 @LibVarGetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_WEIGHT_FILES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @weightFileList, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %19, i64 %21
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %10, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %26
  br label %42

32:                                               ; preds = %18
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %33, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %2, align 8
  br label %280

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @botimport, i32 0, i32 0), align 8
  %50 = load i32, i32* @PRT_ERROR, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = call i32 %49(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* @BOTFILESBASEFOLDER, align 4
  %57 = call i32 @PC_SetBaseFolder(i32 %56)
  %58 = load i8*, i8** %3, align 8
  %59 = call i32* @LoadSourceFile(i8* %58)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @botimport, i32 0, i32 0), align 8
  %64 = load i32, i32* @PRT_ERROR, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = call i32 %63(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

68:                                               ; preds = %55
  %69 = call i64 @GetClearedMemory(i32 24)
  %70 = inttoptr i64 %69 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %10, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @Q_strncpyz(i8* %75, i8* %76, i32 8)
  br label %78

78:                                               ; preds = %261, %68
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @PC_ReadToken(i32* %79, %struct.TYPE_17__* %7)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %262

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %252, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MAX_WEIGHTS, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @SourceWarning(i32* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %262

96:                                               ; preds = %87
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* @TT_STRING, align 4
  %99 = call i32 @PC_ExpectTokenType(i32* %97, i32 %98, i32 0, %struct.TYPE_17__* %7)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @FreeSource(i32* %104)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @StripDoubleQuotes(i8* %108)
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = add nsw i32 %112, 1
  %114 = call i64 @GetClearedMemory(i32 %113)
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  store i8* %115, i8** %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strcpy(i8* %132, i8* %134)
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @PC_ExpectAnyToken(i32* %136, %struct.TYPE_17__* %7)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %106
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %141 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %140)
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @FreeSource(i32* %142)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

144:                                              ; preds = %106
  %145 = load i32, i32* @qfalse, align 4
  store i32 %145, i32* %4, align 4
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @qtrue, align 4
  store i32 %151, i32* %4, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @PC_ExpectAnyToken(i32* %152, %struct.TYPE_17__* %7)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %157 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %156)
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @FreeSource(i32* %158)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160, %144
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %161
  %167 = load i32*, i32** %8, align 8
  %168 = call %struct.TYPE_18__* @ReadFuzzySeperators_r(i32* %167)
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %9, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %170 = icmp ne %struct.TYPE_18__* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %173 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %172)
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @FreeSource(i32* %174)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

176:                                              ; preds = %166
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  store %struct.TYPE_18__* %177, %struct.TYPE_18__** %185, align 8
  br label %234

186:                                              ; preds = %161
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %224, label %191

191:                                              ; preds = %186
  %192 = call i64 @GetClearedMemory(i32 32)
  %193 = inttoptr i64 %192 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %193, %struct.TYPE_18__** %9, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 3
  store i64 0, i64* %195, align 8
  %196 = load i32, i32* @MAX_INVENTORYVALUE, align 4
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  store i32* null, i32** %202, align 8
  %203 = load i32*, i32** %8, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %205 = call i32 @ReadFuzzyWeight(i32* %203, %struct.TYPE_18__* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %191
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %209 = call i32 @FreeMemory(%struct.TYPE_18__* %208)
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %211 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %210)
  %212 = load i32*, i32** %8, align 8
  %213 = call i32 @FreeSource(i32* %212)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

214:                                              ; preds = %191
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  store %struct.TYPE_18__* %215, %struct.TYPE_18__** %223, align 8
  br label %233

224:                                              ; preds = %186
  %225 = load i32*, i32** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @SourceError(i32* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %227)
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %230 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %229)
  %231 = load i32*, i32** %8, align 8
  %232 = call i32 @FreeSource(i32* %231)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

233:                                              ; preds = %214
  br label %234

234:                                              ; preds = %233, %176
  %235 = load i32, i32* %4, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %234
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 @PC_ExpectTokenString(i32* %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %237
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %243 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %242)
  %244 = load i32*, i32** %8, align 8
  %245 = call i32 @FreeSource(i32* %244)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

246:                                              ; preds = %237
  br label %247

247:                                              ; preds = %246, %234
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %249, align 8
  br label %261

252:                                              ; preds = %82
  %253 = load i32*, i32** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @SourceError(i32* %253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %255)
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %258 = call i32 @FreeWeightConfig(%struct.TYPE_16__* %257)
  %259 = load i32*, i32** %8, align 8
  %260 = call i32 @FreeSource(i32* %259)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %280

261:                                              ; preds = %247
  br label %78

262:                                              ; preds = %93, %78
  %263 = load i32*, i32** %8, align 8
  %264 = call i32 @FreeSource(i32* %263)
  %265 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @botimport, i32 0, i32 0), align 8
  %266 = load i32, i32* @PRT_MESSAGE, align 4
  %267 = load i8*, i8** %3, align 8
  %268 = ptrtoint i8* %267 to i32
  %269 = call i32 %265(i32 %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %268)
  %270 = call i32 @LibVarGetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %262
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %274 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @weightFileList, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %274, i64 %276
  store %struct.TYPE_16__* %273, %struct.TYPE_16__** %277, align 8
  br label %278

278:                                              ; preds = %272, %262
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %279, %struct.TYPE_16__** %2, align 8
  br label %280

280:                                              ; preds = %278, %252, %241, %224, %207, %171, %155, %139, %101, %62, %48, %39
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %281
}

declare dso_local i32 @LibVarGetValue(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @PC_SetBaseFolder(i32) #1

declare dso_local i32* @LoadSourceFile(i8*) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @SourceWarning(i32*, i8*) #1

declare dso_local i32 @PC_ExpectTokenType(i32*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @FreeWeightConfig(%struct.TYPE_16__*) #1

declare dso_local i32 @FreeSource(i32*) #1

declare dso_local i32 @StripDoubleQuotes(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @PC_ExpectAnyToken(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @ReadFuzzySeperators_r(i32*) #1

declare dso_local i32 @ReadFuzzyWeight(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @FreeMemory(%struct.TYPE_18__*) #1

declare dso_local i32 @SourceError(i32*, i8*, i8*) #1

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
