; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeOpenFileForImport.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeOpenFileForImport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i64 }
%struct.stat = type { i32 }

@vnodeList = common dso_local global %struct.TYPE_18__* null, align 8
@TSDB_FILE_HEADER_LEN = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vid:%d sid:%d, failed to read compInfo from file:%s\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeOpenFileForImport(%struct.TYPE_21__* %0, i8* %1, %struct.TYPE_22__* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store i32** %3, i32*** %9, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %10, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** @vnodeList, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 %24
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %11, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %12, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %4
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %503

41:                                               ; preds = %35, %4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %49 = call i32 @vnodeCloseFileForImport(%struct.TYPE_20__* %47, %struct.TYPE_22__* %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @vnodeOpenCommitFiles(%struct.TYPE_18__* %54, i64 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %505

61:                                               ; preds = %50
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @fstat(i64 %64, %struct.stat* %14)
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @TSDB_FILE_HEADER_LEN, align 4
  %78 = load i32, i32* @SEEK_SET, align 4
  %79 = call i32 @lseek(i64 %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @read(i64 %82, %struct.TYPE_17__* %85, i32 %91)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %183

103:                                              ; preds = %61
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @SEEK_SET, align 4
  %118 = call i32 @lseek(i64 %106, i32 %116, i32 %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 5
  %124 = call i32 @read(i64 %121, %struct.TYPE_17__* %123, i32 4)
  %125 = sext i32 %124 to i64
  %126 = icmp ne i64 %125, 4
  br i1 %126, label %127, label %138

127:                                              ; preds = %103
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %130, i64 %133, i32 %136)
  store i32 -1, i32* %5, align 4
  br label %505

138:                                              ; preds = %103
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %138
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 6
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  br label %182

173:                                              ; preds = %138
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 6
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %173, %147
  br label %183

183:                                              ; preds = %182, %61
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %260

194:                                              ; preds = %183
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 5
  %197 = call i32 @memset(%struct.TYPE_17__* %196, i32 0, i32 4)
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  store i64 %200, i64* %203, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %227, %194
  %210 = load i32, i32* %15, align 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %209
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %215
  br label %230

226:                                              ; preds = %215
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %15, align 4
  br label %209

230:                                              ; preds = %225, %209
  %231 = load i32, i32* %15, align 4
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %231, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  br label %250

241:                                              ; preds = %230
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 6
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  br label %250

250:                                              ; preds = %241, %236
  %251 = phi i64 [ %240, %236 ], [ %249, %241 ]
  %252 = trunc i64 %251 to i32
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %250, %183
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* @SEEK_SET, align 4
  %271 = call i32 @lseek(i64 %269, i32 0, i32 %270)
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @SEEK_SET, align 4
  %276 = call i32 @lseek(i64 %274, i32 0, i32 %275)
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @tsendfile(i64 %279, i64 %282, i32* null, i32 %285)
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 5
  %292 = call i32 @twrite(i64 %289, %struct.TYPE_17__* %291, i32 4)
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 6
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %294, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp sgt i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %260
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* @SEEK_CUR, align 4
  %308 = call i32 @lseek(i64 %306, i32 4, i32 %307)
  br label %309

309:                                              ; preds = %303, %260
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp slt i64 %312, %315
  br i1 %316, label %317, label %373

317:                                              ; preds = %309
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %317
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 4
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = add i64 %333, %329
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %331, align 4
  br label %336

336:                                              ; preds = %323, %317
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %339 = load i32**, i32*** %9, align 8
  %340 = call i32 @vnodeProcessLastBlock(%struct.TYPE_21__* %337, %struct.TYPE_22__* %338, i32** %339)
  store i32 %340, i32* %16, align 4
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = add i64 %347, 4
  %349 = trunc i64 %348 to i32
  %350 = load i32, i32* @SEEK_SET, align 4
  %351 = call i32 @lseek(i64 %343, i32 %349, i32 %350)
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %372

357:                                              ; preds = %336
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = sext i32 %367 to i64
  %369 = mul i64 %368, 4
  %370 = trunc i64 %369 to i32
  %371 = call i32 @tsendfile(i64 %360, i64 %363, i32* null, i32 %370)
  br label %372

372:                                              ; preds = %357, %336
  br label %502

373:                                              ; preds = %309
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp eq i64 %376, %379
  br i1 %380, label %381, label %498

381:                                              ; preds = %373
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  br label %395

391:                                              ; preds = %381
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  br label %395

395:                                              ; preds = %391, %386
  %396 = phi i32 [ %390, %386 ], [ %394, %391 ]
  store i32 %396, i32* %17, align 4
  %397 = load i32, i32* %17, align 4
  %398 = sext i32 %397 to i64
  %399 = mul i64 %398, 4
  %400 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = add i64 %403, %399
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* %401, align 4
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %444

410:                                              ; preds = %395
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %444

416:                                              ; preds = %410
  %417 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = icmp eq i32 %419, %423
  br i1 %424, label %425, label %444

425:                                              ; preds = %416
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 5
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 3
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %444

431:                                              ; preds = %425
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %434 = load i32**, i32*** %9, align 8
  %435 = call i32 @vnodeProcessLastBlock(%struct.TYPE_21__* %432, %struct.TYPE_22__* %433, i32** %434)
  store i32 %435, i32* %16, align 4
  %436 = load i32, i32* %16, align 4
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %431
  %439 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = add nsw i32 %441, -1
  store i32 %442, i32* %440, align 8
  br label %443

443:                                              ; preds = %438, %431
  br label %444

444:                                              ; preds = %443, %425, %416, %410, %395
  %445 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = icmp sgt i64 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %444
  %450 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = add nsw i32 %453, -1
  store i32 %454, i32* %452, align 8
  br label %455

455:                                              ; preds = %449, %444
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = icmp sgt i32 %458, 0
  br i1 %459, label %460, label %485

460:                                              ; preds = %455
  %461 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 2
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = sext i32 %466 to i64
  %468 = add i64 %467, 4
  %469 = trunc i64 %468 to i32
  %470 = load i32, i32* @SEEK_SET, align 4
  %471 = call i32 @lseek(i64 %463, i32 %469, i32 %470)
  %472 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %473 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %476 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %475, i32 0, i32 2
  %477 = load i64, i64* %476, align 8
  %478 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 8
  %481 = sext i32 %480 to i64
  %482 = mul i64 %481, 4
  %483 = trunc i64 %482 to i32
  %484 = call i32 @tsendfile(i64 %474, i64 %477, i32* null, i32 %483)
  br label %485

485:                                              ; preds = %460, %455
  %486 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %489, i32 0, i32 5
  %491 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = icmp slt i32 %488, %492
  br i1 %493, label %494, label %497

494:                                              ; preds = %485
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 1
  store i32 0, i32* %496, align 4
  br label %497

497:                                              ; preds = %494, %485
  br label %501

498:                                              ; preds = %373
  %499 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 1
  store i32 0, i32* %500, align 4
  br label %501

501:                                              ; preds = %498, %497
  br label %502

502:                                              ; preds = %501, %372
  br label %503

503:                                              ; preds = %502, %35
  %504 = load i32, i32* %16, align 4
  store i32 %504, i32* %5, align 4
  br label %505

505:                                              ; preds = %503, %127, %60
  %506 = load i32, i32* %5, align 4
  ret i32 %506
}

declare dso_local i32 @vnodeCloseFileForImport(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i64 @vnodeOpenCommitFiles(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i32 @read(i64, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @dError(i8*, i64, i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @tsendfile(i64, i64, i32*, i32) #1

declare dso_local i32 @twrite(i64, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vnodeProcessLastBlock(%struct.TYPE_21__*, %struct.TYPE_22__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
