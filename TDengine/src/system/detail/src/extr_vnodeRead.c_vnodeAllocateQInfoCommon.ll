; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeAllocateQInfoCommon.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeAllocateQInfoCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_34__ = type { i32*, i16, i32, %struct.TYPE_24__, %struct.TYPE_33__ }
%struct.TYPE_24__ = type { i32, i16, i64, i32* }
%struct.TYPE_33__ = type { i16, i16, %struct.TYPE_34__*, %struct.TYPE_34__*, i32, %struct.TYPE_31__*, %struct.TYPE_29__, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_32__ = type { i16, i16, i64, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i16, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i16, i16, i32, i32 }

@TSDB_FUNC_FIRST_DST = common dso_local global i16 0, align 2
@TSDB_FUNC_FIRST = common dso_local global i16 0, align 2
@TSQL_SO_DESC = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST_DST = common dso_local global i16 0, align 2
@TSDB_FUNC_LAST = common dso_local global i16 0, align 2
@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSDB_FUNC_STDDEV = common dso_local global i16 0, align 2
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@vnodeList = common dso_local global %struct.TYPE_25__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_32__*, %struct.TYPE_23__*, %struct.TYPE_31__*)* @vnodeAllocateQInfoCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @vnodeAllocateQInfoCommon(%struct.TYPE_32__* %0, %struct.TYPE_23__* %1, %struct.TYPE_31__* %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %7, align 8
  %21 = call i8* @calloc(i32 1, i32 112)
  %22 = bitcast i8* %21 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %22, %struct.TYPE_34__** %8, align 8
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %24 = icmp eq %struct.TYPE_34__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  br label %411

26:                                               ; preds = %3
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 4
  store %struct.TYPE_33__* %28, %struct.TYPE_33__** %9, align 8
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %10, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 8
  store i16 %34, i16* %11, align 2
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %12, align 2
  %38 = load i16, i16* %11, align 2
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 0
  store i16 %38, i16* %40, align 8
  %41 = load i16, i16* %12, align 2
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 1
  store i16 %41, i16* %43, align 2
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load i16, i16* %11, align 2
  %69 = sext i16 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = call i8* @calloc(i32 1, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_34__*
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 2
  store %struct.TYPE_34__* %73, %struct.TYPE_34__** %75, align 8
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %77, align 8
  %79 = icmp eq %struct.TYPE_34__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %26
  br label %400

81:                                               ; preds = %26
  store i16 0, i16* %13, align 2
  br label %82

82:                                               ; preds = %200, %81
  %83 = load i16, i16* %13, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16, i16* %11, align 2
  %86 = sext i16 %85 to i32
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %203

88:                                               ; preds = %82
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %90, align 8
  %92 = load i16, i16* %13, align 2
  %93 = sext i16 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 1, i32* %97, align 4
  %98 = load i16, i16* %13, align 2
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %100, align 8
  %102 = load i16, i16* %13, align 2
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 1
  store i16 %98, i16* %105, align 8
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %107, align 8
  %109 = load i16, i16* %13, align 2
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %114 = load i16, i16* %13, align 2
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i64 %115
  %117 = bitcast %struct.TYPE_24__* %112 to i8*
  %118 = bitcast %struct.TYPE_24__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 24, i1 false)
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %120, align 8
  %122 = load i16, i16* %13, align 2
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 3
  store %struct.TYPE_24__* %125, %struct.TYPE_24__** %14, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 3
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %129 = load i16, i16* %13, align 2
  %130 = sext i16 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %88
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %137 = load i16, i16* %13, align 2
  %138 = sext i16 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i8* @calloc(i32 1, i32 %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 3
  store i32* %146, i32** %148, align 8
  store i64 0, i64* %15, align 8
  br label %149

149:                                              ; preds = %174, %135
  %150 = load i64, i64* %15, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %152 = load i16, i16* %13, align 2
  %153 = sext i16 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = icmp ult i64 %150, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %149
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %15, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %166 = load i16, i16* %13, align 2
  %167 = sext i16 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* %15, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = call i32 @tscColumnFilterInfoCopy(i32* %164, i32* %172)
  br label %174

174:                                              ; preds = %159
  %175 = load i64, i64* %15, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %15, align 8
  br label %149

177:                                              ; preds = %149
  br label %187

178:                                              ; preds = %88
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %180, align 8
  %182 = load i16, i16* %13, align 2
  %183 = sext i16 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 3
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %178, %177
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %189 = load i16, i16* %13, align 2
  %190 = sext i16 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  br label %200

200:                                              ; preds = %187
  %201 = load i16, i16* %13, align 2
  %202 = add i16 %201, 1
  store i16 %202, i16* %13, align 2
  br label %82

203:                                              ; preds = %82
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %206 = call i32 @vnodeUpdateQueryColumnIndex(%struct.TYPE_33__* %204, %struct.TYPE_23__* %205)
  store i16 0, i16* %16, align 2
  br label %207

207:                                              ; preds = %372, %203
  %208 = load i16, i16* %16, align 2
  %209 = sext i16 %208 to i32
  %210 = load i16, i16* %12, align 2
  %211 = sext i16 %210 to i32
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %375

213:                                              ; preds = %207
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %215 = load i16, i16* %16, align 2
  %216 = sext i16 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %224 = load i16, i16* %16, align 2
  %225 = sext i16 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %228
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 8
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %236 = load i16, i16* %16, align 2
  %237 = sext i16 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @TSDB_COL_IS_TAG(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %213
  br label %372

246:                                              ; preds = %213
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %248 = load i16, i16* %16, align 2
  %249 = sext i16 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  %254 = load i16, i16* %253, align 4
  store i16 %254, i16* %17, align 2
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %256 = load i16, i16* %16, align 2
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  %261 = load i16, i16* %260, align 8
  store i16 %261, i16* %18, align 2
  store i64 0, i64* %19, align 8
  br label %262

262:                                              ; preds = %368, %246
  %263 = load i64, i64* %19, align 8
  %264 = load i16, i16* %11, align 2
  %265 = sext i16 %264 to i64
  %266 = icmp ult i64 %263, %265
  br i1 %266, label %267, label %371

267:                                              ; preds = %262
  %268 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %269, align 8
  %271 = load i64, i64* %19, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 1
  %275 = load i16, i16* %274, align 4
  %276 = sext i16 %275 to i32
  %277 = load i16, i16* %17, align 2
  %278 = sext i16 %277 to i32
  %279 = icmp eq i32 %276, %278
  br i1 %279, label %280, label %367

280:                                              ; preds = %267
  %281 = load i64, i64* %19, align 8
  %282 = trunc i64 %281 to i16
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %284 = load i16, i16* %16, align 2
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 1
  store i16 %282, i16* %289, align 2
  %290 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %291, align 8
  %293 = load i64, i64* %19, align 8
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %298 = load i16, i16* %16, align 2
  %299 = sext i16 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 2
  store i32 %296, i32* %303, align 4
  %304 = load i16, i16* %18, align 2
  %305 = sext i16 %304 to i32
  %306 = load i16, i16* @TSDB_FUNC_FIRST_DST, align 2
  %307 = sext i16 %306 to i32
  %308 = icmp eq i32 %305, %307
  br i1 %308, label %315, label %309

309:                                              ; preds = %280
  %310 = load i16, i16* %18, align 2
  %311 = sext i16 %310 to i32
  %312 = load i16, i16* @TSDB_FUNC_FIRST, align 2
  %313 = sext i16 %312 to i32
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %309, %280
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 6
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @TSQL_SO_DESC, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %341, label %322

322:                                              ; preds = %315, %309
  %323 = load i16, i16* %18, align 2
  %324 = sext i16 %323 to i32
  %325 = load i16, i16* @TSDB_FUNC_LAST_DST, align 2
  %326 = sext i16 %325 to i32
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %334, label %328

328:                                              ; preds = %322
  %329 = load i16, i16* %18, align 2
  %330 = sext i16 %329 to i32
  %331 = load i16, i16* @TSDB_FUNC_LAST, align 2
  %332 = sext i16 %331 to i32
  %333 = icmp eq i32 %330, %332
  br i1 %333, label %334, label %350

334:                                              ; preds = %328, %322
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %335, i32 0, i32 6
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @TSQL_SO_ASC, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %350

341:                                              ; preds = %334, %315
  %342 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_34__*, %struct.TYPE_34__** %343, align 8
  %345 = load i64, i64* %19, align 8
  %346 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  store i32 1, i32* %349, align 4
  br label %366

350:                                              ; preds = %334, %328
  %351 = load i16, i16* %18, align 2
  %352 = sext i16 %351 to i32
  %353 = load i16, i16* @TSDB_FUNC_STDDEV, align 2
  %354 = sext i16 %353 to i32
  %355 = icmp eq i32 %352, %354
  br i1 %355, label %356, label %365

356:                                              ; preds = %350
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %358, align 8
  %360 = load i64, i64* %19, align 8
  %361 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 1
  store i32 1, i32* %364, align 4
  br label %365

365:                                              ; preds = %356, %350
  br label %366

366:                                              ; preds = %365, %341
  br label %371

367:                                              ; preds = %267
  br label %368

368:                                              ; preds = %367
  %369 = load i64, i64* %19, align 8
  %370 = add i64 %369, 1
  store i64 %370, i64* %19, align 8
  br label %262

371:                                              ; preds = %366, %262
  br label %372

372:                                              ; preds = %371, %245
  %373 = load i16, i16* %16, align 2
  %374 = add i16 %373, 1
  store i16 %374, i16* %16, align 2
  br label %207

375:                                              ; preds = %207
  %376 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %377 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %377, i32 0, i32 5
  store %struct.TYPE_31__* %376, %struct.TYPE_31__** %378, align 8
  %379 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %380 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %381 = call i64 @vnodeCreateFilterInfo(%struct.TYPE_34__* %379, %struct.TYPE_33__* %380)
  store i64 %381, i64* %20, align 8
  %382 = load i64, i64* %20, align 8
  %383 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %375
  br label %400

386:                                              ; preds = %375
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %388 = call i32 @vnodeUpdateFilterColumnIndex(%struct.TYPE_33__* %387)
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** @vnodeList, align 8
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %398 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %397, i32 0, i32 4
  store i32 %396, i32* %398, align 8
  %399 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  store %struct.TYPE_34__* %399, %struct.TYPE_34__** %4, align 8
  br label %411

400:                                              ; preds = %385, %80
  %401 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_34__*, %struct.TYPE_34__** %402, align 8
  %404 = call i32 @tfree(%struct.TYPE_34__* %403)
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %405, i32 0, i32 2
  %407 = load %struct.TYPE_34__*, %struct.TYPE_34__** %406, align 8
  %408 = call i32 @tfree(%struct.TYPE_34__* %407)
  %409 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %410 = call i32 @tfree(%struct.TYPE_34__* %409)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  br label %411

411:                                              ; preds = %400, %386, %25
  %412 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  ret %struct.TYPE_34__* %412
}

declare dso_local i8* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tscColumnFilterInfoCopy(i32*, i32*) #1

declare dso_local i32 @vnodeUpdateQueryColumnIndex(%struct.TYPE_33__*, %struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @TSDB_COL_IS_TAG(i32) #1

declare dso_local i64 @vnodeCreateFilterInfo(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @vnodeUpdateFilterColumnIndex(%struct.TYPE_33__*) #1

declare dso_local i32 @tfree(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
