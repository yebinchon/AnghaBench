; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_huffman.c_BrotliBuildHuffmanTable.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_huffman.c_BrotliBuildHuffmanTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROTLI_REVERSE_BITS_MAX = common dso_local global i32 0, align 4
@BROTLI_HUFFMAN_MAX_CODE_LENGTH = common dso_local global i32 0, align 4
@BROTLI_REVERSE_BITS_LOWEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliBuildHuffmanTable(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BROTLI_REVERSE_BITS_MAX, align 4
  %26 = icmp sle i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BROTLI_DCHECK(i32 %27)
  %29 = load i32, i32* @BROTLI_HUFFMAN_MAX_CODE_LENGTH, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* @BROTLI_REVERSE_BITS_MAX, align 4
  %33 = icmp sle i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BROTLI_DCHECK(i32 %34)
  br label %36

36:                                               ; preds = %43, %4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %21, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 65535
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %21, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %21, align 4
  br label %36

46:                                               ; preds = %36
  %47 = load i32, i32* @BROTLI_HUFFMAN_MAX_CODE_LENGTH, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %21, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %21, align 4
  %51 = load i32*, i32** %5, align 8
  store i32* %51, i32** %10, align 8
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = shl i32 1, %53
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %21, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load i32, i32* %21, align 4
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = shl i32 1, %61
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %59, %46
  store i32 0, i32* %13, align 4
  %64 = load i32, i32* @BROTLI_REVERSE_BITS_LOWEST, align 4
  store i32 %64, i32* %14, align 4
  store i32 1, i32* %22, align 4
  store i32 2, i32* %17, align 4
  br label %65

65:                                               ; preds = %106, %63
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* @BROTLI_HUFFMAN_MAX_CODE_LENGTH, align 4
  %68 = add nsw i32 %67, 1
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %23, align 4
  br label %75

75:                                               ; preds = %98, %65
  %76 = load i32, i32* %23, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @ConstructHuffmanCode(i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i64 @BrotliReverseBits(i32 %88)
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @ReplicateValue(i32* %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %23, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %23, align 4
  br label %75

101:                                              ; preds = %75
  %102 = load i32, i32* %17, align 4
  %103 = shl i32 %102, 1
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %14, align 4
  %105 = ashr i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %22, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %65, label %111

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %116, %111
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = call i32 @memcpy(i32* %120, i32* %122, i64 %125)
  %127 = load i32, i32* %19, align 4
  %128 = shl i32 %127, 1
  store i32 %128, i32* %19, align 4
  br label %112

129:                                              ; preds = %112
  %130 = load i32, i32* @BROTLI_REVERSE_BITS_LOWEST, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %131, 1
  %133 = ashr i32 %130, %132
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* @BROTLI_REVERSE_BITS_LOWEST, align 4
  %135 = shl i32 %134, 1
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* @BROTLI_REVERSE_BITS_LOWEST, align 4
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  store i32 2, i32* %17, align 4
  br label %139

139:                                              ; preds = %232, %129
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %235

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @BROTLI_HUFFMAN_MAX_CODE_LENGTH, align 4
  %146 = add nsw i32 %145, 1
  %147 = sub nsw i32 %144, %146
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %220, %143
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %227

155:                                              ; preds = %148
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* @BROTLI_REVERSE_BITS_LOWEST, align 4
  %158 = shl i32 %157, 1
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %198

160:                                              ; preds = %155
  %161 = load i32, i32* %19, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %10, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @NextTableBitSize(i32* %165, i32 %166, i32 %167)
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = shl i32 1, %169
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %20, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @BrotliReverseBits(i32 %174)
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32*, i32** %10, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = ptrtoint i32* %183 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = sub i64 %188, %190
  %192 = trunc i64 %191 to i32
  %193 = call i32 @ConstructHuffmanCode(i32 %182, i32 %192)
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %193, i32* %197, align 4
  store i32 0, i32* %15, align 4
  br label %198

198:                                              ; preds = %160, %155
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %6, align 4
  %206 = sub nsw i32 %204, %205
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @ConstructHuffmanCode(i32 %206, i32 %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32*, i32** %10, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call i64 @BrotliReverseBits(i32 %210)
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @ReplicateValue(i32* %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %198
  %221 = load i32*, i32** %8, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %224, align 4
  br label %148

227:                                              ; preds = %148
  %228 = load i32, i32* %17, align 4
  %229 = shl i32 %228, 1
  store i32 %229, i32* %17, align 4
  %230 = load i32, i32* %16, align 4
  %231 = ashr i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %232

232:                                              ; preds = %227
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %139

235:                                              ; preds = %139
  %236 = load i32, i32* %20, align 4
  ret i32 %236
}

declare dso_local i32 @BROTLI_DCHECK(i32) #1

declare dso_local i32 @ConstructHuffmanCode(i32, i32) #1

declare dso_local i32 @ReplicateValue(i32*, i32, i32, i32) #1

declare dso_local i64 @BrotliReverseBits(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @NextTableBitSize(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
