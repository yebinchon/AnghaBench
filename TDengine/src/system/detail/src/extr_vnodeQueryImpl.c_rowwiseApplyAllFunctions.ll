; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_rowwiseApplyAllFunctions.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_rowwiseApplyAllFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32 (%struct.TYPE_42__*, i64)* }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_40__ = type { %struct.TYPE_32__*, i32, i32, %struct.TYPE_41__*, %struct.TYPE_42__* }
%struct.TYPE_32__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_41__ = type { i64, i64, i32, i64, i64, i64, %struct.TYPE_38__*, %struct.TYPE_35__, %struct.TYPE_39__*, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { i64, i64, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"QInfo:%p process data rows, numOfRows:%d, query order:%d, ts comp order:%d\00", align 1
@TS_JOIN_TAG_NOT_EQUALS = common dso_local global i64 0, align 8
@TS_JOIN_TS_NOT_EQUALS = common dso_local global i64 0, align 8
@TS_JOIN_TS_EQUAL = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_34__* null, align 8
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_40__*, i64*, i64*, i8*, i32*, i32*, i32)* @rowwiseApplyAllFunctions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rowwiseApplyAllFunctions(%struct.TYPE_40__* %0, i64* %1, i64* %2, i8* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_40__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca %struct.TYPE_41__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_39__*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_31__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %44 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_42__*, %struct.TYPE_42__** %45, align 8
  store %struct.TYPE_42__* %46, %struct.TYPE_42__** %15, align 8
  %47 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_41__*, %struct.TYPE_41__** %48, align 8
  store %struct.TYPE_41__* %49, %struct.TYPE_41__** %16, align 8
  store i64 0, i64* %17, align 8
  %50 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @isGroupbyNormalCol(i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %7
  %57 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %58 = call i64 @getNumOfResult(%struct.TYPE_40__* %57)
  store i64 %58, i64* %17, align 8
  br label %59

59:                                               ; preds = %56, %7
  %60 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32* @calloc(i64 %62, i32 4)
  store i32* %63, i32** %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i8* null, i8** %22, align 8
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i8* @getGroupbyColumnData(%struct.TYPE_40__* %67, i32* %68, i32* %69, i8* %70, i32 %71, i64* %20, i64* %21)
  store i8* %72, i8** %22, align 8
  br label %73

73:                                               ; preds = %66, %59
  store i64 0, i64* %23, align 8
  br label %74

74:                                               ; preds = %152, %73
  %75 = load i64, i64* %23, align 8
  %76 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %155

80:                                               ; preds = %74
  %81 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %82, align 8
  %84 = load i64, i64* %23, align 8
  %85 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %24, align 8
  %89 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @hasNullVal(%struct.TYPE_41__* %89, i64 %90, i32* %91, i32* %92, i32 %93)
  store i32 %94, i32* %25, align 4
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i64, i64* %23, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i64, i64* %23, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i8* @getDataBlocks(%struct.TYPE_40__* %95, i8* %96, i32* %99, i64 %100, i64 %102, i32 %103)
  store i8* %104, i8** %26, align 8
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %106 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_41__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %80
  %109 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %109, i32 0, i32 13
  %111 = load i64, i64* %110, align 8
  br label %116

112:                                              ; preds = %80
  %113 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %113, i32 0, i32 12
  %115 = load i64, i64* %114, align 8
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i64 [ %111, %108 ], [ %115, %112 ]
  store i64 %117, i64* %27, align 8
  %118 = load i64, i64* %27, align 8
  %119 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @taosGetIntervalStartTimestamp(i64 %118, i32 %121, i32 %124, i32 %127)
  store i64 %128, i64* %28, align 8
  %129 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %131 = load i64, i64* %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %130, i64 %131
  %133 = load i64, i64* %28, align 8
  %134 = load i8*, i8** %26, align 8
  %135 = load i64*, i64** %10, align 8
  %136 = bitcast i64* %135 to i8*
  %137 = load i64*, i64** %9, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %24, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %25, align 4
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %19, align 8
  %146 = load i64, i64* %23, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @setExecParams(%struct.TYPE_41__* %129, %struct.TYPE_42__* %132, i64 %133, i8* %134, i8* %136, i64 %138, i64 %139, i32* %140, i32 %141, i32 %144, i32* %147, i32 %150)
  br label %152

152:                                              ; preds = %116
  %153 = load i64, i64* %23, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %23, align 8
  br label %74

155:                                              ; preds = %74
  store i64 0, i64* %29, align 8
  br label %156

156:                                              ; preds = %205, %155
  %157 = load i64, i64* %29, align 8
  %158 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %157, %160
  br i1 %161, label %162, label %208

162:                                              ; preds = %156
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %163, i32 0, i32 8
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %164, align 8
  %166 = load i64, i64* %29, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %165, i64 %166
  store %struct.TYPE_39__* %167, %struct.TYPE_39__** %30, align 8
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  br label %180

175:                                              ; preds = %162
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  %177 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  br label %180

180:                                              ; preds = %175, %170
  %181 = phi i64 [ %174, %170 ], [ %179, %175 ]
  store i64 %181, i64* %31, align 8
  %182 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  %183 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 2
  store %struct.TYPE_31__* %184, %struct.TYPE_31__** %32, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = load i64, i64* %31, align 8
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  %199 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @doGetDataBlocks(i32 %185, %struct.TYPE_40__* %186, i8* %187, i64 %188, i32 %191, i32 %194, i32 %197, i64 %201)
  %203 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  %204 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %180
  %206 = load i64, i64* %29, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %29, align 8
  br label %156

208:                                              ; preds = %156
  store i64 0, i64* %33, align 8
  %209 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @GET_FORWARD_DIRECTION_FACTOR(i32 %212)
  store i64 %213, i64* %34, align 8
  %214 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %215, align 8
  %217 = icmp ne %struct.TYPE_32__* %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %208
  %219 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %220 = call i64 @GET_QINFO_ADDR(%struct.TYPE_41__* %219)
  %221 = inttoptr i64 %220 to i32*
  store i32* %221, i32** %35, align 8
  %222 = load i32*, i32** %35, align 8
  %223 = load i64*, i64** %9, align 8
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @qTrace(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32* %222, i64 %224, i32 %228, i32 %234)
  br label %236

236:                                              ; preds = %218, %208
  store i64 0, i64* %36, align 8
  br label %237

237:                                              ; preds = %393, %236
  %238 = load i64, i64* %36, align 8
  %239 = load i64*, i64** %9, align 8
  %240 = load i64, i64* %239, align 8
  %241 = icmp ult i64 %238, %240
  br i1 %241, label %242, label %396

242:                                              ; preds = %237
  %243 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %244 = load i64, i64* %36, align 8
  %245 = load i64, i64* %34, align 8
  %246 = call i64 @GET_COL_DATA_POS(%struct.TYPE_41__* %243, i64 %244, i64 %245)
  store i64 %246, i64* %37, align 8
  %247 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_32__*, %struct.TYPE_32__** %248, align 8
  %250 = icmp ne %struct.TYPE_32__* %249, null
  br i1 %250, label %251, label %272

251:                                              ; preds = %242
  %252 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %253 = load i64, i64* %37, align 8
  %254 = call i64 @doTSJoinFilter(%struct.TYPE_40__* %252, i64 %253)
  store i64 %254, i64* %38, align 8
  %255 = load i64, i64* %38, align 8
  %256 = load i64, i64* @TS_JOIN_TAG_NOT_EQUALS, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  br label %396

259:                                              ; preds = %251
  %260 = load i64, i64* %38, align 8
  %261 = load i64, i64* @TS_JOIN_TS_NOT_EQUALS, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  br label %393

264:                                              ; preds = %259
  %265 = load i64, i64* %38, align 8
  %266 = load i64, i64* @TS_JOIN_TS_EQUAL, align 8
  %267 = icmp eq i64 %265, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  br label %270

270:                                              ; preds = %264
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271, %242
  %273 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp ugt i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %272
  %278 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %279 = load i64, i64* %37, align 8
  %280 = call i32 @vnodeDoFilterData(%struct.TYPE_41__* %278, i64 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %277
  br label %393

283:                                              ; preds = %277, %272
  %284 = load i32, i32* %18, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %302

286:                                              ; preds = %283
  %287 = load i8*, i8** %22, align 8
  %288 = load i64, i64* %21, align 8
  %289 = load i64, i64* %37, align 8
  %290 = mul i64 %288, %289
  %291 = getelementptr inbounds i8, i8* %287, i64 %290
  store i8* %291, i8** %39, align 8
  %292 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %293 = load i8*, i8** %39, align 8
  %294 = load i64, i64* %20, align 8
  %295 = load i8*, i8** %22, align 8
  %296 = call i64 @setGroupResultForKey(%struct.TYPE_40__* %292, i8* %293, i64 %294, i8* %295)
  store i64 %296, i64* %40, align 8
  %297 = load i64, i64* %40, align 8
  %298 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %286
  br label %393

301:                                              ; preds = %286
  br label %302

302:                                              ; preds = %301, %283
  %303 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %37, align 8
  %308 = sub i64 %307, %306
  store i64 %308, i64* %37, align 8
  store i64 0, i64* %41, align 8
  br label %309

309:                                              ; preds = %343, %302
  %310 = load i64, i64* %41, align 8
  %311 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %312 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = icmp ult i64 %310, %313
  br i1 %314, label %315, label %346

315:                                              ; preds = %309
  %316 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %317 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %316, i32 0, i32 6
  %318 = load %struct.TYPE_38__*, %struct.TYPE_38__** %317, align 8
  %319 = load i64, i64* %41, align 8
  %320 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %42, align 8
  %324 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %325 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %326 = load i64, i64* %41, align 8
  %327 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i64 %326
  %328 = load i64, i64* %42, align 8
  %329 = call i64 @functionNeedToExecute(%struct.TYPE_40__* %324, %struct.TYPE_42__* %327, i64 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %315
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** @aAggs, align 8
  %333 = load i64, i64* %42, align 8
  %334 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 0
  %336 = load i32 (%struct.TYPE_42__*, i64)*, i32 (%struct.TYPE_42__*, i64)** %335, align 8
  %337 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %338 = load i64, i64* %41, align 8
  %339 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %337, i64 %338
  %340 = load i64, i64* %37, align 8
  %341 = call i32 %336(%struct.TYPE_42__* %339, i64 %340)
  br label %342

342:                                              ; preds = %331, %315
  br label %343

343:                                              ; preds = %342
  %344 = load i64, i64* %41, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %41, align 8
  br label %309

346:                                              ; preds = %309
  %347 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_32__*, %struct.TYPE_32__** %348, align 8
  %350 = icmp ne %struct.TYPE_32__* %349, null
  br i1 %350, label %351, label %362

351:                                              ; preds = %346
  %352 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_32__*, %struct.TYPE_32__** %353, align 8
  %355 = call i32 @tsBufNextPos(%struct.TYPE_32__* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %351
  %358 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %359 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %360 = call i32 @setQueryStatus(%struct.TYPE_41__* %358, i32 %359)
  br label %396

361:                                              ; preds = %351
  br label %362

362:                                              ; preds = %361, %346
  %363 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %364 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %392

367:                                              ; preds = %362
  %368 = load i64, i64* %33, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %33, align 8
  %370 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = icmp uge i64 %369, %372
  br i1 %373, label %374, label %392

374:                                              ; preds = %367
  %375 = load i64*, i64** %10, align 8
  %376 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %377 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* %36, align 8
  %380 = load i64, i64* %34, align 8
  %381 = mul i64 %379, %380
  %382 = add i64 %378, %381
  %383 = getelementptr inbounds i64, i64* %375, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* %34, align 8
  %386 = add i64 %384, %385
  %387 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %388 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %387, i32 0, i32 5
  store i64 %386, i64* %388, align 8
  %389 = load i64, i64* %36, align 8
  %390 = add i64 %389, 1
  %391 = load i64*, i64** %9, align 8
  store i64 %390, i64* %391, align 8
  br label %396

392:                                              ; preds = %367, %362
  br label %393

393:                                              ; preds = %392, %300, %282, %263
  %394 = load i64, i64* %36, align 8
  %395 = add i64 %394, 1
  store i64 %395, i64* %36, align 8
  br label %237

396:                                              ; preds = %374, %357, %258, %237
  %397 = load i32*, i32** %19, align 8
  %398 = call i32 @free(i32* %397)
  store i64 0, i64* %43, align 8
  %399 = load i32, i32* %18, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %396
  %402 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %403 = call i64 @getNumOfResult(%struct.TYPE_40__* %402)
  %404 = load i64, i64* %17, align 8
  %405 = sub i64 %403, %404
  store i64 %405, i64* %43, align 8
  br label %406

406:                                              ; preds = %401, %396
  %407 = load i64, i64* %43, align 8
  ret i64 %407
}

declare dso_local i32 @isGroupbyNormalCol(i32) #1

declare dso_local i64 @getNumOfResult(%struct.TYPE_40__*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i8* @getGroupbyColumnData(%struct.TYPE_40__*, i32*, i32*, i8*, i32, i64*, i64*) #1

declare dso_local i32 @hasNullVal(%struct.TYPE_41__*, i64, i32*, i32*, i32) #1

declare dso_local i8* @getDataBlocks(%struct.TYPE_40__*, i8*, i32*, i64, i64, i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_41__*) #1

declare dso_local i64 @taosGetIntervalStartTimestamp(i64, i32, i32, i32) #1

declare dso_local i32 @setExecParams(%struct.TYPE_41__*, %struct.TYPE_42__*, i64, i8*, i8*, i64, i64, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @doGetDataBlocks(i32, %struct.TYPE_40__*, i8*, i64, i32, i32, i32, i64) #1

declare dso_local i64 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i64 @GET_QINFO_ADDR(%struct.TYPE_41__*) #1

declare dso_local i32 @qTrace(i8*, i32*, i64, i32, i32) #1

declare dso_local i64 @GET_COL_DATA_POS(%struct.TYPE_41__*, i64, i64) #1

declare dso_local i64 @doTSJoinFilter(%struct.TYPE_40__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vnodeDoFilterData(%struct.TYPE_41__*, i64) #1

declare dso_local i64 @setGroupResultForKey(%struct.TYPE_40__*, i8*, i64, i8*) #1

declare dso_local i64 @functionNeedToExecute(%struct.TYPE_40__*, %struct.TYPE_42__*, i64) #1

declare dso_local i32 @tsBufNextPos(%struct.TYPE_32__*) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
