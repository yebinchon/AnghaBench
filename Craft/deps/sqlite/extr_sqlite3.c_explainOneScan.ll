; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_explainOneScan.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_explainOneScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32*, i32* }
%struct.TYPE_17__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8* }

@WHERE_MULTI_OR = common dso_local global i32 0, align 4
@WHERE_ONETABLE_ONLY = common dso_local global i32 0, align 4
@WHERE_BTM_LIMIT = common dso_local global i32 0, align 4
@WHERE_TOP_LIMIT = common dso_local global i32 0, align 4
@WHERE_ORDERBY_MIN = common dso_local global i32 0, align 4
@WHERE_ORDERBY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SEARCH\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s SUBQUERY %d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s TABLE %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s AS %s\00", align 1
@WHERE_INDEXED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"%s USING %s%sINDEX%s%s%s\00", align 1
@WHERE_TEMP_INDEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"AUTOMATIC \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WHERE_IDX_ONLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"COVERING \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@WHERE_ROWID_EQ = common dso_local global i32 0, align 4
@WHERE_ROWID_RANGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"%s USING INTEGER PRIMARY KEY\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%s (rowid=?)\00", align 1
@WHERE_BOTH_LIMIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"%s (rowid>? AND rowid<?)\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%s (rowid>?)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"%s (rowid<?)\00", align 1
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"%s VIRTUAL TABLE INDEX %d:%s\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s (~%lld rows)\00", align 1
@OP_Explain = common dso_local global i32 0, align 4
@P4_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i32)* @explainOneScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explainOneScan(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.SrcList_item*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %284

27:                                               ; preds = %6
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.SrcList_item*, %struct.SrcList_item** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %34, i64 %37
  store %struct.SrcList_item* %38, %struct.SrcList_item** %14, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %15, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %16, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @WHERE_MULTI_OR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %27
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @WHERE_ONETABLE_ONLY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %27
  br label %284

58:                                               ; preds = %52
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @WHERE_BTM_LIMIT, align 4
  %67 = load i32, i32* @WHERE_TOP_LIMIT, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @WHERE_ORDERBY_MIN, align 4
  %74 = load i32, i32* @WHERE_ORDERBY_MAX, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %71, %64, %58
  %79 = phi i1 [ true, %64 ], [ true, %58 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %20, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i8* @sqlite3MPrintf(i32* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %85)
  store i8* %86, i8** %17, align 8
  %87 = load %struct.SrcList_item*, %struct.SrcList_item** %14, align 8
  %88 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %78
  %92 = load i32*, i32** %16, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = load %struct.SrcList_item*, %struct.SrcList_item** %14, align 8
  %96 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %92, i8* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %94, i32 %97)
  store i8* %98, i8** %17, align 8
  br label %107

99:                                               ; preds = %78
  %100 = load i32*, i32** %16, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = load %struct.SrcList_item*, %struct.SrcList_item** %14, align 8
  %104 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %100, i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %102, i32 %105)
  store i8* %106, i8** %17, align 8
  br label %107

107:                                              ; preds = %99, %91
  %108 = load %struct.SrcList_item*, %struct.SrcList_item** %14, align 8
  %109 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i32*, i32** %16, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load %struct.SrcList_item*, %struct.SrcList_item** %14, align 8
  %117 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %113, i8* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %115, i32 %118)
  store i8* %119, i8** %17, align 8
  br label %120

120:                                              ; preds = %112, %107
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @WHERE_INDEXED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %173

125:                                              ; preds = %120
  %126 = load i32*, i32** %16, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = load %struct.SrcList_item*, %struct.SrcList_item** %14, align 8
  %129 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @explainIndexRange(i32* %126, %struct.TYPE_16__* %127, i32 %130)
  store i8* %131, i8** %21, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @WHERE_TEMP_INDEX, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @WHERE_TEMP_INDEX, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @WHERE_TEMP_INDEX, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %125
  br label %166

158:                                              ; preds = %125
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  br label %166

166:                                              ; preds = %158, %157
  %167 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %157 ], [ %165, %158 ]
  %168 = load i8*, i8** %21, align 8
  %169 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %132, i8* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %134, i8* %140, i8* %146, i8* %152, i8* %167, i8* %168)
  store i8* %169, i8** %17, align 8
  %170 = load i32*, i32** %16, align 8
  %171 = load i8*, i8** %21, align 8
  %172 = call i32 @sqlite3DbFree(i32* %170, i8* %171)
  br label %252

173:                                              ; preds = %120
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @WHERE_ROWID_EQ, align 4
  %176 = load i32, i32* @WHERE_ROWID_RANGE, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %229

180:                                              ; preds = %173
  %181 = load i32*, i32** %16, align 8
  %182 = load i8*, i8** %17, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %181, i8* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %183)
  store i8* %184, i8** %17, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @WHERE_ROWID_EQ, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %180
  %190 = load i32*, i32** %16, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %190, i8* %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %192)
  store i8* %193, i8** %17, align 8
  br label %228

194:                                              ; preds = %180
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @WHERE_BOTH_LIMIT, align 4
  %197 = and i32 %195, %196
  %198 = load i32, i32* @WHERE_BOTH_LIMIT, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %194
  %201 = load i32*, i32** %16, align 8
  %202 = load i8*, i8** %17, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %201, i8* %202, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %203)
  store i8* %204, i8** %17, align 8
  br label %227

205:                                              ; preds = %194
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @WHERE_BTM_LIMIT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i32*, i32** %16, align 8
  %212 = load i8*, i8** %17, align 8
  %213 = load i8*, i8** %17, align 8
  %214 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %211, i8* %212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %213)
  store i8* %214, i8** %17, align 8
  br label %226

215:                                              ; preds = %205
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @WHERE_TOP_LIMIT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i32*, i32** %16, align 8
  %222 = load i8*, i8** %17, align 8
  %223 = load i8*, i8** %17, align 8
  %224 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %221, i8* %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %223)
  store i8* %224, i8** %17, align 8
  br label %225

225:                                              ; preds = %220, %215
  br label %226

226:                                              ; preds = %225, %210
  br label %227

227:                                              ; preds = %226, %200
  br label %228

228:                                              ; preds = %227, %189
  br label %251

229:                                              ; preds = %173
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  store %struct.TYPE_15__* %239, %struct.TYPE_15__** %22, align 8
  %240 = load i32*, i32** %16, align 8
  %241 = load i8*, i8** %17, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %240, i8* %241, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %242, i32 %245, i32 %248)
  store i8* %249, i8** %17, align 8
  br label %250

250:                                              ; preds = %234, %229
  br label %251

251:                                              ; preds = %250, %228
  br label %252

252:                                              ; preds = %251, %166
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @WHERE_ORDERBY_MIN, align 4
  %255 = load i32, i32* @WHERE_ORDERBY_MAX, align 4
  %256 = or i32 %254, %255
  %257 = and i32 %253, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %252
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* @WHERE_ORDERBY_MIN, align 4
  %262 = and i32 %260, %261
  %263 = call i32 @testcase(i32 %262)
  store i32 1, i32* %18, align 4
  br label %270

264:                                              ; preds = %252
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %18, align 4
  br label %270

270:                                              ; preds = %264, %259
  %271 = load i32*, i32** %16, align 8
  %272 = load i8*, i8** %17, align 8
  %273 = load i8*, i8** %17, align 8
  %274 = load i32, i32* %18, align 4
  %275 = call i8* (i32*, i8*, i8*, i8*, ...) @sqlite3MAppendf(i32* %271, i8* %272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %273, i32 %274)
  store i8* %275, i8** %17, align 8
  %276 = load i32*, i32** %15, align 8
  %277 = load i32, i32* @OP_Explain, align 4
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %11, align 4
  %281 = load i8*, i8** %17, align 8
  %282 = load i32, i32* @P4_DYNAMIC, align 4
  %283 = call i32 @sqlite3VdbeAddOp4(i32* %276, i32 %277, i32 %278, i32 %279, i32 %280, i8* %281, i32 %282)
  br label %284

284:                                              ; preds = %57, %270, %6
  ret void
}

declare dso_local i8* @sqlite3MPrintf(i32*, i8*, i8*) #1

declare dso_local i8* @sqlite3MAppendf(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @explainIndexRange(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32*, i8*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
