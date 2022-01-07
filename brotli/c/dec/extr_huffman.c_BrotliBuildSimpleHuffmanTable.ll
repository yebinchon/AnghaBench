; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_huffman.c_BrotliBuildSimpleHuffmanTable.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_huffman.c_BrotliBuildSimpleHuffmanTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliBuildSimpleHuffmanTable(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %251 [
    i32 0, label %18
    i32 1, label %25
    i32 2, label %60
    i32 3, label %107
    i32 4, label %182
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ConstructHuffmanCode(i32 0, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  br label %251

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ConstructHuffmanCode(i32 1, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ConstructHuffmanCode(i32 1, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %43, i32* %45, align 4
  br label %59

46:                                               ; preds = %25
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ConstructHuffmanCode(i32 1, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ConstructHuffmanCode(i32 1, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %46, %33
  store i32 2, i32* %9, align 4
  br label %251

60:                                               ; preds = %4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ConstructHuffmanCode(i32 1, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ConstructHuffmanCode(i32 1, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %60
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ConstructHuffmanCode(i32 2, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ConstructHuffmanCode(i32 2, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %90, i32* %92, align 4
  br label %106

93:                                               ; preds = %60
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ConstructHuffmanCode(i32 2, i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ConstructHuffmanCode(i32 2, i32 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %93, %80
  store i32 4, i32* %9, align 4
  br label %251

107:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %154, %107
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %157

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %150, %111
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %153

117:                                              ; preds = %114
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %122, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %117
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %129, %117
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %114

153:                                              ; preds = %114
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %108

157:                                              ; preds = %108
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ConstructHuffmanCode(i32 2, i32 %160)
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %161, i32* %163, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ConstructHuffmanCode(i32 2, i32 %166)
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ConstructHuffmanCode(i32 2, i32 %172)
  %174 = load i32*, i32** %5, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ConstructHuffmanCode(i32 2, i32 %178)
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  store i32 %179, i32* %181, align 4
  store i32 4, i32* %9, align 4
  br label %251

182:                                              ; preds = %4
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %182
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %14, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 3
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %190, %182
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ConstructHuffmanCode(i32 1, i32 %205)
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ConstructHuffmanCode(i32 2, i32 %211)
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  store i32 %212, i32* %214, align 4
  %215 = load i32*, i32** %7, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ConstructHuffmanCode(i32 1, i32 %217)
  %219 = load i32*, i32** %5, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  store i32 %218, i32* %220, align 4
  %221 = load i32*, i32** %7, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ConstructHuffmanCode(i32 3, i32 %223)
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 3
  store i32 %224, i32* %226, align 4
  %227 = load i32*, i32** %7, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @ConstructHuffmanCode(i32 1, i32 %229)
  %231 = load i32*, i32** %5, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 4
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ConstructHuffmanCode(i32 2, i32 %235)
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 5
  store i32 %236, i32* %238, align 4
  %239 = load i32*, i32** %7, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @ConstructHuffmanCode(i32 1, i32 %241)
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 6
  store i32 %242, i32* %244, align 4
  %245 = load i32*, i32** %7, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 3
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ConstructHuffmanCode(i32 3, i32 %247)
  %249 = load i32*, i32** %5, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 7
  store i32 %248, i32* %250, align 4
  store i32 8, i32* %9, align 4
  br label %251

251:                                              ; preds = %4, %202, %157, %106, %59, %18
  br label %252

252:                                              ; preds = %256, %251
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = load i32*, i32** %5, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32*, i32** %5, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = mul i64 %264, 4
  %266 = call i32 @memcpy(i32* %260, i32* %262, i64 %265)
  %267 = load i32, i32* %9, align 4
  %268 = shl i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %252

269:                                              ; preds = %252
  %270 = load i32, i32* %10, align 4
  ret i32 %270
}

declare dso_local i32 @ConstructHuffmanCode(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
