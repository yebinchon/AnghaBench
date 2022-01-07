; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_file.c_AAS_LoadAASFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_file.c_AAS_LoadAASFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8* }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"can't seek to file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"can't read header of file %s\0A\00", align 1
@AASID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"%s is not an AAS file\0A\00", align 1
@AASVERSION_OLD = common dso_local global i64 0, align 8
@AASVERSION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"%s is version %i, not %i\0A\00", align 1
@aasworld = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AASLUMP_BBOXES = common dso_local global i64 0, align 8
@AASLUMP_VERTEXES = common dso_local global i64 0, align 8
@AASLUMP_PLANES = common dso_local global i64 0, align 8
@AASLUMP_EDGES = common dso_local global i64 0, align 8
@AASLUMP_EDGEINDEX = common dso_local global i64 0, align 8
@AASLUMP_FACES = common dso_local global i64 0, align 8
@AASLUMP_FACEINDEX = common dso_local global i64 0, align 8
@AASLUMP_AREAS = common dso_local global i64 0, align 8
@AASLUMP_AREASETTINGS = common dso_local global i64 0, align 8
@AASLUMP_REACHABILITY = common dso_local global i64 0, align 8
@AASLUMP_NODES = common dso_local global i64 0, align 8
@AASLUMP_PORTALS = common dso_local global i64 0, align 8
@AASLUMP_PORTALINDEX = common dso_local global i64 0, align 8
@AASLUMP_CLUSTERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_LoadAASFile(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @AAS_DumpAASData()
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i8*, ...) @AAS_Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 0, i32* %4, align 4
  br label %567

20:                                               ; preds = %3
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i64 @fseek(i32* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @AAS_Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @fclose(i32* %28)
  store i32 0, i32* %4, align 4
  br label %567

30:                                               ; preds = %20
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @fread(%struct.TYPE_6__* %9, i32 32, i32 1, i32* %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i8*, ...) @AAS_Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @fclose(i32* %37)
  store i32 0, i32* %4, align 4
  br label %567

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @LittleLong(i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AASID, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i8*, ...) @AAS_Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @fclose(i32* %52)
  store i32 0, i32* %4, align 4
  br label %567

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @LittleLong(i64 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AASVERSION_OLD, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AASVERSION, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AASVERSION, align 8
  %74 = call i32 (i8*, ...) @AAS_Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %70, i64 %72, i64 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @fclose(i32* %75)
  store i32 0, i32* %4, align 4
  br label %567

77:                                               ; preds = %64, %54
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AASVERSION, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = bitcast %struct.TYPE_6__* %9 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 8
  %85 = call i32 @AAS_DData(i8* %84, i32 24)
  br label %86

86:                                               ; preds = %82, %77
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @LittleLong(i64 %88)
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 29), align 8
  %90 = load i32, i32* %6, align 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i64, i64* @AASLUMP_BBOXES, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @LittleLong(i64 %96)
  %98 = sext i32 %90 to i64
  %99 = getelementptr i8, i8* %97, i64 %98
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* @AASLUMP_BBOXES, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @LittleLong(i64 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %11, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 28), align 8
  %113 = call i64 @AAS_LoadAASLump(i32* %109, i32 %110, i32 %111, i32* %112)
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 28), align 8
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 28), align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %567

118:                                              ; preds = %86
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = udiv i64 %120, 4
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 8
  %123 = load i32, i32* %6, align 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i64, i64* @AASLUMP_VERTEXES, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @LittleLong(i64 %129)
  %131 = sext i32 %123 to i64
  %132 = getelementptr i8, i8* %130, i64 %131
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %10, align 4
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i64, i64* @AASLUMP_VERTEXES, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @LittleLong(i64 %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %11, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 27), align 8
  %146 = call i64 @AAS_LoadAASLump(i32* %142, i32 %143, i32 %144, i32* %145)
  %147 = inttoptr i64 %146 to i32*
  store i32* %147, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 27), align 8
  %148 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 27), align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %567

151:                                              ; preds = %118
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = udiv i64 %153, 4
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 4
  %156 = load i32, i32* %6, align 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i64, i64* @AASLUMP_PLANES, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @LittleLong(i64 %162)
  %164 = sext i32 %156 to i64
  %165 = getelementptr i8, i8* %163, i64 %164
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %10, align 4
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i64, i64* @AASLUMP_PLANES, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i8* @LittleLong(i64 %172)
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %11, align 4
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 26), align 8
  %179 = call i64 @AAS_LoadAASLump(i32* %175, i32 %176, i32 %177, i32* %178)
  %180 = inttoptr i64 %179 to i32*
  store i32* %180, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 26), align 8
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 26), align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %567

184:                                              ; preds = %151
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = udiv i64 %186, 4
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 2), align 8
  %189 = load i32, i32* %6, align 4
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i64, i64* @AASLUMP_EDGES, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i8* @LittleLong(i64 %195)
  %197 = sext i32 %189 to i64
  %198 = getelementptr i8, i8* %196, i64 %197
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %10, align 4
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load i64, i64* @AASLUMP_EDGES, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call i8* @LittleLong(i64 %205)
  %207 = ptrtoint i8* %206 to i32
  store i32 %207, i32* %11, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 25), align 8
  %212 = call i64 @AAS_LoadAASLump(i32* %208, i32 %209, i32 %210, i32* %211)
  %213 = inttoptr i64 %212 to i32*
  store i32* %213, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 25), align 8
  %214 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 25), align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %184
  store i32 0, i32* %4, align 4
  br label %567

217:                                              ; preds = %184
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = udiv i64 %219, 4
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 3), align 4
  %222 = load i32, i32* %6, align 4
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = load i64, i64* @AASLUMP_EDGEINDEX, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i8* @LittleLong(i64 %228)
  %230 = sext i32 %222 to i64
  %231 = getelementptr i8, i8* %229, i64 %230
  %232 = ptrtoint i8* %231 to i32
  store i32 %232, i32* %10, align 4
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = load i64, i64* @AASLUMP_EDGEINDEX, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = call i8* @LittleLong(i64 %238)
  %240 = ptrtoint i8* %239 to i32
  store i32 %240, i32* %11, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 24), align 8
  %245 = call i64 @AAS_LoadAASLump(i32* %241, i32 %242, i32 %243, i32* %244)
  %246 = inttoptr i64 %245 to i32*
  store i32* %246, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 24), align 8
  %247 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 24), align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %217
  store i32 0, i32* %4, align 4
  br label %567

250:                                              ; preds = %217
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = udiv i64 %252, 4
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 4), align 8
  %255 = load i32, i32* %6, align 4
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i64, i64* @AASLUMP_FACES, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i8* @LittleLong(i64 %261)
  %263 = sext i32 %255 to i64
  %264 = getelementptr i8, i8* %262, i64 %263
  %265 = ptrtoint i8* %264 to i32
  store i32 %265, i32* %10, align 4
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = load i64, i64* @AASLUMP_FACES, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i8* @LittleLong(i64 %271)
  %273 = ptrtoint i8* %272 to i32
  store i32 %273, i32* %11, align 4
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 23), align 8
  %278 = call i64 @AAS_LoadAASLump(i32* %274, i32 %275, i32 %276, i32* %277)
  %279 = inttoptr i64 %278 to i32*
  store i32* %279, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 23), align 8
  %280 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 23), align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %250
  store i32 0, i32* %4, align 4
  br label %567

283:                                              ; preds = %250
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = udiv i64 %285, 4
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 5), align 4
  %288 = load i32, i32* %6, align 4
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %289, align 8
  %291 = load i64, i64* @AASLUMP_FACEINDEX, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i8* @LittleLong(i64 %294)
  %296 = sext i32 %288 to i64
  %297 = getelementptr i8, i8* %295, i64 %296
  %298 = ptrtoint i8* %297 to i32
  store i32 %298, i32* %10, align 4
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = load i64, i64* @AASLUMP_FACEINDEX, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = call i8* @LittleLong(i64 %304)
  %306 = ptrtoint i8* %305 to i32
  store i32 %306, i32* %11, align 4
  %307 = load i32*, i32** %8, align 8
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 22), align 8
  %311 = call i64 @AAS_LoadAASLump(i32* %307, i32 %308, i32 %309, i32* %310)
  %312 = inttoptr i64 %311 to i32*
  store i32* %312, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 22), align 8
  %313 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 22), align 8
  %314 = icmp ne i32* %313, null
  br i1 %314, label %316, label %315

315:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %567

316:                                              ; preds = %283
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = udiv i64 %318, 4
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 6), align 8
  %321 = load i32, i32* %6, align 4
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %322, align 8
  %324 = load i64, i64* @AASLUMP_AREAS, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = call i8* @LittleLong(i64 %327)
  %329 = sext i32 %321 to i64
  %330 = getelementptr i8, i8* %328, i64 %329
  %331 = ptrtoint i8* %330 to i32
  store i32 %331, i32* %10, align 4
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %332, align 8
  %334 = load i64, i64* @AASLUMP_AREAS, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = call i8* @LittleLong(i64 %337)
  %339 = ptrtoint i8* %338 to i32
  store i32 %339, i32* %11, align 4
  %340 = load i32*, i32** %8, align 8
  %341 = load i32, i32* %10, align 4
  %342 = load i32, i32* %11, align 4
  %343 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 21), align 8
  %344 = call i64 @AAS_LoadAASLump(i32* %340, i32 %341, i32 %342, i32* %343)
  %345 = inttoptr i64 %344 to i32*
  store i32* %345, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 21), align 8
  %346 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 21), align 8
  %347 = icmp ne i32* %346, null
  br i1 %347, label %349, label %348

348:                                              ; preds = %316
  store i32 0, i32* %4, align 4
  br label %567

349:                                              ; preds = %316
  %350 = load i32, i32* %11, align 4
  %351 = sext i32 %350 to i64
  %352 = udiv i64 %351, 4
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 7), align 4
  %354 = load i32, i32* %6, align 4
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = load i64, i64* @AASLUMP_AREASETTINGS, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = call i8* @LittleLong(i64 %360)
  %362 = sext i32 %354 to i64
  %363 = getelementptr i8, i8* %361, i64 %362
  %364 = ptrtoint i8* %363 to i32
  store i32 %364, i32* %10, align 4
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %365, align 8
  %367 = load i64, i64* @AASLUMP_AREASETTINGS, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = call i8* @LittleLong(i64 %370)
  %372 = ptrtoint i8* %371 to i32
  store i32 %372, i32* %11, align 4
  %373 = load i32*, i32** %8, align 8
  %374 = load i32, i32* %10, align 4
  %375 = load i32, i32* %11, align 4
  %376 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 20), align 8
  %377 = call i64 @AAS_LoadAASLump(i32* %373, i32 %374, i32 %375, i32* %376)
  %378 = inttoptr i64 %377 to i32*
  store i32* %378, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 20), align 8
  %379 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 20), align 8
  %380 = icmp ne i32* %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %349
  store i32 0, i32* %4, align 4
  br label %567

382:                                              ; preds = %349
  %383 = load i32, i32* %11, align 4
  %384 = sext i32 %383 to i64
  %385 = udiv i64 %384, 4
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 8), align 8
  %387 = load i32, i32* %6, align 4
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %388, align 8
  %390 = load i64, i64* @AASLUMP_REACHABILITY, align 8
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = call i8* @LittleLong(i64 %393)
  %395 = sext i32 %387 to i64
  %396 = getelementptr i8, i8* %394, i64 %395
  %397 = ptrtoint i8* %396 to i32
  store i32 %397, i32* %10, align 4
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %398, align 8
  %400 = load i64, i64* @AASLUMP_REACHABILITY, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = call i8* @LittleLong(i64 %403)
  %405 = ptrtoint i8* %404 to i32
  store i32 %405, i32* %11, align 4
  %406 = load i32*, i32** %8, align 8
  %407 = load i32, i32* %10, align 4
  %408 = load i32, i32* %11, align 4
  %409 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 19), align 8
  %410 = call i64 @AAS_LoadAASLump(i32* %406, i32 %407, i32 %408, i32* %409)
  %411 = inttoptr i64 %410 to i32*
  store i32* %411, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 19), align 8
  %412 = load i32, i32* %11, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %382
  %415 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 19), align 8
  %416 = icmp ne i32* %415, null
  br i1 %416, label %418, label %417

417:                                              ; preds = %414
  store i32 0, i32* %4, align 4
  br label %567

418:                                              ; preds = %414, %382
  %419 = load i32, i32* %11, align 4
  %420 = sext i32 %419 to i64
  %421 = udiv i64 %420, 4
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 9), align 4
  %423 = load i32, i32* %6, align 4
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %425 = load %struct.TYPE_5__*, %struct.TYPE_5__** %424, align 8
  %426 = load i64, i64* @AASLUMP_NODES, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = call i8* @LittleLong(i64 %429)
  %431 = sext i32 %423 to i64
  %432 = getelementptr i8, i8* %430, i64 %431
  %433 = ptrtoint i8* %432 to i32
  store i32 %433, i32* %10, align 4
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %435 = load %struct.TYPE_5__*, %struct.TYPE_5__** %434, align 8
  %436 = load i64, i64* @AASLUMP_NODES, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = call i8* @LittleLong(i64 %439)
  %441 = ptrtoint i8* %440 to i32
  store i32 %441, i32* %11, align 4
  %442 = load i32*, i32** %8, align 8
  %443 = load i32, i32* %10, align 4
  %444 = load i32, i32* %11, align 4
  %445 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 18), align 8
  %446 = call i64 @AAS_LoadAASLump(i32* %442, i32 %443, i32 %444, i32* %445)
  %447 = inttoptr i64 %446 to i32*
  store i32* %447, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 18), align 8
  %448 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 18), align 8
  %449 = icmp ne i32* %448, null
  br i1 %449, label %451, label %450

450:                                              ; preds = %418
  store i32 0, i32* %4, align 4
  br label %567

451:                                              ; preds = %418
  %452 = load i32, i32* %11, align 4
  %453 = sext i32 %452 to i64
  %454 = udiv i64 %453, 4
  %455 = trunc i64 %454 to i32
  store i32 %455, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 10), align 8
  %456 = load i32, i32* %6, align 4
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %458 = load %struct.TYPE_5__*, %struct.TYPE_5__** %457, align 8
  %459 = load i64, i64* @AASLUMP_PORTALS, align 8
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = call i8* @LittleLong(i64 %462)
  %464 = sext i32 %456 to i64
  %465 = getelementptr i8, i8* %463, i64 %464
  %466 = ptrtoint i8* %465 to i32
  store i32 %466, i32* %10, align 4
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %467, align 8
  %469 = load i64, i64* @AASLUMP_PORTALS, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = call i8* @LittleLong(i64 %472)
  %474 = ptrtoint i8* %473 to i32
  store i32 %474, i32* %11, align 4
  %475 = load i32*, i32** %8, align 8
  %476 = load i32, i32* %10, align 4
  %477 = load i32, i32* %11, align 4
  %478 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 17), align 8
  %479 = call i64 @AAS_LoadAASLump(i32* %475, i32 %476, i32 %477, i32* %478)
  %480 = inttoptr i64 %479 to i32*
  store i32* %480, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 17), align 8
  %481 = load i32, i32* %11, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %451
  %484 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 17), align 8
  %485 = icmp ne i32* %484, null
  br i1 %485, label %487, label %486

486:                                              ; preds = %483
  store i32 0, i32* %4, align 4
  br label %567

487:                                              ; preds = %483, %451
  %488 = load i32, i32* %11, align 4
  %489 = sext i32 %488 to i64
  %490 = udiv i64 %489, 4
  %491 = trunc i64 %490 to i32
  store i32 %491, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 11), align 4
  %492 = load i32, i32* %6, align 4
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %494 = load %struct.TYPE_5__*, %struct.TYPE_5__** %493, align 8
  %495 = load i64, i64* @AASLUMP_PORTALINDEX, align 8
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = call i8* @LittleLong(i64 %498)
  %500 = sext i32 %492 to i64
  %501 = getelementptr i8, i8* %499, i64 %500
  %502 = ptrtoint i8* %501 to i32
  store i32 %502, i32* %10, align 4
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %504 = load %struct.TYPE_5__*, %struct.TYPE_5__** %503, align 8
  %505 = load i64, i64* @AASLUMP_PORTALINDEX, align 8
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = call i8* @LittleLong(i64 %508)
  %510 = ptrtoint i8* %509 to i32
  store i32 %510, i32* %11, align 4
  %511 = load i32*, i32** %8, align 8
  %512 = load i32, i32* %10, align 4
  %513 = load i32, i32* %11, align 4
  %514 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 16), align 8
  %515 = call i64 @AAS_LoadAASLump(i32* %511, i32 %512, i32 %513, i32* %514)
  %516 = inttoptr i64 %515 to i32*
  store i32* %516, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 16), align 8
  %517 = load i32, i32* %11, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %487
  %520 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 16), align 8
  %521 = icmp ne i32* %520, null
  br i1 %521, label %523, label %522

522:                                              ; preds = %519
  store i32 0, i32* %4, align 4
  br label %567

523:                                              ; preds = %519, %487
  %524 = load i32, i32* %11, align 4
  %525 = sext i32 %524 to i64
  %526 = udiv i64 %525, 4
  %527 = trunc i64 %526 to i32
  store i32 %527, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 12), align 8
  %528 = load i32, i32* %6, align 4
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %530 = load %struct.TYPE_5__*, %struct.TYPE_5__** %529, align 8
  %531 = load i64, i64* @AASLUMP_CLUSTERS, align 8
  %532 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = call i8* @LittleLong(i64 %534)
  %536 = sext i32 %528 to i64
  %537 = getelementptr i8, i8* %535, i64 %536
  %538 = ptrtoint i8* %537 to i32
  store i32 %538, i32* %10, align 4
  %539 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %540 = load %struct.TYPE_5__*, %struct.TYPE_5__** %539, align 8
  %541 = load i64, i64* @AASLUMP_CLUSTERS, align 8
  %542 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %540, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %542, i32 0, i32 1
  %544 = load i64, i64* %543, align 8
  %545 = call i8* @LittleLong(i64 %544)
  %546 = ptrtoint i8* %545 to i32
  store i32 %546, i32* %11, align 4
  %547 = load i32*, i32** %8, align 8
  %548 = load i32, i32* %10, align 4
  %549 = load i32, i32* %11, align 4
  %550 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 15), align 8
  %551 = call i64 @AAS_LoadAASLump(i32* %547, i32 %548, i32 %549, i32* %550)
  %552 = inttoptr i64 %551 to i32*
  store i32* %552, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 15), align 8
  %553 = load i32, i32* %11, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %559

555:                                              ; preds = %523
  %556 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 15), align 8
  %557 = icmp ne i32* %556, null
  br i1 %557, label %559, label %558

558:                                              ; preds = %555
  store i32 0, i32* %4, align 4
  br label %567

559:                                              ; preds = %555, %523
  %560 = load i32, i32* %11, align 4
  %561 = sext i32 %560 to i64
  %562 = udiv i64 %561, 4
  %563 = trunc i64 %562 to i32
  store i32 %563, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 13), align 4
  %564 = call i32 (...) @AAS_SwapAASData()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 14), align 8
  %565 = load i32*, i32** %8, align 8
  %566 = call i32 @fclose(i32* %565)
  store i32 1, i32* %4, align 4
  br label %567

567:                                              ; preds = %559, %558, %522, %486, %450, %417, %381, %348, %315, %282, %249, %216, %183, %150, %117, %69, %49, %34, %26, %17
  %568 = load i32, i32* %4, align 4
  ret i32 %568
}

declare dso_local i32 @AAS_DumpAASData(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @AAS_Error(i8*, ...) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i8* @LittleLong(i64) #1

declare dso_local i32 @AAS_DData(i8*, i32) #1

declare dso_local i64 @AAS_LoadAASLump(i32*, i32, i32, i32*) #1

declare dso_local i32 @AAS_SwapAASData(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
