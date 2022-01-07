; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_internal_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_internal_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@FSb = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_internal_aes_encrypt(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @GET_UINT32_LE(i32 %20, i8* %21, i32 0)
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* %23, align 4
  %26 = load i32, i32* %9, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @GET_UINT32_LE(i32 %28, i8* %29, i32 4)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load i32, i32* %10, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @GET_UINT32_LE(i32 %36, i8* %37, i32 8)
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = load i32, i32* %39, align 4
  %42 = load i32, i32* %11, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @GET_UINT32_LE(i32 %44, i8* %45, i32 12)
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  %49 = load i32, i32* %47, align 4
  %50 = load i32, i32* %12, align 4
  %51 = xor i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 1
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %79, %3
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @AES_FROUND(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @AES_FROUND(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %60
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @AES_FROUND(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  %94 = load i32, i32* %92, align 4
  %95 = load i64*, i64** @FSb, align 8
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, 255
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = xor i32 %94, %101
  %103 = load i64*, i64** @FSb, align 8
  %104 = load i32, i32* %14, align 4
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %103, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 %110, 8
  %112 = xor i32 %102, %111
  %113 = load i64*, i64** @FSb, align 8
  %114 = load i32, i32* %15, align 4
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %113, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = shl i32 %120, 16
  %122 = xor i32 %112, %121
  %123 = load i64*, i64** @FSb, align 8
  %124 = load i32, i32* %16, align 4
  %125 = ashr i32 %124, 24
  %126 = and i32 %125, 255
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %123, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = shl i32 %130, 24
  %132 = xor i32 %122, %131
  store i32 %132, i32* %9, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  %135 = load i32, i32* %133, align 4
  %136 = load i64*, i64** @FSb, align 8
  %137 = load i32, i32* %14, align 4
  %138 = and i32 %137, 255
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = xor i32 %135, %142
  %144 = load i64*, i64** @FSb, align 8
  %145 = load i32, i32* %15, align 4
  %146 = ashr i32 %145, 8
  %147 = and i32 %146, 255
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %144, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = shl i32 %151, 8
  %153 = xor i32 %143, %152
  %154 = load i64*, i64** @FSb, align 8
  %155 = load i32, i32* %16, align 4
  %156 = ashr i32 %155, 16
  %157 = and i32 %156, 255
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %154, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = shl i32 %161, 16
  %163 = xor i32 %153, %162
  %164 = load i64*, i64** @FSb, align 8
  %165 = load i32, i32* %13, align 4
  %166 = ashr i32 %165, 24
  %167 = and i32 %166, 255
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %164, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = shl i32 %171, 24
  %173 = xor i32 %163, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %8, align 8
  %176 = load i32, i32* %174, align 4
  %177 = load i64*, i64** @FSb, align 8
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %178, 255
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %177, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = xor i32 %176, %183
  %185 = load i64*, i64** @FSb, align 8
  %186 = load i32, i32* %16, align 4
  %187 = ashr i32 %186, 8
  %188 = and i32 %187, 255
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %185, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = shl i32 %192, 8
  %194 = xor i32 %184, %193
  %195 = load i64*, i64** @FSb, align 8
  %196 = load i32, i32* %13, align 4
  %197 = ashr i32 %196, 16
  %198 = and i32 %197, 255
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %195, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = shl i32 %202, 16
  %204 = xor i32 %194, %203
  %205 = load i64*, i64** @FSb, align 8
  %206 = load i32, i32* %14, align 4
  %207 = ashr i32 %206, 24
  %208 = and i32 %207, 255
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %205, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = shl i32 %212, 24
  %214 = xor i32 %204, %213
  store i32 %214, i32* %11, align 4
  %215 = load i32*, i32** %8, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %8, align 8
  %217 = load i32, i32* %215, align 4
  %218 = load i64*, i64** @FSb, align 8
  %219 = load i32, i32* %16, align 4
  %220 = and i32 %219, 255
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %218, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = xor i32 %217, %224
  %226 = load i64*, i64** @FSb, align 8
  %227 = load i32, i32* %13, align 4
  %228 = ashr i32 %227, 8
  %229 = and i32 %228, 255
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %226, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = shl i32 %233, 8
  %235 = xor i32 %225, %234
  %236 = load i64*, i64** @FSb, align 8
  %237 = load i32, i32* %14, align 4
  %238 = ashr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %236, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = shl i32 %243, 16
  %245 = xor i32 %235, %244
  %246 = load i64*, i64** @FSb, align 8
  %247 = load i32, i32* %15, align 4
  %248 = ashr i32 %247, 24
  %249 = and i32 %248, 255
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %246, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = shl i32 %253, 24
  %255 = xor i32 %245, %254
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i8*, i8** %6, align 8
  %258 = call i32 @PUT_UINT32_LE(i32 %256, i8* %257, i32 0)
  %259 = load i32, i32* %10, align 4
  %260 = load i8*, i8** %6, align 8
  %261 = call i32 @PUT_UINT32_LE(i32 %259, i8* %260, i32 4)
  %262 = load i32, i32* %11, align 4
  %263 = load i8*, i8** %6, align 8
  %264 = call i32 @PUT_UINT32_LE(i32 %262, i8* %263, i32 8)
  %265 = load i32, i32* %12, align 4
  %266 = load i8*, i8** %6, align 8
  %267 = call i32 @PUT_UINT32_LE(i32 %265, i8* %266, i32 12)
  ret i32 0
}

declare dso_local i32 @GET_UINT32_LE(i32, i8*, i32) #1

declare dso_local i32 @AES_FROUND(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PUT_UINT32_LE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
