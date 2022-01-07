; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_mbedtls_camellia_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_mbedtls_camellia_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_crypt_ecb(%struct.TYPE_3__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @GET_UINT32_BE(i32 %20, i8* %21, i32 0)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @GET_UINT32_BE(i32 %24, i8* %25, i32 4)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @GET_UINT32_BE(i32 %28, i8* %29, i32 8)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @GET_UINT32_BE(i32 %32, i8* %33, i32 12)
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %10, align 8
  %37 = load i32, i32* %35, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = xor i32 %39, %37
  store i32 %40, i32* %38, align 16
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* %41, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  %49 = load i32, i32* %47, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %10, align 8
  %55 = load i32, i32* %53, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %136, %4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %137

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = call i32 @camellia_feistel(i32* %65, i32* %66, i32* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32* %71, i32** %10, align 8
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %76 = call i32 @camellia_feistel(i32* %73, i32* %74, i32* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32* %78, i32** %10, align 8
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i32 @camellia_feistel(i32* %79, i32* %80, i32* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32* %85, i32** %10, align 8
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %90 = call i32 @camellia_feistel(i32* %87, i32* %88, i32* %89)
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32* %92, i32** %10, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = call i32 @camellia_feistel(i32* %93, i32* %94, i32* %96)
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32* %99, i32** %10, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %104 = call i32 @camellia_feistel(i32* %101, i32* %102, i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %10, align 8
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %62
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @FL(i32 %111, i32 %113, i32 %116, i32 %119)
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32* %122, i32** %10, align 8
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @FLInv(i32 %124, i32 %126, i32 %129, i32 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32* %135, i32** %10, align 8
  br label %136

136:                                              ; preds = %109, %62
  br label %59

137:                                              ; preds = %59
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %10, align 8
  %140 = load i32, i32* %138, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %142 = load i32, i32* %141, align 8
  %143 = xor i32 %142, %140
  store i32 %143, i32* %141, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %10, align 8
  %146 = load i32, i32* %144, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %10, align 8
  %152 = load i32, i32* %150, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = xor i32 %154, %152
  store i32 %155, i32* %153, align 16
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %10, align 8
  %158 = load i32, i32* %156, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = xor i32 %160, %158
  store i32 %161, i32* %159, align 4
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %163 = load i32, i32* %162, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @PUT_UINT32_BE(i32 %163, i8* %164, i32 0)
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @PUT_UINT32_BE(i32 %167, i8* %168, i32 4)
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %171 = load i32, i32* %170, align 16
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @PUT_UINT32_BE(i32 %171, i8* %172, i32 8)
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @PUT_UINT32_BE(i32 %175, i8* %176, i32 12)
  ret i32 0
}

declare dso_local i32 @GET_UINT32_BE(i32, i8*, i32) #1

declare dso_local i32 @camellia_feistel(i32*, i32*, i32*) #1

declare dso_local i32 @FL(i32, i32, i32, i32) #1

declare dso_local i32 @FLInv(i32, i32, i32, i32) #1

declare dso_local i32 @PUT_UINT32_BE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
