; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_esp_sha.c_esp_sha.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_esp_sha.c_esp_sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1 = common dso_local global i64 0, align 8
@SHA2_256 = common dso_local global i64 0, align 8
@SHA2_384 = common dso_local global i64 0, align 8
@SHA2_512 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_sha(i64 %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @SHA1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = call i64 @malloc(i32 4)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @mbedtls_sha1_starts_ret(i32* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @mbedtls_sha1_update_ret(i32* %35, i8* %36, i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @mbedtls_sha1_finish_ret(i32* %43, i8* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @mbedtls_sha1_free(i32* %50)
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @free(i32* %52)
  br label %153

54:                                               ; preds = %19
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @SHA2_256, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = call i64 @malloc(i32 4)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @mbedtls_sha256_starts_ret(i32* %65, i32 0)
  %67 = load i32*, i32** %11, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @mbedtls_sha256_update_ret(i32* %67, i8* %68, i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** %11, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @mbedtls_sha256_finish_ret(i32* %75, i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @mbedtls_sha256_free(i32* %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @free(i32* %84)
  br label %152

86:                                               ; preds = %54
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @SHA2_384, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %86
  %91 = call i64 @malloc(i32 4)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @mbedtls_sha512_starts_ret(i32* %97, i32 1)
  %99 = load i32*, i32** %12, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @mbedtls_sha512_update_ret(i32* %99, i8* %100, i64 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32*, i32** %12, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @mbedtls_sha512_finish_ret(i32* %107, i8* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @mbedtls_sha512_free(i32* %114)
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @free(i32* %116)
  br label %151

118:                                              ; preds = %86
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @SHA2_512, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %150

122:                                              ; preds = %118
  %123 = call i64 @malloc(i32 4)
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %13, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = icmp ne i32* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @mbedtls_sha512_starts_ret(i32* %129, i32 0)
  %131 = load i32*, i32** %13, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @mbedtls_sha512_update_ret(i32* %131, i8* %132, i64 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32*, i32** %13, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @mbedtls_sha512_finish_ret(i32* %139, i8* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @mbedtls_sha512_free(i32* %146)
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @free(i32* %148)
  br label %150

150:                                              ; preds = %122, %118
  br label %151

151:                                              ; preds = %150, %90
  br label %152

152:                                              ; preds = %151, %58
  br label %153

153:                                              ; preds = %152, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @mbedtls_sha1_starts_ret(i32*) #1

declare dso_local i32 @mbedtls_sha1_update_ret(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_sha1_finish_ret(i32*, i8*) #1

declare dso_local i32 @mbedtls_sha1_free(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @mbedtls_sha256_starts_ret(i32*, i32) #1

declare dso_local i32 @mbedtls_sha256_update_ret(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_sha256_finish_ret(i32*, i8*) #1

declare dso_local i32 @mbedtls_sha256_free(i32*) #1

declare dso_local i32 @mbedtls_sha512_starts_ret(i32*, i32) #1

declare dso_local i32 @mbedtls_sha512_update_ret(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_sha512_finish_ret(i32*, i8*) #1

declare dso_local i32 @mbedtls_sha512_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
