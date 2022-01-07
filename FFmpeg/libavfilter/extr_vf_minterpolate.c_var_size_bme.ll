; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_var_size_bme.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_var_size_bme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 (%struct.TYPE_11__*, i32, i32, i32, i32)*, i32, i32 }
%struct.TYPE_10__ = type { i32**, i32, %struct.TYPE_10__* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32)* @var_size_bme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_size_bme(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca [2 x i32], align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %12, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32 (%struct.TYPE_11__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %42, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %51, %58
  %60 = call i32 %38(%struct.TYPE_11__* %39, i32 %40, i32 %41, i32 %50, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %5
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  store i32 0, i32* %6, align 4
  br label %246

69:                                               ; preds = %5
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = icmp ne %struct.TYPE_10__* %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %69
  %75 = call %struct.TYPE_10__* @av_mallocz_array(i32 4, i32 24)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = call i32 @AVERROR(i32 %83)
  store i32 %84, i32* %6, align 4
  br label %246

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %69
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  store i32 0, i32* %20, align 4
  br label %89

89:                                               ; preds = %242, %86
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %245

92:                                               ; preds = %89
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %238, %92
  %94 = load i32, i32* %19, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %241

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %20, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %100, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %104
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %22, align 8
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %107, %114
  store i32 %115, i32* %106, align 4
  %116 = getelementptr inbounds i32, i32* %106, i64 1
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %117, %124
  store i32 %125, i32* %116, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %126, 1
  %128 = shl i32 1, %127
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 2, i32* %132, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32**, i32*** %134, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %153, %160
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %162, %169
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %172 = call i32 @ff_me_search_ds(%struct.TYPE_11__* %152, i32 %161, i32 %170, i32* %171)
  store i32 %172, i32* %13, align 4
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %17, align 4
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %178, %179
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %16, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %14, align 4
  %189 = sdiv i32 %188, 4
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %234

191:                                              ; preds = %96
  %192 = load i32, i32* %17, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32**, i32*** %194, align 8
  %196 = getelementptr inbounds i32*, i32** %195, i64 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %192, i32* %198, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32**, i32*** %201, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 %199, i32* %205, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %230

208:                                              ; preds = %191
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %11, align 4
  %214 = sub nsw i32 %213, 1
  %215 = shl i32 %212, %214
  %216 = add nsw i32 %211, %215
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %11, align 4
  %220 = sub nsw i32 %219, 1
  %221 = shl i32 %218, %220
  %222 = add nsw i32 %217, %221
  %223 = load i32, i32* %11, align 4
  %224 = sub nsw i32 %223, 1
  %225 = call i32 @var_size_bme(%struct.TYPE_9__* %209, %struct.TYPE_10__* %210, i32 %216, i32 %222, i32 %224)
  store i32 %225, i32* %21, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %208
  %228 = load i32, i32* %21, align 4
  store i32 %228, i32* %6, align 4
  br label %246

229:                                              ; preds = %208
  br label %233

230:                                              ; preds = %191
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  store i32 0, i32* %232, align 8
  br label %233

233:                                              ; preds = %230, %229
  br label %237

234:                                              ; preds = %96
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  store i32 0, i32* %236, align 8
  store i32 0, i32* %6, align 4
  br label %246

237:                                              ; preds = %233
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %19, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %19, align 4
  br label %93

241:                                              ; preds = %93
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %20, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %20, align 4
  br label %89

245:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %245, %234, %227, %82, %66
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local %struct.TYPE_10__* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_me_search_ds(%struct.TYPE_11__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
