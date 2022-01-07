; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_setkey_dec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_setkey_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32 }

@RT0 = common dso_local global i32* null, align 8
@FSb = common dso_local global i64* null, align 8
@RT1 = common dso_local global i32* null, align 8
@RT2 = common dso_local global i32* null, align 8
@RT3 = common dso_local global i32* null, align 8
@MBEDTLS_AESNI_AES = common dso_local global i32 0, align 4
@MBEDTLS_PADLOCK_ACE = common dso_local global i32 0, align 4
@aes_padlock_ace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_setkey_dec(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32 @mbedtls_aes_init(%struct.TYPE_6__* %10)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mbedtls_aes_setkey_enc(%struct.TYPE_6__* %10, i8* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %150

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %12, align 8
  %38 = load i32, i32* %36, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %12, align 8
  %43 = load i32, i32* %41, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %12, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -8
  store i32* %61, i32** %12, align 8
  br label %62

62:                                               ; preds = %124, %24
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %118, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %123

69:                                               ; preds = %66
  %70 = load i32*, i32** @RT0, align 8
  %71 = load i64*, i64** @FSb, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 255
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %70, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** @RT1, align 8
  %81 = load i64*, i64** @FSb, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 255
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %81, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %80, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %79, %90
  %92 = load i32*, i32** @RT2, align 8
  %93 = load i64*, i64** @FSb, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %93, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %91, %102
  %104 = load i32*, i32** @RT3, align 8
  %105 = load i64*, i64** @FSb, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 24
  %109 = and i32 %108, 255
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %105, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %104, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %103, %114
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  store i32 %115, i32* %116, align 4
  br label %118

118:                                              ; preds = %69
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %12, align 8
  br label %66

123:                                              ; preds = %66
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %7, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 -8
  store i32* %128, i32** %12, align 8
  br label %62

129:                                              ; preds = %62
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %12, align 8
  %132 = load i32, i32* %130, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %12, align 8
  %137 = load i32, i32* %135, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %11, align 8
  store i32 %137, i32* %138, align 4
  %140 = load i32*, i32** %12, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %12, align 8
  %142 = load i32, i32* %140, align 4
  %143 = load i32*, i32** %11, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %11, align 8
  store i32 %142, i32* %143, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %12, align 8
  %147 = load i32, i32* %145, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  br label %150

150:                                              ; preds = %129, %23
  %151 = call i32 @mbedtls_aes_free(%struct.TYPE_6__* %10)
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i32 @mbedtls_aes_init(%struct.TYPE_6__*) #1

declare dso_local i32 @mbedtls_aes_setkey_enc(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @mbedtls_aes_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
