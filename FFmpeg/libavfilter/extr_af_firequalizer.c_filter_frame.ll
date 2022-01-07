; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i64* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %140, label %18

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %77, %18
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i1 [ false, %19 ], [ %30, %26 ]
  br i1 %32, label %33, label %80

33:                                               ; preds = %31
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 2, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %40, %47
  %49 = inttoptr i64 %48 to i32*
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to float*
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to float*
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @fast_convolute2(%struct.TYPE_11__* %34, i64 %37, i32* %49, i64 %55, float* %63, float* %72, i32 %75)
  br label %77

77:                                               ; preds = %33
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %7, align 4
  br label %19

80:                                               ; preds = %31
  br label %81

81:                                               ; preds = %136, %80
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %139

87:                                               ; preds = %81
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  br label %103

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %96
  %104 = phi i32 [ %101, %96 ], [ 0, %102 ]
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %91, %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 2, %110
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %109, %116
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to float*
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @fast_convolute(%struct.TYPE_11__* %88, i64 %106, i64 %117, i64 %123, float* %131, i32 %134)
  br label %136

136:                                              ; preds = %103
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %81

139:                                              ; preds = %81
  br label %200

140:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %196, %140
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %199

147:                                              ; preds = %141
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  br label %163

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162, %156
  %164 = phi i32 [ %161, %156 ], [ 0, %162 ]
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %151, %165
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 2, %170
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %171, %174
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %169, %176
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %180, %182
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to float*
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @fast_convolute_nonlinear(%struct.TYPE_11__* %148, i64 %166, i64 %177, i64 %183, float* %191, i32 %194)
  br label %196

196:                                              ; preds = %163
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %141

199:                                              ; preds = %141
  br label %200

200:                                              ; preds = %199, %139
  %201 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %254

209:                                              ; preds = %200
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @av_make_q(i32 1, i32 %218)
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @av_rescale_q(i32 %215, i32 %219, i32 %222)
  %224 = add nsw i64 %212, %223
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %253

231:                                              ; preds = %209
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %253, label %236

236:                                              ; preds = %231
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = sdiv i32 %239, 2
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @av_make_q(i32 1, i32 %243)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @av_rescale_q(i32 %240, i32 %244, i32 %247)
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %251, %248
  store i64 %252, i64* %250, align 8
  br label %253

253:                                              ; preds = %236, %231, %209
  br label %254

254:                                              ; preds = %253, %200
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @FFMAX(i32 %257, i32 %260)
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %270 = call i32 @ff_filter_frame(i32 %268, %struct.TYPE_12__* %269)
  ret i32 %270
}

declare dso_local i32 @fast_convolute2(%struct.TYPE_11__*, i64, i32*, i64, float*, float*, i32) #1

declare dso_local i32 @fast_convolute(%struct.TYPE_11__*, i64, i64, i64, float*, i32) #1

declare dso_local i32 @fast_convolute_nonlinear(%struct.TYPE_11__*, i64, i64, i64, float*, i32) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_make_q(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
