; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeFilterQualifiedMeters.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeFilterQualifiedMeters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_32__*, i32 }
%struct.TYPE_32__ = type { i64, i64, i32, %struct.TYPE_31__** }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i8*, i64, i32 }
%struct.TYPE_25__ = type { i32, i64* }
%struct.TYPE_34__ = type { %struct.TYPE_27__*, i64, i32* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_33__ = type { i64, i32, i32, i32 }
%struct.TYPE_35__ = type { i64 }

@vnodeList = common dso_local global %struct.TYPE_28__* null, align 8
@POINTER_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"QInfo:%p failed to find required sid:%d\00", align 1
@TSDB_FILE_HEADER_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"QInfo:%p vid:%d sid:%d id:%s, compInfoOffset:%d is not valid\00", align 1
@offsetComparator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_34__** @vnodeFilterQualifiedMeters(%struct.TYPE_30__* %0, i64 %1, %struct.TYPE_29__* %2, %struct.TYPE_25__* %3, %struct.TYPE_34__* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_34__**, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_31__**, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_34__**, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_33__*, align 8
  %27 = alloca %struct.TYPE_34__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_34__* %4, %struct.TYPE_34__** %12, align 8
  store i64* %5, i64** %13, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 1
  store i32* %31, i32** %14, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  store %struct.TYPE_32__* %34, %struct.TYPE_32__** %15, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %36, align 8
  store %struct.TYPE_31__** %37, %struct.TYPE_31__*** %16, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** @vnodeList, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i64 %39
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %17, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %18, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = add i64 %49, 4
  store i64 %50, i64* %19, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = call i64 @validateHeaderOffsetSegment(%struct.TYPE_30__* %51, i32 %54, i64 %55, i8* %56, i64 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %6
  %61 = load i64*, i64** %13, align 8
  store i64 0, i64* %61, align 8
  store %struct.TYPE_34__** null, %struct.TYPE_34__*** %7, align 8
  br label %303

62:                                               ; preds = %6
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = call i64 @getOldestKey(i32 %65, i32 %68, %struct.TYPE_26__* %70)
  store i64 %71, i64* %20, align 8
  %72 = load i32, i32* @POINTER_BYTES, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = call %struct.TYPE_34__** @malloc(i32 %76)
  store %struct.TYPE_34__** %77, %struct.TYPE_34__*** %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %25, align 8
  br label %78

78:                                               ; preds = %278, %62
  %79 = load i64, i64* %25, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %281

85:                                               ; preds = %78
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %16, align 8
  %90 = load i64, i64* %25, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %89, i64 %90
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_33__* @getMeterObj(i32 %88, i32 %94)
  store %struct.TYPE_33__* %95, %struct.TYPE_33__** %26, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %97 = icmp eq %struct.TYPE_33__* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %100 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %16, align 8
  %101 = load i64, i64* %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %100, i64 %101
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, %struct.TYPE_30__*, i32, ...) @dError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %99, i32 %105)
  br label %278

107:                                              ; preds = %85
  %108 = load i64, i64* %25, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %22, align 8
  %113 = add i64 %112, 1
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp uge i64 %108, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i64, i64* %22, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %22, align 8
  br label %120

120:                                              ; preds = %117, %107
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %122 = load i64, i64* %25, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i64 %122
  store %struct.TYPE_34__* %123, %struct.TYPE_34__** %27, align 8
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %131 = load i64, i64* %25, align 8
  %132 = load i64, i64* %22, align 8
  %133 = call i32 @setMeterDataInfo(%struct.TYPE_34__* %129, %struct.TYPE_33__* %130, i64 %131, i64 %132)
  br label %134

134:                                              ; preds = %128, %120
  %135 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %136, align 8
  %138 = icmp ne %struct.TYPE_27__* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %23, align 8
  br label %149

145:                                              ; preds = %134
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %23, align 8
  br label %149

149:                                              ; preds = %145, %139
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %24, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = call i64 @QUERY_IS_ASC_QUERY(i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %149
  %157 = load i64, i64* %23, align 8
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %157, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i64, i64* %24, align 8
  %165 = load i64, i64* %20, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %156
  %168 = load i64, i64* %23, align 8
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167, %156
  br label %278

174:                                              ; preds = %167
  br label %194

175:                                              ; preds = %149
  %176 = load i64, i64* %23, align 8
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sle i64 %176, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i64, i64* %23, align 8
  %184 = load i64, i64* %20, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %175
  %187 = load i64, i64* %24, align 8
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186, %175
  br label %278

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %174
  %195 = load i64, i64* @TSDB_FILE_HEADER_LEN, align 8
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = mul i64 8, %199
  %201 = add i64 %195, %200
  store i64 %201, i64* %28, align 8
  %202 = load i8*, i8** %18, align 8
  %203 = load i64, i64* %28, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = bitcast i8* %204 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %205, %struct.TYPE_35__** %29, align 8
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %194
  br label %278

211:                                              ; preds = %194
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = mul i64 8, %219
  %221 = load i64, i64* @TSDB_FILE_HEADER_LEN, align 8
  %222 = add i64 %220, %221
  %223 = icmp ult i64 %214, %222
  br i1 %223, label %232, label %224

224:                                              ; preds = %211
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %227, %230
  br i1 %231, label %232, label %248

232:                                              ; preds = %224, %211
  %233 = load i32*, i32** %14, align 8
  %234 = bitcast i32* %233 to %struct.TYPE_30__*
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %236 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %239 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 (i8*, %struct.TYPE_30__*, i32, ...) @dError(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_30__* %234, i32 %237, i32 %240, i32 %243, i64 %246)
  br label %278

248:                                              ; preds = %224
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 1
  store i64 %251, i64* %253, align 8
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %255, align 8
  %257 = icmp eq %struct.TYPE_27__* %256, null
  br i1 %257, label %258, label %269

258:                                              ; preds = %248
  %259 = load i32*, i32** %14, align 8
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = call %struct.TYPE_27__* @createMeterQueryInfo(i32* %259, i64 %262, i64 %265)
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 0
  store %struct.TYPE_27__* %266, %struct.TYPE_27__** %268, align 8
  br label %269

269:                                              ; preds = %258, %248
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %271 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %21, align 8
  %272 = load i64*, i64** %13, align 8
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %271, i64 %273
  store %struct.TYPE_34__* %270, %struct.TYPE_34__** %274, align 8
  %275 = load i64*, i64** %13, align 8
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %275, align 8
  br label %278

278:                                              ; preds = %269, %232, %210, %192, %173, %98
  %279 = load i64, i64* %25, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %25, align 8
  br label %78

281:                                              ; preds = %78
  %282 = load i64*, i64** %13, align 8
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = icmp ule i64 %283, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @assert(i32 %289)
  %291 = load i64*, i64** %13, align 8
  %292 = load i64, i64* %291, align 8
  %293 = icmp ugt i64 %292, 1
  br i1 %293, label %294, label %301

294:                                              ; preds = %281
  %295 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %21, align 8
  %296 = load i64*, i64** %13, align 8
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* @POINTER_BYTES, align 4
  %299 = load i32, i32* @offsetComparator, align 4
  %300 = call i32 @qsort(%struct.TYPE_34__** %295, i64 %297, i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %294, %281
  %302 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %21, align 8
  store %struct.TYPE_34__** %302, %struct.TYPE_34__*** %7, align 8
  br label %303

303:                                              ; preds = %301, %60
  %304 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %7, align 8
  ret %struct.TYPE_34__** %304
}

declare dso_local i64 @validateHeaderOffsetSegment(%struct.TYPE_30__*, i32, i64, i8*, i64) #1

declare dso_local i64 @getOldestKey(i32, i32, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_34__** @malloc(i32) #1

declare dso_local %struct.TYPE_33__* @getMeterObj(i32, i32) #1

declare dso_local i32 @dError(i8*, %struct.TYPE_30__*, i32, ...) #1

declare dso_local i32 @setMeterDataInfo(%struct.TYPE_34__*, %struct.TYPE_33__*, i64, i64) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_27__* @createMeterQueryInfo(i32*, i64, i64) #1

declare dso_local i32 @qsort(%struct.TYPE_34__**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
