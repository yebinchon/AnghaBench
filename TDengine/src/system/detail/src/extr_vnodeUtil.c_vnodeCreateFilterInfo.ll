; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeCreateFilterInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeCreateFilterInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_17__*, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_RELATION_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"QInfo:%p invalid filter info\00", align 1
@TSDB_CODE_INVALID_QUERY_MSG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"QInfo:%p failed to get filter function, invalid data type:%d\00", align 1
@TSDB_RELATION_LARGE_EQUAL = common dso_local global i64 0, align 8
@TSDB_RELATION_LARGE = common dso_local global i64 0, align 8
@TSDB_RELATION_LESS_EQUAL = common dso_local global i64 0, align 8
@TSDB_RELATION_LESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"pQInfo:%p failed to get filter function, invalid filter condition\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnodeCreateFilterInfo(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %18

43:                                               ; preds = %18
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %49, i64* %3, align 8
  br label %301

50:                                               ; preds = %43
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 24, %54
  %56 = trunc i64 %55 to i32
  %57 = call i8* @calloc(i32 1, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_13__*
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %296, %50
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %299

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %295

77:                                               ; preds = %67
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %81
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i64 %88
  %90 = call i32 @memcpy(%struct.TYPE_16__* %84, %struct.TYPE_17__* %89, i32 4)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @calloc(i32 %108, i32 32)
  %110 = bitcast i8* %109 to %struct.TYPE_15__*
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %112, align 8
  store i64 0, i64* %10, align 8
  br label %113

113:                                              ; preds = %289, %77
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %114, %118
  br i1 %119, label %120, label %292

120:                                              ; preds = %113
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i64 %124
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %11, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %136
  %138 = bitcast %struct.TYPE_11__* %127 to i8*
  %139 = bitcast %struct.TYPE_11__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 16, i1 false)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %12, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %13, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* @TSDB_RELATION_INVALID, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %120
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @TSDB_RELATION_INVALID, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 (i8*, i8*, ...) @dError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %156)
  %158 = load i64, i64* @TSDB_CODE_INVALID_QUERY_MSG, align 8
  store i64 %158, i64* %3, align 8
  br label %301

159:                                              ; preds = %151, %120
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load i64, i64* %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %14, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i8** @vnodeGetRangeFilterFuncArray(i32 %176)
  store i8** %177, i8*** %16, align 8
  %178 = load i32, i32* %14, align 4
  %179 = call i8** @vnodeGetValueFilterFuncArray(i32 %178)
  store i8** %179, i8*** %17, align 8
  %180 = load i8**, i8*** %16, align 8
  %181 = icmp eq i8** %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %159
  %183 = load i8**, i8*** %17, align 8
  %184 = icmp eq i8** %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i8*, i8** %4, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 (i8*, i8*, ...) @dError(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %186, i32 %187)
  %189 = load i64, i64* @TSDB_CODE_INVALID_QUERY_MSG, align 8
  store i64 %189, i64* %3, align 8
  br label %301

190:                                              ; preds = %182, %159
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* @TSDB_RELATION_LARGE_EQUAL, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %12, align 8
  %196 = load i64, i64* @TSDB_RELATION_LARGE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %249

198:                                              ; preds = %194, %190
  %199 = load i64, i64* %13, align 8
  %200 = load i64, i64* @TSDB_RELATION_LESS_EQUAL, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load i64, i64* %13, align 8
  %204 = load i64, i64* @TSDB_RELATION_LESS, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %249

206:                                              ; preds = %202, %198
  %207 = load i64, i64* %12, align 8
  %208 = load i64, i64* @TSDB_RELATION_LARGE_EQUAL, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %206
  %211 = load i64, i64* %13, align 8
  %212 = load i64, i64* @TSDB_RELATION_LESS_EQUAL, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %210
  %215 = load i8**, i8*** %16, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 4
  %217 = load i8*, i8** %216, align 8
  %218 = bitcast i8* %217 to i32*
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  store i32* %218, i32** %220, align 8
  br label %228

221:                                              ; preds = %210
  %222 = load i8**, i8*** %16, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 2
  %224 = load i8*, i8** %223, align 8
  %225 = bitcast i8* %224 to i32*
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  store i32* %225, i32** %227, align 8
  br label %228

228:                                              ; preds = %221, %214
  br label %248

229:                                              ; preds = %206
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* @TSDB_RELATION_LESS_EQUAL, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = load i8**, i8*** %16, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 3
  %236 = load i8*, i8** %235, align 8
  %237 = bitcast i8* %236 to i32*
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  store i32* %237, i32** %239, align 8
  br label %247

240:                                              ; preds = %229
  %241 = load i8**, i8*** %16, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 1
  %243 = load i8*, i8** %242, align 8
  %244 = bitcast i8* %243 to i32*
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  store i32* %244, i32** %246, align 8
  br label %247

247:                                              ; preds = %240, %233
  br label %248

248:                                              ; preds = %247, %228
  br label %279

249:                                              ; preds = %202, %194
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* @TSDB_RELATION_INVALID, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %270

253:                                              ; preds = %249
  %254 = load i8**, i8*** %17, align 8
  %255 = load i64, i64* %12, align 8
  %256 = getelementptr inbounds i8*, i8** %254, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = bitcast i8* %257 to i32*
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  store i32* %258, i32** %260, align 8
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* @TSDB_RELATION_INVALID, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %253
  %265 = load i8*, i8** %4, align 8
  %266 = load i32, i32* %14, align 4
  %267 = call i32 (i8*, i8*, ...) @dError(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %265, i32 %266)
  %268 = load i64, i64* @TSDB_CODE_INVALID_QUERY_MSG, align 8
  store i64 %268, i64* %3, align 8
  br label %301

269:                                              ; preds = %253
  br label %278

270:                                              ; preds = %249
  %271 = load i8**, i8*** %17, align 8
  %272 = load i64, i64* %13, align 8
  %273 = getelementptr inbounds i8*, i8** %271, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = bitcast i8* %274 to i32*
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  store i32* %275, i32** %277, align 8
  br label %278

278:                                              ; preds = %270, %269
  br label %279

279:                                              ; preds = %278, %248
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = icmp ne i32* %282, null
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load i32, i32* %15, align 4
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %279
  %290 = load i64, i64* %10, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %10, align 8
  br label %113

292:                                              ; preds = %113
  %293 = load i64, i64* %8, align 8
  %294 = add i64 %293, 1
  store i64 %294, i64* %8, align 8
  br label %295

295:                                              ; preds = %292, %67
  br label %296

296:                                              ; preds = %295
  %297 = load i64, i64* %7, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %7, align 8
  br label %61

299:                                              ; preds = %61
  %300 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %300, i64* %3, align 8
  br label %301

301:                                              ; preds = %299, %264, %185, %155, %48
  %302 = load i64, i64* %3, align 8
  ret i64 %302
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dError(i8*, i8*, ...) #1

declare dso_local i8** @vnodeGetRangeFilterFuncArray(i32) #1

declare dso_local i8** @vnodeGetValueFilterFuncArray(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
