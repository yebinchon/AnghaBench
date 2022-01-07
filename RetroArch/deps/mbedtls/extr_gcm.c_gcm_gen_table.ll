; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_gcm_gen_table.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_gcm_gen_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32 }

@MBEDTLS_AESNI_CLMUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @gcm_gen_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_gen_table(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %12, align 8
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 0, i32 16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %22 = call i32 @mbedtls_cipher_update(i32* %19, i8* %20, i32 16, i8* %21, i64* %12)
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %159

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %29 = call i32 @GET_UINT32_BE(i32 %27, i8* %28, i32 0)
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %32 = call i32 @GET_UINT32_BE(i32 %30, i8* %31, i32 4)
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 32
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %39 = call i32 @GET_UINT32_BE(i32 %37, i8* %38, i32 8)
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %42 = call i32 @GET_UINT32_BE(i32 %40, i8* %41, i32 12)
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 32
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32 %52, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 0, i32* %64, align 4
  store i32 4, i32* %5, align 4
  br label %65

65:                                               ; preds = %96, %26
  %66 = load i32, i32* %5, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 1
  %71 = mul i32 %70, -520093696
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, 63
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 1
  %76 = or i32 %73, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 1
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 32
  %81 = xor i32 %78, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %68
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %65

99:                                               ; preds = %65
  store i32 2, i32* %5, align 4
  br label %100

100:                                              ; preds = %155, %99
  %101 = load i32, i32* %5, align 4
  %102 = icmp sle i32 %101, 8
  br i1 %102, label %103, label %158

103:                                              ; preds = %100
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32* %109, i32** %14, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32* %115, i32** %15, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %10, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %151, %103
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %125, %132
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %138, %145
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %124
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %120

154:                                              ; preds = %120
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %5, align 4
  %157 = mul nsw i32 %156, 2
  store i32 %157, i32* %5, align 4
  br label %100

158:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %24
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mbedtls_cipher_update(i32*, i8*, i32, i8*, i64*) #1

declare dso_local i32 @GET_UINT32_BE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
