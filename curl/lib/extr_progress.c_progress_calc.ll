; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_progress.c_progress_calc.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_progress.c_progress_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32*, i32, %struct.curltime*, i64, i32 }
%struct.curltime = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@CURL_OFF_T_MAX = common dso_local global i32 0, align 4
@CURR_TIME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i64)* @progress_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @progress_calc(%struct.connectdata* %0, i64 %1) #0 {
  %3 = alloca %struct.curltime, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.curltime, %struct.curltime* %3, i32 0, i32 0
  store i64 %1, i64* %16, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %18, align 8
  store %struct.Curl_easy* %19, %struct.Curl_easy** %7, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.curltime, %struct.curltime* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @Curl_timediff_us(i64 %34, i32 %32)
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  store i64 %35, i64* %38, align 8
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = sdiv i32 %43, 1000000
  store i32 %44, i32* %5, align 4
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = sdiv i32 %49, 1000
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @CURL_OFF_T_MAX, align 4
  %53 = sdiv i32 %52, 1000
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %2
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  br label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 1, %62 ]
  %65 = sdiv i32 %57, %64
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  br label %82

69:                                               ; preds = %2
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  br label %76

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 1, %75 ]
  %78 = sdiv i32 %70, %77
  %79 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %80 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %76, %63
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @CURL_OFF_T_MAX, align 4
  %85 = sdiv i32 %84, 1000
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %88, 1000
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  br label %95

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 1, %94 ]
  %97 = sdiv i32 %89, %96
  %98 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %99 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  br label %114

101:                                              ; preds = %82
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  br label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 1, %107 ]
  %110 = sdiv i32 %102, %109
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %112 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %95
  %115 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %116 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.curltime, %struct.curltime* %3, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %118, %120
  br i1 %121, label %122, label %271

122:                                              ; preds = %114
  %123 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %124 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CURR_TIME, align 4
  %128 = srem i32 %126, %127
  store i32 %128, i32* %12, align 4
  %129 = getelementptr inbounds %struct.curltime, %struct.curltime* %3, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %132 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  store i64 %130, i64* %133, align 8
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %10, align 4
  %135 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %136 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %140 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %138, %142
  %144 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %145 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %143, i32* %150, align 4
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %152 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 8
  %154 = load %struct.curltime*, %struct.curltime** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.curltime, %struct.curltime* %154, i64 %156
  %158 = bitcast %struct.curltime* %157 to i8*
  %159 = bitcast %struct.curltime* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 8, i1 false)
  %160 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %161 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %166 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CURR_TIME, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %122
  %172 = load i32, i32* @CURR_TIME, align 4
  br label %178

173:                                              ; preds = %122
  %174 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %175 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  br label %178

178:                                              ; preds = %173, %171
  %179 = phi i32 [ %172, %171 ], [ %177, %173 ]
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %257

183:                                              ; preds = %178
  %184 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %185 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @CURR_TIME, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %192 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CURR_TIME, align 4
  %196 = srem i32 %194, %195
  br label %198

197:                                              ; preds = %183
  br label %198

198:                                              ; preds = %197, %190
  %199 = phi i32 [ %196, %190 ], [ 0, %197 ]
  store i32 %199, i32* %13, align 4
  %200 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %201 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 8
  %203 = load %struct.curltime*, %struct.curltime** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.curltime, %struct.curltime* %203, i64 %205
  %207 = getelementptr inbounds %struct.curltime, %struct.curltime* %3, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.curltime, %struct.curltime* %206, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @Curl_timediff(i64 %208, i64 %210)
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = icmp eq i32 0, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %198
  store i32 1, i32* %14, align 4
  br label %215

215:                                              ; preds = %214, %198
  %216 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %217 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 6
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %225 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 6
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %223, %231
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @CURL_OFF_T_C(i32 4294967)
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %247

236:                                              ; preds = %215
  %237 = load i32, i32* %15, align 4
  %238 = sitofp i32 %237 to double
  %239 = load i32, i32* %14, align 4
  %240 = sitofp i32 %239 to double
  %241 = fdiv double %240, 1.000000e+03
  %242 = fdiv double %238, %241
  %243 = fptosi double %242 to i32
  %244 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %245 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 7
  store i32 %243, i32* %246, align 8
  br label %256

247:                                              ; preds = %215
  %248 = load i32, i32* %15, align 4
  %249 = call i32 @CURL_OFF_T_C(i32 1000)
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %14, align 4
  %252 = sdiv i32 %250, %251
  %253 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %254 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 7
  store i32 %252, i32* %255, align 8
  br label %256

256:                                              ; preds = %247, %236
  br label %270

257:                                              ; preds = %178
  %258 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %259 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %263 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %261, %265
  %267 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %268 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 7
  store i32 %266, i32* %269, align 8
  br label %270

270:                                              ; preds = %257, %256
  br label %271

271:                                              ; preds = %270, %114
  %272 = load i32, i32* %10, align 4
  ret i32 %272
}

declare dso_local i64 @Curl_timediff_us(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Curl_timediff(i64, i64) #1

declare dso_local i32 @CURL_OFF_T_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
