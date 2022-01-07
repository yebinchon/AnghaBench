; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtRetrieveMetersFromMetric.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtRetrieveMetersFromMetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32* }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_NCHAR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"metric:%s len:%d, metric query condition:%s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"metric:%s rel:%d, len:%d, table name cond:%s\00", align 1
@TSDB_RELATION_AND = common dso_local global i32 0, align 4
@TSDB_RELATION_OR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"metric:%s retrieve all meter, no query condition\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"metric:%s numOfRes:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtRetrieveMetersFromMetric(%struct.TYPE_21__* %0, i64 %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = bitcast %struct.TYPE_21__* %18 to i8*
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %19, i64 %26
  %28 = bitcast i8* %27 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %8, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_20__* @mgmtGetMeter(i32 %31)
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = icmp eq %struct.TYPE_23__* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37, %3
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %51, i32* %4, align 4
  br label %246

52:                                               ; preds = %37
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = bitcast %struct.TYPE_21__* %53 to i8*
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %12, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %52
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  %68 = load i64, i64* @TSDB_NCHAR_SIZE, align 8
  %69 = mul i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @calloc(i32 1, i32 %70)
  store i8* %71, i8** %10, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @TSDB_NCHAR_SIZE, align 8
  %75 = mul i64 %73, %74
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @taosUcs4ToMbs(i8* %72, i64 %75, i8* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %13, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %84, i64 %85, i8* %86)
  br label %88

88:                                               ; preds = %65, %52
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = bitcast %struct.TYPE_21__* %89 to i8*
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  store i8* %95, i8** %14, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %88
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i8* @calloc(i32 1, i32 %104)
  store i8* %105, i8** %11, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @strncpy(i8* %106, i8* %107, i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117, i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %100, %88
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i64, i64* %13, align 8
  %130 = icmp ugt i64 %129, 0
  br i1 %130, label %131, label %217

131:                                              ; preds = %128, %123
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %138 = call i32 @mgmtFilterByTableNameCond(%struct.TYPE_19__* %132, i8* %133, i32 %136, %struct.TYPE_20__* %137)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %131
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TSDB_RELATION_AND, align 4
  %148 = icmp eq i32 %146, %147
  br label %149

149:                                              ; preds = %143, %131
  %150 = phi i1 [ false, %131 ], [ %148, %143 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %216, label %154

154:                                              ; preds = %149
  %155 = load i64, i64* %13, align 8
  %156 = icmp ugt i64 %155, 0
  br i1 %156, label %157, label %216

157:                                              ; preds = %154
  %158 = bitcast %struct.TYPE_19__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %158, i8 0, i64 16, i1 false)
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* %13, align 8
  %162 = call i64 @mgmtFilterMeterByIndex(%struct.TYPE_20__* %159, %struct.TYPE_19__* %16, i8* %160, i64 %161)
  store i64 %162, i64* %17, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp ne i64 %163, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @tfree(i8* %168)
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @tfree(i8* %170)
  %172 = load i64, i64* %17, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %4, align 4
  br label %246

174:                                              ; preds = %157
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @TSDB_RELATION_AND, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @TSDB_RELATION_OR, align 4
  %185 = icmp eq i32 %183, %184
  br label %186

186:                                              ; preds = %180, %174
  %187 = phi i1 [ true, %174 ], [ %185, %180 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @TSDB_RELATION_AND, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199, %195
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %206 = call i32 @tQueryResultClean(%struct.TYPE_19__* %205)
  br label %210

207:                                              ; preds = %199
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %209 = call i32 @queryResultIntersect(%struct.TYPE_19__* %208, %struct.TYPE_19__* %16)
  br label %210

210:                                              ; preds = %207, %204
  br label %214

211:                                              ; preds = %186
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %213 = call i32 @queryResultUnion(%struct.TYPE_19__* %212, %struct.TYPE_19__* %16)
  br label %214

214:                                              ; preds = %211, %210
  %215 = call i32 @tQueryResultClean(%struct.TYPE_19__* %16)
  br label %216

216:                                              ; preds = %214, %154, %149
  br label %233

217:                                              ; preds = %128
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %220)
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = bitcast i32* %226 to i32***
  %228 = call i64 @tSkipListIterateList(%struct.TYPE_23__* %224, i32*** %227, i32* null, i32* null)
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %232 = call i32 @tansformQueryResult(%struct.TYPE_19__* %231)
  br label %233

233:                                              ; preds = %217, %216
  %234 = load i8*, i8** %10, align 8
  %235 = call i32 @tfree(i8* %234)
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 @tfree(i8* %236)
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i32 (i8*, i32, ...) @mTrace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %240, i64 %243)
  %245 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %233, %167, %44
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local %struct.TYPE_20__* @mgmtGetMeter(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @taosUcs4ToMbs(i8*, i64, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mTrace(i8*, i32, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @mgmtFilterByTableNameCond(%struct.TYPE_19__*, i8*, i32, %struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mgmtFilterMeterByIndex(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*, i64) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @tQueryResultClean(%struct.TYPE_19__*) #1

declare dso_local i32 @queryResultIntersect(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @queryResultUnion(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @tSkipListIterateList(%struct.TYPE_23__*, i32***, i32*, i32*) #1

declare dso_local i32 @tansformQueryResult(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
