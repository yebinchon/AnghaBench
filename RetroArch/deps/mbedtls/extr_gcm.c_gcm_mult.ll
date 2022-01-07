; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_gcm_mult.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_gcm_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@last4 = common dso_local global i64* null, align 8
@MBEDTLS_AESNI_CLMUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*)* @gcm_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_mult(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 15
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 15
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %8, align 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  store i32 15, i32* %7, align 4
  br label %33

33:                                               ; preds = %135, %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %138

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %9, align 1
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 15
  br i1 %54, label %55, label %95

55:                                               ; preds = %36
  %56 = load i32, i32* %12, align 4
  %57 = trunc i32 %56 to i8
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %10, align 1
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 60
  %63 = load i32, i32* %12, align 4
  %64 = ashr i32 %63, 4
  %65 = or i32 %62, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 4
  store i32 %67, i32* %11, align 4
  %68 = load i64*, i64** @last4, align 8
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = shl i32 %73, 48
  %75 = load i32, i32* %11, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i8, i8* %8, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = xor i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i8, i8* %8, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = xor i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %55, %36
  %96 = load i32, i32* %12, align 4
  %97 = trunc i32 %96 to i8
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 15
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %10, align 1
  %101 = load i32, i32* %11, align 4
  %102 = shl i32 %101, 60
  %103 = load i32, i32* %12, align 4
  %104 = ashr i32 %103, 4
  %105 = or i32 %102, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %106, 4
  store i32 %107, i32* %11, align 4
  %108 = load i64*, i64** @last4, align 8
  %109 = load i8, i8* %10, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = shl i32 %113, 48
  %115 = load i32, i32* %11, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i8, i8* %9, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = xor i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i8, i8* %9, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %12, align 4
  %134 = xor i32 %133, %132
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %95
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %7, align 4
  br label %33

138:                                              ; preds = %33
  %139 = load i32, i32* %11, align 4
  %140 = ashr i32 %139, 32
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @PUT_UINT32_BE(i32 %140, i8* %141, i32 0)
  %143 = load i32, i32* %11, align 4
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @PUT_UINT32_BE(i32 %143, i8* %144, i32 4)
  %146 = load i32, i32* %12, align 4
  %147 = ashr i32 %146, 32
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @PUT_UINT32_BE(i32 %147, i8* %148, i32 8)
  %150 = load i32, i32* %12, align 4
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @PUT_UINT32_BE(i32 %150, i8* %151, i32 12)
  ret void
}

declare dso_local i32 @PUT_UINT32_BE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
