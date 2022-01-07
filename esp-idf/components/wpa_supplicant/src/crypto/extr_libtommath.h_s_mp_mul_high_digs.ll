; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_mul_high_digs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_mul_high_digs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64* }

@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i64 0, align 8
@DIGIT_BIT = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@MP_WARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)* @s_mp_mul_high_digs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_mul_high_digs(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = add nsw i64 %27, 1
  %29 = call i32 @mp_init_size(%struct.TYPE_13__* %10, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @MP_OKAY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %125

34:                                               ; preds = %4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = add nsw i64 %41, 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %116, %34
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %52
  store i64 0, i64* %16, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64* %68, i64** %19, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  store i64* %76, i64** %20, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %110, %56
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %80
  %85 = load i64*, i64** %19, align 8
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %18, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64*, i64** %20, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %20, align 8
  %92 = load i64, i64* %90, align 8
  %93 = trunc i64 %92 to i32
  %94 = mul nsw i32 %89, %93
  %95 = add nsw i32 %87, %94
  %96 = load i64, i64* %16, align 8
  %97 = trunc i64 %96 to i32
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i64, i64* @MP_MASK, align 8
  %101 = trunc i64 %100 to i32
  %102 = and i32 %99, %101
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %19, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %19, align 8
  store i64 %103, i64* %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @DIGIT_BIT, align 4
  %108 = ashr i32 %106, %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %16, align 8
  br label %110

110:                                              ; preds = %84
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %80

113:                                              ; preds = %80
  %114 = load i64, i64* %16, align 8
  %115 = load i64*, i64** %19, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %52

119:                                              ; preds = %52
  %120 = call i32 @mp_clamp(%struct.TYPE_13__* %10)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = call i32 @mp_exch(%struct.TYPE_13__* %10, %struct.TYPE_13__* %121)
  %123 = call i32 @mp_clear(%struct.TYPE_13__* %10)
  %124 = load i32, i32* @MP_OKAY, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %32
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @mp_init_size(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_13__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
