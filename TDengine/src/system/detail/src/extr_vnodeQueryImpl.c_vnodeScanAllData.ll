; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeScanAllData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeScanAllData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (i32*)* }
%struct.TYPE_24__ = type { i64, i32*, %struct.TYPE_26__*, i32, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i32, %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32 }

@QUERY_NOT_COMPLETED = common dso_local global i32 0, align 4
@aAggs = common dso_local global %struct.TYPE_19__* null, align 8
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeScanAllData(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %3, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = load i32, i32* @QUERY_NOT_COMPLETED, align 4
  %22 = call i32 @setQueryStatus(%struct.TYPE_25__* %20, i32 %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @savePointPosition(i32* %24, i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %1, %193
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %37 = call i32 @doScanAllDataBlocks(%struct.TYPE_24__* %36)
  store i32 1, i32* %4, align 4
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @isGroupbyNormalCol(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %35
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %99, %43
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %102

50:                                               ; preds = %44
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i64 %54
  store %struct.TYPE_26__* %55, %struct.TYPE_26__** %6, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %58 = call i32 @setGroupOutputBuffer(%struct.TYPE_24__* %56, %struct.TYPE_26__* %57)
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %95, %50
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** @aAggs, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32 (i32*)*, i32 (i32*)** %76, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 %77(i32* %82)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call %struct.TYPE_23__* @GET_RES_INFO(i32* %88)
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %8, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %65
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %7, align 8
  br label %59

98:                                               ; preds = %59
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %44

102:                                              ; preds = %44
  br label %144

103:                                              ; preds = %35
  store i64 0, i64* %9, align 8
  br label %104

104:                                              ; preds = %140, %103
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %104
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** @aAggs, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32 (i32*)*, i32 (i32*)** %121, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = call i32 %122(i32* %127)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call %struct.TYPE_23__* @GET_RES_INFO(i32* %133)
  store %struct.TYPE_23__* %134, %struct.TYPE_23__** %10, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %110
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %104

143:                                              ; preds = %104
  br label %144

144:                                              ; preds = %143, %102
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %194

148:                                              ; preds = %144
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 3
  %152 = call i64 @loadRequiredBlockIntoMem(%struct.TYPE_24__* %149, i32* %151)
  store i64 %152, i64* %11, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %154 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_25__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load i64, i64* %11, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %157, %160
  br i1 %161, label %174, label %162

162:                                              ; preds = %156, %148
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %164 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_25__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %162
  %167 = load i64, i64* %11, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp sle i64 %167, %170
  br label %172

172:                                              ; preds = %166, %162
  %173 = phi i1 [ false, %162 ], [ %171, %166 ]
  br label %174

174:                                              ; preds = %172, %156
  %175 = phi i1 [ true, %156 ], [ %173, %172 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %179 = load i32, i32* @QUERY_NOT_COMPLETED, align 4
  %180 = call i32 @setQueryStatus(%struct.TYPE_25__* %178, i32 %179)
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = call i64 @isQueryKilled(%struct.TYPE_25__* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %174
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %191 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %192 = call i32 @setQueryStatus(%struct.TYPE_25__* %190, i32 %191)
  br label %260

193:                                              ; preds = %174
  br label %35

194:                                              ; preds = %147
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %196 = call i32 @doSingleMeterSupplementScan(%struct.TYPE_24__* %195)
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @isGroupbyNormalCol(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %236

202:                                              ; preds = %194
  store i64 0, i64* %12, align 8
  br label %203

203:                                              ; preds = %232, %202
  %204 = load i64, i64* %12, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ult i64 %204, %207
  br i1 %208, label %209, label %235

209:                                              ; preds = %203
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %211, align 8
  %213 = load i64, i64* %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i64 %213
  store %struct.TYPE_26__* %214, %struct.TYPE_26__** %13, align 8
  store i64 0, i64* %14, align 8
  br label %215

215:                                              ; preds = %228, %209
  %216 = load i64, i64* %14, align 8
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ult i64 %216, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %223, align 8
  %225 = load i64, i64* %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  store i32 0, i32* %227, align 4
  br label %228

228:                                              ; preds = %221
  %229 = load i64, i64* %14, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %14, align 8
  br label %215

231:                                              ; preds = %215
  br label %232

232:                                              ; preds = %231
  %233 = load i64, i64* %12, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %12, align 8
  br label %203

235:                                              ; preds = %203
  br label %260

236:                                              ; preds = %194
  store i64 0, i64* %15, align 8
  br label %237

237:                                              ; preds = %256, %236
  %238 = load i64, i64* %15, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ult i64 %238, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %237
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* %15, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = call %struct.TYPE_23__* @GET_RES_INFO(i32* %248)
  store %struct.TYPE_23__* %249, %struct.TYPE_23__** %16, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %251 = icmp ne %struct.TYPE_23__* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %243
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %243
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %15, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %15, align 8
  br label %237

259:                                              ; preds = %237
  br label %260

260:                                              ; preds = %189, %259, %235
  ret void
}

declare dso_local i32 @setQueryStatus(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @savePointPosition(i32*, i32, i32, i32) #1

declare dso_local i32 @doScanAllDataBlocks(%struct.TYPE_24__*) #1

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local i32 @setGroupOutputBuffer(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_23__* @GET_RES_INFO(i32*) #1

declare dso_local i64 @loadRequiredBlockIntoMem(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_25__*) #1

declare dso_local i64 @isQueryKilled(%struct.TYPE_25__*) #1

declare dso_local i32 @doSingleMeterSupplementScan(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
