; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_decode_v1_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_decode_v1_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }

@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32**, i32*, i32, %struct.TYPE_5__*)* @decode_v1_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_v1_vector(%struct.TYPE_6__* %0, i32** %1, i32* %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 6, i32 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32**, i32*** %7, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 1, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  store i32 %27, i32* %36, align 4
  %37 = load i32**, i32*** %7, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32 %27, i32* %44, align 4
  %45 = load i32**, i32*** %7, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %27, i32* %48, align 4
  %49 = load i32**, i32*** %7, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %27, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32**, i32*** %7, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 3, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 %62, i32* %71, align 4
  %72 = load i32**, i32*** %7, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32 %62, i32* %80, align 4
  %81 = load i32**, i32*** %7, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %62, i32* %84, align 4
  %85 = load i32**, i32*** %7, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %62, i32* %88, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32**, i32*** %7, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 3, %104
  %106 = add nsw i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  store i32 %98, i32* %108, align 4
  %109 = load i32**, i32*** %7, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 3, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  store i32 %98, i32* %117, align 4
  %118 = load i32**, i32*** %7, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 2, %123
  %125 = add nsw i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  store i32 %98, i32* %127, align 4
  %128 = load i32**, i32*** %7, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 2, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  store i32 %98, i32* %136, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %142, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32**, i32*** %7, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 3, %152
  %154 = add nsw i32 3, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %149, i64 %155
  store i32 %146, i32* %156, align 4
  %157 = load i32**, i32*** %7, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 3, %162
  %164 = add nsw i32 2, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %159, i64 %165
  store i32 %146, i32* %166, align 4
  %167 = load i32**, i32*** %7, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 2, %172
  %174 = add nsw i32 3, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %169, i64 %175
  store i32 %146, i32* %176, align 4
  %177 = load i32**, i32*** %7, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 2, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  store i32 %146, i32* %186, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %263

192:                                              ; preds = %5
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %11, align 4
  %198 = mul nsw i32 %196, %197
  %199 = add nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32**, i32*** %7, align 8
  %204 = getelementptr inbounds i32*, i32** %203, i64 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 1, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  store i32 %202, i32* %211, align 4
  %212 = load i32**, i32*** %7, align 8
  %213 = getelementptr inbounds i32*, i32** %212, i64 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32*, i32** %8, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  store i32 %202, i32* %219, align 4
  %220 = load i32**, i32*** %7, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  store i32 %202, i32* %223, align 4
  %224 = load i32**, i32*** %7, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %202, i32* %227, align 4
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %11, align 4
  %233 = mul nsw i32 %231, %232
  %234 = add nsw i32 %233, 5
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %230, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32**, i32*** %7, align 8
  %239 = getelementptr inbounds i32*, i32** %238, i64 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32*, i32** %8, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 1, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %240, i64 %245
  store i32 %237, i32* %246, align 4
  %247 = load i32**, i32*** %7, align 8
  %248 = getelementptr inbounds i32*, i32** %247, i64 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32*, i32** %8, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %249, i64 %253
  store i32 %237, i32* %254, align 4
  %255 = load i32**, i32*** %7, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  store i32 %237, i32* %258, align 4
  %259 = load i32**, i32*** %7, align 8
  %260 = getelementptr inbounds i32*, i32** %259, i64 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %237, i32* %262, align 4
  br label %263

263:                                              ; preds = %192, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
