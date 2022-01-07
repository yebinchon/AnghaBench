; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_entity.c_AAS_UpdateEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_entity.c_AAS_UpdateEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i64, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_10__ = type { i32 (i32, i8*)* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@aasworld = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"AAS_UpdateEntity: not loaded\0A\00", align 1
@BLERR_NOAASFILE = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i32 0, align 4
@SOLID_BSP = common dso_local global i64 0, align 8
@SOLID_BBOX = common dso_local global i64 0, align 8
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_UpdateEntity(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %14 = load i32, i32* @PRT_MESSAGE, align 4
  %15 = call i32 %13(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @BLERR_NOAASFILE, align 4
  store i32 %16, i32* %3, align 4
  br label %340

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 1), align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @AAS_UnlinkFromAreas(i32* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @AAS_UnlinkFromBSPLeaves(i32* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %37, i32* %3, align 4
  br label %340

38:                                               ; preds = %17
  %39 = call i8* (...) @AAS_Time()
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %39 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 22
  store i8* %47, i8** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 17
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 21
  store i32 %53, i32* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 20
  store i32 %59, i32* %62, align 4
  %63 = call i8* (...) @AAS_Time()
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 19
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @VectorCopy(i32 %70, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 18
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @VectorCopy(i32 %78, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 17
  store i32 %92, i32* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 7
  store i32 %98, i32* %101, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 16
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 15
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 14
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 13
  store i32 %122, i32* %125, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 12
  store i32 %128, i32* %131, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 11
  store i32 %134, i32* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 10
  store i32 %140, i32* %143, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 9
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 8
  %154 = load i8*, i8** @qtrue, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 8
  store i8* %154, i8** %157, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 0), align 8
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %163

160:                                              ; preds = %38
  %161 = load i8*, i8** @qtrue, align 8
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* %6, align 4
  br label %165

163:                                              ; preds = %38
  %164 = load i32, i32* @qfalse, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %163, %160
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SOLID_BSP, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %211

172:                                              ; preds = %165
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @VectorCompare(i32 %175, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %172
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @VectorCopy(i32 %185, i32 %189)
  %191 = load i8*, i8** @qtrue, align 8
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %182, %172
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @AAS_BSPModelMinsMaxsOrigin(i32 %197, i32 %201, i32 %205, i32 %209, i32* null)
  br label %267

211:                                              ; preds = %165
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SOLID_BBOX, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %266

218:                                              ; preds = %211
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @VectorCompare(i32 %221, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %218
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @VectorCompare(i32 %231, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %257, label %238

238:                                              ; preds = %228, %218
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @VectorCopy(i32 %241, i32 %245)
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @VectorCopy(i32 %249, i32 %253)
  %255 = load i8*, i8** @qtrue, align 8
  %256 = ptrtoint i8* %255 to i32
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %238, %228
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @VectorCopy(i32 %260, i32 %264)
  br label %266

266:                                              ; preds = %257, %211
  br label %267

267:                                              ; preds = %266, %193
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @VectorCompare(i32 %270, i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %288, label %277

277:                                              ; preds = %267
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @VectorCopy(i32 %280, i32 %284)
  %286 = load i8*, i8** @qtrue, align 8
  %287 = ptrtoint i8* %286 to i32
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %277, %267
  %289 = load i32, i32* %6, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %338

291:                                              ; preds = %288
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* @ENTITYNUM_WORLD, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %337

295:                                              ; preds = %291
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %8, align 4
  %305 = call i32 @VectorAdd(i32 %299, i32 %303, i32 %304)
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %9, align 4
  %315 = call i32 @VectorAdd(i32 %309, i32 %313, i32 %314)
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @AAS_UnlinkFromAreas(i32* %318)
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* %4, align 4
  %323 = load i32, i32* @PRESENCE_NORMAL, align 4
  %324 = call i32* @AAS_LinkEntityClientBBox(i32 %320, i32 %321, i32 %322, i32 %323)
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 1
  store i32* %324, i32** %326, align 8
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @AAS_UnlinkFromBSPLeaves(i32* %329)
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %4, align 4
  %334 = call i32* @AAS_BSPLinkEntity(i32 %331, i32 %332, i32 %333, i32 0)
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  store i32* %334, i32** %336, align 8
  br label %337

337:                                              ; preds = %295, %291
  br label %338

338:                                              ; preds = %337, %288
  %339 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %339, i32* %3, align 4
  br label %340

340:                                              ; preds = %338, %24, %12
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local i32 @AAS_UnlinkFromAreas(i32*) #1

declare dso_local i32 @AAS_UnlinkFromBSPLeaves(i32*) #1

declare dso_local i8* @AAS_Time(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorCompare(i32, i32) #1

declare dso_local i32 @AAS_BSPModelMinsMaxsOrigin(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32* @AAS_LinkEntityClientBBox(i32, i32, i32, i32) #1

declare dso_local i32* @AAS_BSPLinkEntity(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
