; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-internal-enc.c_rijndaelEncrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-internal-enc.c_rijndaelEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i32 0, align 4
@t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rijndaelEncrypt(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @GETU32(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = call i32 @GETU32(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %26, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = call i32 @GETU32(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %33, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 12
  %40 = call i32 @GETU32(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %40, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %114, %4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %50)
  %52 = xor i32 %49, %51
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %53)
  %55 = xor i32 %52, %54
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %56)
  %58 = xor i32 %55, %57
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %58, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %65)
  %67 = xor i32 %64, %66
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %68)
  %70 = xor i32 %67, %69
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %71)
  %73 = xor i32 %70, %72
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %73, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %80)
  %82 = xor i32 %79, %81
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %83)
  %85 = xor i32 %82, %84
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %86)
  %88 = xor i32 %85, %87
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %95)
  %97 = xor i32 %94, %96
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %98)
  %100 = xor i32 %97, %99
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %101)
  %103 = xor i32 %100, %102
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %103, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  store i32* %109, i32** %5, align 8
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %17, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %47
  br label %175

114:                                              ; preds = %47
  %115 = load i32, i32* %13, align 4
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %117)
  %119 = xor i32 %116, %118
  %120 = load i32, i32* %15, align 4
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %120)
  %122 = xor i32 %119, %121
  %123 = load i32, i32* %16, align 4
  %124 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %123)
  %125 = xor i32 %122, %124
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %125, %128
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %132)
  %134 = xor i32 %131, %133
  %135 = load i32, i32* %16, align 4
  %136 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %135)
  %137 = xor i32 %134, %136
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %138)
  %140 = xor i32 %137, %139
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = xor i32 %140, %143
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %145)
  %147 = load i32, i32* %16, align 4
  %148 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %147)
  %149 = xor i32 %146, %148
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %150)
  %152 = xor i32 %149, %151
  %153 = load i32, i32* %14, align 4
  %154 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %153)
  %155 = xor i32 %152, %154
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %155, %158
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %162)
  %164 = xor i32 %161, %163
  %165 = load i32, i32* %14, align 4
  %166 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %165)
  %167 = xor i32 %164, %166
  %168 = load i32, i32* %15, align 4
  %169 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %168)
  %170 = xor i32 %167, %169
  %171 = load i32*, i32** %5, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = xor i32 %170, %173
  store i32 %174, i32* %12, align 4
  br label %47

175:                                              ; preds = %113
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @TE41(i32 %176)
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @TE42(i32 %178)
  %180 = xor i32 %177, %179
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @TE43(i32 %181)
  %183 = xor i32 %180, %182
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @TE44(i32 %184)
  %186 = xor i32 %183, %185
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %186, %189
  store i32 %190, i32* %9, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @PUTU32(i32* %191, i32 %192)
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @TE41(i32 %194)
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @TE42(i32 %196)
  %198 = xor i32 %195, %197
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @TE43(i32 %199)
  %201 = xor i32 %198, %200
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @TE44(i32 %202)
  %204 = xor i32 %201, %203
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = xor i32 %204, %207
  store i32 %208, i32* %10, align 4
  %209 = load i32*, i32** %8, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @PUTU32(i32* %210, i32 %211)
  %213 = load i32, i32* %15, align 4
  %214 = call i32 @TE41(i32 %213)
  %215 = load i32, i32* %16, align 4
  %216 = call i32 @TE42(i32 %215)
  %217 = xor i32 %214, %216
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @TE43(i32 %218)
  %220 = xor i32 %217, %219
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @TE44(i32 %221)
  %223 = xor i32 %220, %222
  %224 = load i32*, i32** %5, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %223, %226
  store i32 %227, i32* %11, align 4
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 8
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @PUTU32(i32* %229, i32 %230)
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @TE41(i32 %232)
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @TE42(i32 %234)
  %236 = xor i32 %233, %235
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @TE43(i32 %237)
  %239 = xor i32 %236, %238
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @TE44(i32 %240)
  %242 = xor i32 %239, %241
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  %245 = load i32, i32* %244, align 4
  %246 = xor i32 %242, %245
  store i32 %246, i32* %12, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 12
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @PUTU32(i32* %248, i32 %249)
  ret void
}

declare dso_local i32 @GETU32(i32*) #1

declare dso_local i32 @TE0(...) #1

declare dso_local i32 @TE1(...) #1

declare dso_local i32 @TE2(...) #1

declare dso_local i32 @TE3(...) #1

declare dso_local i32 @TE41(i32) #1

declare dso_local i32 @TE42(i32) #1

declare dso_local i32 @TE43(i32) #1

declare dso_local i32 @TE44(i32) #1

declare dso_local i32 @PUTU32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
