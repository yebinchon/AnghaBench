; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccsha2/src/extr_ccsha256_ltc_compress.c_ccsha256_ltc_compress.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccsha2/src/extr_ccsha256_ltc_compress.c_ccsha256_ltc_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCSHA256_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccsha256_ltc_compress(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64* @ccdigest_u32(i32 %21)
  store i64* %22, i64** %19, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %20, align 8
  br label %25

25:                                               ; preds = %201, %3
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %5, align 8
  %28 = icmp ne i64 %26, 0
  br i1 %28, label %29, label %247

29:                                               ; preds = %25
  %30 = call i32 @set_W(i32 0)
  %31 = call i32 @set_W(i32 1)
  %32 = call i32 @set_W(i32 2)
  %33 = call i32 @set_W(i32 3)
  %34 = call i32 @set_W(i32 4)
  %35 = call i32 @set_W(i32 5)
  %36 = call i32 @set_W(i32 6)
  %37 = call i32 @set_W(i32 7)
  %38 = call i32 @set_W(i32 8)
  %39 = call i32 @set_W(i32 9)
  %40 = call i32 @set_W(i32 10)
  %41 = call i32 @set_W(i32 11)
  %42 = call i32 @set_W(i32 12)
  %43 = call i32 @set_W(i32 13)
  %44 = call i32 @set_W(i32 14)
  %45 = call i32 @set_W(i32 15)
  store i32 16, i32* %18, align 4
  br label %46

46:                                               ; preds = %78, %29
  %47 = load i32, i32* %18, align 4
  %48 = icmp slt i32 %47, 64
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load i32, i32* %18, align 4
  %51 = sub nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @Gamma1(i64 %54)
  %56 = load i32, i32* %18, align 4
  %57 = sub nsw i32 %56, 7
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = load i32, i32* %18, align 4
  %63 = sub nsw i32 %62, 15
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @Gamma0(i64 %66)
  %68 = add nsw i64 %61, %67
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 %69, 16
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %68, %73
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %76
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %49
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %46

81:                                               ; preds = %46
  %82 = load i64*, i64** %19, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load i64*, i64** %19, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %11, align 8
  %88 = load i64*, i64** %19, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %12, align 8
  %91 = load i64*, i64** %19, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  %94 = load i64*, i64** %19, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 4
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  %97 = load i64*, i64** %19, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 5
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %15, align 8
  %100 = load i64*, i64** %19, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 6
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %16, align 8
  %103 = load i64*, i64** %19, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 7
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %198, %81
  %107 = load i32, i32* %18, align 4
  %108 = icmp slt i32 %107, 64
  br i1 %108, label %109, label %201

109:                                              ; preds = %106
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 0
  %120 = call i32 @RND(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i32 %119)
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i32 @RND(i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i32 %130)
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* %17, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 2
  %142 = call i32 @RND(i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i32 %141)
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %151, 3
  %153 = call i32 @RND(i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i32 %152)
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, 4
  %164 = call i32 @RND(i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i32 %163)
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %16, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 5
  %175 = call i32 @RND(i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i32 %174)
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %16, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 6
  %186 = call i32 @RND(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i32 %185)
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %15, align 8
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 7
  %197 = call i32 @RND(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i32 %196)
  br label %198

198:                                              ; preds = %109
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, 8
  store i32 %200, i32* %18, align 4
  br label %106

201:                                              ; preds = %106
  %202 = load i64, i64* %10, align 8
  %203 = load i64*, i64** %19, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, %202
  store i64 %206, i64* %204, align 8
  %207 = load i64, i64* %11, align 8
  %208 = load i64*, i64** %19, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, %207
  store i64 %211, i64* %209, align 8
  %212 = load i64, i64* %12, align 8
  %213 = load i64*, i64** %19, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 2
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, %212
  store i64 %216, i64* %214, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load i64*, i64** %19, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 3
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, %217
  store i64 %221, i64* %219, align 8
  %222 = load i64, i64* %14, align 8
  %223 = load i64*, i64** %19, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 4
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load i64, i64* %15, align 8
  %228 = load i64*, i64** %19, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 5
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, %227
  store i64 %231, i64* %229, align 8
  %232 = load i64, i64* %16, align 8
  %233 = load i64*, i64** %19, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 6
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load i64, i64* %17, align 8
  %238 = load i64*, i64** %19, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 7
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %240, %237
  store i64 %241, i64* %239, align 8
  %242 = load i32, i32* @CCSHA256_BLOCK_SIZE, align 4
  %243 = sext i32 %242 to i64
  %244 = udiv i64 %243, 8
  %245 = load i64*, i64** %20, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 %244
  store i64* %246, i64** %20, align 8
  br label %25

247:                                              ; preds = %25
  ret void
}

declare dso_local i64* @ccdigest_u32(i32) #1

declare dso_local i32 @set_W(i32) #1

declare dso_local i64 @Gamma1(i64) #1

declare dso_local i64 @Gamma0(i64) #1

declare dso_local i32 @RND(i64, i64, i64, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
