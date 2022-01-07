; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_xtea.c_mbedtls_xtea_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_xtea.c_mbedtls_xtea_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@MBEDTLS_XTEA_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_xtea_crypt_ecb(%struct.TYPE_3__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @GET_UINT32_BE(i32 %20, i8* %21, i32 0)
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @GET_UINT32_BE(i32 %23, i8* %24, i32 4)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MBEDTLS_XTEA_ENCRYPT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 -1640531527, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %77

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 4
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %36, 5
  %38 = xor i32 %35, %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %41, %47
  %49 = xor i32 %40, %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 4
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 5
  %59 = xor i32 %56, %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = ashr i32 %64, 11
  %66 = and i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %62, %69
  %71 = xor i32 %61, %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %33
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %30

77:                                               ; preds = %30
  br label %129

78:                                               ; preds = %4
  store i32 -1640531527, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = mul nsw i32 %79, 32
  store i32 %80, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %125, %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 32
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 5
  %89 = xor i32 %86, %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %16, align 4
  %95 = ashr i32 %94, 11
  %96 = and i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %92, %99
  %101 = xor i32 %91, %100
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 %107, 4
  %109 = load i32, i32* %11, align 4
  %110 = ashr i32 %109, 5
  %111 = xor i32 %108, %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %16, align 4
  %117 = and i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %114, %120
  %122 = xor i32 %113, %121
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %84
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %81

128:                                              ; preds = %81
  br label %129

129:                                              ; preds = %128, %77
  %130 = load i32, i32* %10, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @PUT_UINT32_BE(i32 %130, i8* %131, i32 0)
  %133 = load i32, i32* %11, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @PUT_UINT32_BE(i32 %133, i8* %134, i32 4)
  ret i32 0
}

declare dso_local i32 @GET_UINT32_BE(i32, i8*, i32) #1

declare dso_local i32 @PUT_UINT32_BE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
