; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getDataBlocksForMeters.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getDataBlocksForMeters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i64 }

@.str = private unnamed_addr constant [65 x i8] c"QInfo:%p vid:%d sid:%d id:%s, startIndex:%d, %d blocks qualified\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getDataBlocksForMeters(%struct.TYPE_25__* %0, i32* %1, i8* %2, i64 %3, %struct.TYPE_22__* %4, %struct.TYPE_27__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_27__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca %struct.TYPE_28__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_27__** %5, %struct.TYPE_27__*** %13, align 8
  store i32 0, i32* %14, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @GET_QINFO_ADDR(i32* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %15, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %16, align 8
  store i64 0, i64* %19, align 8
  br label %35

35:                                               ; preds = %250, %6
  %36 = load i64, i64* %19, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %253

39:                                               ; preds = %35
  %40 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %41 = load i64, i64* %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %40, i64 %41
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %20, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %48 = load i64, i64* %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %47, i64 %48
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %46, i64 %53
  %55 = bitcast i8* %54 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %55, %struct.TYPE_28__** %21, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %64 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %65 = load i64, i64* %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %64, i64 %65
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @validateCompBlockInfoSegment(%struct.TYPE_24__* %56, i32 %59, i32 %62, %struct.TYPE_28__* %63, i32 %69)
  store i64 %70, i64* %22, align 8
  %71 = load i64, i64* %22, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %39
  %74 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %75 = load i64, i64* %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %74, i64 %75
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %76, align 8
  %78 = call i32 @clearMeterDataBlockInfo(%struct.TYPE_27__* %77)
  br label %250

79:                                               ; preds = %39
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %89 = load i64, i64* %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %88, i64 %89
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %87, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %84, %79
  %98 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %99 = load i64, i64* %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %98, i64 %99
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %100, align 8
  %102 = call i32 @clearMeterDataBlockInfo(%struct.TYPE_27__* %101)
  br label %250

103:                                              ; preds = %84
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  store i64 %108, i64* %23, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %110 = bitcast %struct.TYPE_28__* %109 to i8*
  %111 = getelementptr inbounds i8, i8* %110, i64 16
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** %24, align 8
  %113 = call i64 (...) @taosGetTimestampUs()
  store i64 %113, i64* %25, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %115 = bitcast %struct.TYPE_28__* %114 to i8*
  %116 = getelementptr inbounds i8, i8* %115, i64 16
  %117 = load i64, i64* %23, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %26, align 4
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %126 = load i32*, i32** %24, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %26, align 4
  %132 = call i64 @validateCompBlockSegment(%struct.TYPE_24__* %121, i32 %124, %struct.TYPE_28__* %125, i8* %127, i32 %130, i32 %131)
  store i64 %132, i64* %22, align 8
  %133 = load i64, i64* %22, align 8
  %134 = icmp ult i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %103
  %136 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %137 = load i64, i64* %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %136, i64 %137
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %138, align 8
  %140 = call i32 @clearMeterDataBlockInfo(%struct.TYPE_27__* %139)
  br label %250

141:                                              ; preds = %103
  %142 = call i64 (...) @taosGetTimestampUs()
  store i64 %142, i64* %27, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load i64, i64* %23, align 8
  %148 = add i64 %147, 16
  %149 = add i64 %148, 4
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  %156 = load i64, i64* %27, align 8
  %157 = load i64, i64* %25, align 8
  %158 = sub nsw i64 %156, %157
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %158
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 4
  %165 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %166 = load i64, i64* %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %165, i64 %166
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %167, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @setCurrentQueryRange(%struct.TYPE_27__* %168, i32* %169, i32 %172, i32* %17, i32* %18)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %141
  %176 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %177 = load i64, i64* %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %176, i64 %177
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %178, align 8
  %180 = call i32 @clearMeterDataBlockInfo(%struct.TYPE_27__* %179)
  br label %250

181:                                              ; preds = %141
  store i64 0, i64* %28, align 8
  %182 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %183 = load i64, i64* %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %182, i64 %183
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %184, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load i32*, i32** %24, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @getValidDataBlocksRangeIndex(%struct.TYPE_27__* %185, i32* %186, i32* %187, i32 %190, i32 %191, i32 %192, i64* %28)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %181
  %196 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %197 = load i64, i64* %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %196, i64 %197
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %198, align 8
  %200 = call i32 @clearMeterDataBlockInfo(%struct.TYPE_27__* %199)
  br label %250

201:                                              ; preds = %181
  %202 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %203 = load i64, i64* %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %202, i64 %203
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %204, align 8
  %206 = load i32*, i32** %24, align 8
  %207 = load i64, i64* %28, align 8
  %208 = call i32 @setValidDataBlocks(%struct.TYPE_27__* %205, i32* %206, i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %201
  %211 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %212 = load i64, i64* %19, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %211, i64 %212
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %213, align 8
  %215 = call i32 @clearMeterDataBlockInfo(%struct.TYPE_27__* %214)
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  store i32 1, i32* %217, align 4
  store i32 0, i32* %7, align 4
  br label %255

218:                                              ; preds = %201
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %230 = load i64, i64* %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %229, i64 %230
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %236 = load i64, i64* %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %235, i64 %236
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @qTrace(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %219, i32 %222, i32 %225, i32 %228, i32 %234, i32 %240)
  %242 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %243 = load i64, i64* %19, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %242, i64 %243
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %218, %195, %175, %135, %97, %73
  %251 = load i64, i64* %19, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %19, align 8
  br label %35

253:                                              ; preds = %35
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %253, %210
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

declare dso_local i64 @GET_QINFO_ADDR(i32*) #1

declare dso_local i64 @validateCompBlockInfoSegment(%struct.TYPE_24__*, i32, i32, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @clearMeterDataBlockInfo(%struct.TYPE_27__*) #1

declare dso_local i64 @taosGetTimestampUs(...) #1

declare dso_local i64 @validateCompBlockSegment(%struct.TYPE_24__*, i32, %struct.TYPE_28__*, i8*, i32, i32) #1

declare dso_local i32 @setCurrentQueryRange(%struct.TYPE_27__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @getValidDataBlocksRangeIndex(%struct.TYPE_27__*, i32*, i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @setValidDataBlocks(%struct.TYPE_27__*, i32*, i64) #1

declare dso_local i32 @qTrace(i8*, %struct.TYPE_24__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
