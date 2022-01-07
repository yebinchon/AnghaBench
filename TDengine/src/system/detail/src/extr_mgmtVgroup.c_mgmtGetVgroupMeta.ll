; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtGetVgroupMeta.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtGetVgroupMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_14__ = type { i32*, i32, i32*, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { i8*, i32, i8* }

@TSDB_CODE_DB_NOT_SELECTED = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_INT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"vgId\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"meters\00", align 1
@TSDB_DATA_TYPE_BINARY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"vgroup status\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@TSDB_DATA_TYPE_SMALLINT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"vnode\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vnode status\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"public ip\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtGetVgroupMeta(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @TSDB_CODE_DB_NOT_SELECTED, align 4
  store i32 %19, i32* %4, align 4
  br label %372

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = call %struct.TYPE_15__* @tsGetSchema(%struct.TYPE_16__* %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %9, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 4, i32* %28, align 4
  %29 = load i8*, i8** @TSDB_DATA_TYPE_INT, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  store i8* %29, i8** %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strcpy(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i8* %49, i8** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 4, i32* %62, align 4
  %63 = load i8*, i8** @TSDB_DATA_TYPE_INT, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  store i8* %63, i8** %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strcpy(i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @htons(i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i8* %83, i8** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 9, i32* %96, align 4
  %97 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  store i8* %97, i8** %102, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strcpy(i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @htons(i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store i8* %117, i8** %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  store %struct.TYPE_13__* %129, %struct.TYPE_13__** %11, align 8
  br label %130

130:                                              ; preds = %145, %20
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = icmp ne %struct.TYPE_13__* %131, null
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  br label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %10, align 4
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi i32 [ %142, %139 ], [ %144, %143 ]
  store i32 %146, i32* %10, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %11, align 8
  br label %130

150:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %292, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %295

155:                                              ; preds = %151
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 16, i32* %161, align 4
  %162 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  store i8* %162, i8** %167, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @strcpy(i32 %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @htons(i32 %181)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  store i8* %182, i8** %187, align 8
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 2, i32* %195, align 4
  %196 = load i8*, i8** @TSDB_DATA_TYPE_SMALLINT, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 2
  store i8* %196, i8** %201, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @strcpy(i32 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @htons(i32 %215)
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  store i8* %216, i8** %221, align 8
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 9, i32* %229, align 4
  %230 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  store i8* %230, i8** %235, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @strcpy(i32 %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @htons(i32 %249)
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  store i8* %250, i8** %255, align 8
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 16, i32* %263, align 4
  %264 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 2
  store i8* %264, i8** %269, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @strcpy(i32 %275, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @htons(i32 %283)
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  store i8* %284, i8** %289, align 8
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %8, align 4
  br label %292

292:                                              ; preds = %155
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %151

295:                                              ; preds = %151
  %296 = load i32, i32* %8, align 4
  %297 = call i8* @htons(i32 %296)
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 0
  store i8* %297, i8** %299, align 8
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  store i32 0, i32* %306, align 4
  store i32 1, i32* %13, align 4
  br label %307

307:                                              ; preds = %335, %295
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %338

311:                                              ; preds = %307
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sub nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %319, %327
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %328, i32* %334, align 4
  br label %335

335:                                              ; preds = %311
  %336 = load i32, i32* %13, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %13, align 4
  br label %307

338:                                              ; preds = %307
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 5
  store i32 %343, i32* %345, align 8
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %349, align 8
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 4
  store %struct.TYPE_13__* %350, %struct.TYPE_13__** %352, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 2
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %360, %368
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 8
  store i32 0, i32* %4, align 4
  br label %372

372:                                              ; preds = %338, %18
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local %struct.TYPE_15__* @tsGetSchema(%struct.TYPE_16__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
