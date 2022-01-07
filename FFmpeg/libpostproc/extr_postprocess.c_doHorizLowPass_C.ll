; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_doHorizLowPass_C.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_doHorizLowPass_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*)* @doHorizLowPass_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doHorizLowPass_C(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %267, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @BLOCK_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %270

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 -1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = call i64 @FFABS(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  %31 = load i32, i32* %30, align 4
  br label %36

32:                                               ; preds = %15
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = call i64 @FFABS(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %36
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 4, %60
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = add nsw i32 %73, 4
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  store i32 %74, i32* %75, align 16
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 2
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 3
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 4
  store i32 %110, i32* %111, align 16
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 4
  %113 = load i32, i32* %112, align 16
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 7
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 5
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %124, %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %128, %129
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 6
  store i32 %130, i32* %131, align 8
  %132 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 6
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %137, %138
  %140 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 7
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 7
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %142, %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  %149 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 8
  store i32 %148, i32* %149, align 16
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 8
  %151 = load i32, i32* %150, align 16
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %151, %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %155, %156
  %158 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 9
  store i32 %157, i32* %158, align 4
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %160 = load i32, i32* %159, align 16
  %161 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %160, %162
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 2, %166
  %168 = add nsw i32 %163, %167
  %169 = ashr i32 %168, 4
  %170 = load i32*, i32** %4, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %169, i32* %171, align 4
  %172 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %173, %175
  %177 = load i32*, i32** %4, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 2, %179
  %181 = add nsw i32 %176, %180
  %182 = ashr i32 %181, 4
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  store i32 %182, i32* %184, align 4
  %185 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 2
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 4
  %188 = load i32, i32* %187, align 16
  %189 = add nsw i32 %186, %188
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 2, %192
  %194 = add nsw i32 %189, %193
  %195 = ashr i32 %194, 4
  %196 = load i32*, i32** %4, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  store i32 %195, i32* %197, align 4
  %198 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 3
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 5
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %199, %201
  %203 = load i32*, i32** %4, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 2, %205
  %207 = add nsw i32 %202, %206
  %208 = ashr i32 %207, 4
  %209 = load i32*, i32** %4, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  store i32 %208, i32* %210, align 4
  %211 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 4
  %212 = load i32, i32* %211, align 16
  %213 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 6
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %212, %214
  %216 = load i32*, i32** %4, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 2, %218
  %220 = add nsw i32 %215, %219
  %221 = ashr i32 %220, 4
  %222 = load i32*, i32** %4, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  store i32 %221, i32* %223, align 4
  %224 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 5
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 7
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %225, %227
  %229 = load i32*, i32** %4, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 5
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 2, %231
  %233 = add nsw i32 %228, %232
  %234 = ashr i32 %233, 4
  %235 = load i32*, i32** %4, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 5
  store i32 %234, i32* %236, align 4
  %237 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 6
  %238 = load i32, i32* %237, align 8
  %239 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 8
  %240 = load i32, i32* %239, align 16
  %241 = add nsw i32 %238, %240
  %242 = load i32*, i32** %4, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 6
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 2, %244
  %246 = add nsw i32 %241, %245
  %247 = ashr i32 %246, 4
  %248 = load i32*, i32** %4, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 6
  store i32 %247, i32* %249, align 4
  %250 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 7
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 9
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %251, %253
  %255 = load i32*, i32** %4, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 7
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 2, %257
  %259 = add nsw i32 %254, %258
  %260 = ashr i32 %259, 4
  %261 = load i32*, i32** %4, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 7
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %5, align 4
  %264 = load i32*, i32** %4, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32* %266, i32** %4, align 8
  br label %267

267:                                              ; preds = %58
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  br label %11

270:                                              ; preds = %11
  ret void
}

declare dso_local i64 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
