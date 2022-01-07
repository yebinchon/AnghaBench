; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnode.c_mgmtGetDnodeMeta.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnode.c_mgmtGetDnodeMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@TSDB_CODE_NO_RIGHTS = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BINARY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"created time\00", align 1
@TSDB_DATA_TYPE_SMALLINT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"open vnodes\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"free vnodes\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"balance state\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"public ip\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtGetDnodeMeta(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strcmp(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @TSDB_CODE_NO_RIGHTS, align 4
  store i32 %19, i32* %4, align 4
  br label %328

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = call %struct.TYPE_13__* @tsGetSchema(%struct.TYPE_14__* %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %9, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 16, i32* %28, align 4
  %29 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  store i8* %29, i8** %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strcpy(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i8* %49, i8** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 8, i32* %62, align 4
  %63 = load i8*, i8** @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  store i8* %63, i8** %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strcpy(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @htons(i32 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i8* %83, i8** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 2, i32* %96, align 4
  %97 = load i8*, i8** @TSDB_DATA_TYPE_SMALLINT, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  store i8* %97, i8** %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strcpy(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @htons(i32 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i8* %117, i8** %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 2, i32* %130, align 4
  %131 = load i8*, i8** @TSDB_DATA_TYPE_SMALLINT, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  store i8* %131, i8** %136, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @strcpy(i32 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @htons(i32 %150)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store i8* %151, i8** %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 10, i32* %164, align 4
  %165 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  store i8* %165, i8** %170, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @strcpy(i32 %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @htons(i32 %184)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  store i8* %185, i8** %190, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 18, i32* %198, align 4
  %199 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  store i8* %199, i8** %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @strcpy(i32 %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @htons(i32 %218)
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  store i8* %219, i8** %224, align 8
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 16, i32* %232, align 4
  %233 = load i8*, i8** @TSDB_DATA_TYPE_BINARY, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  store i8* %233, i8** %238, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @strcpy(i32 %244, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i8* @htons(i32 %252)
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  store i8* %253, i8** %258, align 8
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = call i8* @htons(i32 %261)
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  store i8* %262, i8** %264, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  store i32 0, i32* %271, align 4
  store i32 1, i32* %10, align 4
  br label %272

272:                                              ; preds = %300, %20
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %303

276:                                              ; preds = %272
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %284, %292
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  store i32 %293, i32* %299, align 4
  br label %300

300:                                              ; preds = %276
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %272

303:                                              ; preds = %272
  %304 = call i32 (...) @mgmtGetDnodesNum()
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 5
  store i32 %304, i32* %306, align 8
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 2
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sub nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %314, %322
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  store i32 %323, i32* %325, align 8
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 4
  store i32* null, i32** %327, align 8
  store i32 0, i32* %4, align 4
  br label %328

328:                                              ; preds = %303, %18
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @tsGetSchema(%struct.TYPE_14__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mgmtGetDnodesNum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
