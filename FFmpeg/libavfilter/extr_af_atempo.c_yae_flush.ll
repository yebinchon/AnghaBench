; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_flush.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, i32, i64, i32, i64, i32 }
%struct.TYPE_12__ = type { i64*, i64, i32*, i32 }

@YAE_FLUSH_OUTPUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32**, i32*)* @yae_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yae_flush(%struct.TYPE_13__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call %struct.TYPE_12__* @yae_curr_frag(%struct.TYPE_13__* %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load i32, i32* @YAE_FLUSH_OUTPUT, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %264

28:                                               ; preds = %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = icmp eq i64 %33, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %28
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = icmp eq i64 %49, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %264

61:                                               ; preds = %44, %28
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %70, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %61
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = call i32 @yae_load_frag(%struct.TYPE_13__* %78, i32* null, i32* null)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %77
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = call i32 @yae_downmix(%struct.TYPE_13__* %85, %struct.TYPE_12__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @av_rdft_calc(i32 %90, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = call i64 @yae_adjust_position(%struct.TYPE_13__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %84
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = call i32 @yae_load_frag(%struct.TYPE_13__* %99, i32* null, i32* null)
  br label %101

101:                                              ; preds = %98, %84
  br label %102

102:                                              ; preds = %101, %77
  br label %103

103:                                              ; preds = %102, %61
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %111, 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @FFMIN(i32 %112, i32 %116)
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %108, %118
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %137, %103
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %120
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = load i32**, i32*** %6, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = call i64 @yae_overlap_add(%struct.TYPE_13__* %129, i32** %130, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = call i32 @AVERROR(i32 %135)
  store i32 %136, i32* %4, align 4
  br label %264

137:                                              ; preds = %128
  br label %120

138:                                              ; preds = %120
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %147, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %138
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = call i32 @yae_advance_to_next_frag(%struct.TYPE_13__* %155)
  %157 = load i32, i32* @EAGAIN, align 4
  %158 = call i32 @AVERROR(i32 %157)
  store i32 %158, i32* %4, align 4
  br label %264

159:                                              ; preds = %138
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %9, align 8
  %166 = call i64 @FFMAX(i64 %164, i64 %165)
  store i64 %166, i64* %10, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  store i64 %175, i64* %11, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %176, %181
  store i64 %182, i64* %12, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %11, align 8
  %185 = icmp sle i64 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %159
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %10, align 8
  %193 = icmp sle i64 %191, %192
  br label %194

194:                                              ; preds = %186, %159
  %195 = phi i1 [ false, %159 ], [ %193, %186 ]
  %196 = zext i1 %195 to i32
  %197 = call i32 @av_assert0(i32 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = mul nsw i64 %201, %204
  %206 = getelementptr inbounds i32, i32* %200, i64 %205
  store i32* %206, i32** %13, align 8
  %207 = load i32**, i32*** %6, align 8
  %208 = load i32*, i32** %207, align 8
  store i32* %208, i32** %14, align 8
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* %10, align 8
  %211 = sub nsw i64 %209, %210
  %212 = trunc i64 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = mul nsw i64 %213, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %15, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = load i32*, i32** %14, align 8
  %221 = ptrtoint i32* %219 to i64
  %222 = ptrtoint i32* %220 to i64
  %223 = sub i64 %221, %222
  %224 = sdiv exact i64 %223, 4
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %16, align 4
  %228 = call i32 @FFMIN(i32 %226, i32 %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32*, i32** %14, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = load i32, i32* %17, align 4
  %232 = call i32 @memcpy(i32* %229, i32* %230, i32 %231)
  %233 = load i32, i32* %17, align 4
  %234 = load i32*, i32** %14, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %14, align 8
  %237 = load i32, i32* %17, align 4
  %238 = sext i32 %237 to i64
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = sdiv i64 %238, %241
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 1
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, %242
  store i64 %248, i64* %246, align 8
  %249 = load i32*, i32** %14, align 8
  %250 = load i32**, i32*** %6, align 8
  store i32* %249, i32** %250, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %11, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %194
  br label %262

259:                                              ; preds = %194
  %260 = load i32, i32* @EAGAIN, align 4
  %261 = call i32 @AVERROR(i32 %260)
  br label %262

262:                                              ; preds = %259, %258
  %263 = phi i32 [ 0, %258 ], [ %261, %259 ]
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %262, %154, %134, %60, %27
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local %struct.TYPE_12__* @yae_curr_frag(%struct.TYPE_13__*) #1

declare dso_local i32 @yae_load_frag(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @yae_downmix(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @av_rdft_calc(i32, i32) #1

declare dso_local i64 @yae_adjust_position(%struct.TYPE_13__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @yae_overlap_add(%struct.TYPE_13__*, i32**, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @yae_advance_to_next_frag(%struct.TYPE_13__*) #1

declare dso_local i64 @FFMAX(i64, i64) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
