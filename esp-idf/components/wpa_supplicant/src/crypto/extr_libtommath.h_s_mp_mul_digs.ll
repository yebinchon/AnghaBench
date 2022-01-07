; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_mul_digs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_mul_digs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64* }

@MP_WARRAY = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)* @s_mp_mul_digs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_mul_digs(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
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
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MP_WARRAY, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @MIN(i32 %27, i32 %30)
  %32 = load i32, i32* @CHAR_BIT, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = load i32, i32* @DIGIT_BIT, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = sub i64 %34, %37
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = icmp slt i32 %31, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @fast_s_mp_mul_digs(%struct.TYPE_13__* %43, %struct.TYPE_13__* %44, %struct.TYPE_13__* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %140

48:                                               ; preds = %24, %4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mp_init_size(%struct.TYPE_13__* %10, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @MP_OKAY, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %140

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %131, %55
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %134

65:                                               ; preds = %61
  store i64 0, i64* %16, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @MIN(i32 %68, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64* %84, i64** %19, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  store i64* %87, i64** %20, align 8
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %118, %65
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = load i64*, i64** %19, align 8
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i64, i64* %18, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i64*, i64** %20, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %20, align 8
  %100 = load i64, i64* %98, align 8
  %101 = trunc i64 %100 to i32
  %102 = mul nsw i32 %97, %101
  %103 = add nsw i32 %95, %102
  %104 = load i64, i64* %16, align 8
  %105 = trunc i64 %104 to i32
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i64, i64* @MP_MASK, align 8
  %109 = trunc i64 %108 to i32
  %110 = and i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %19, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %19, align 8
  store i64 %111, i64* %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @DIGIT_BIT, align 4
  %116 = ashr i32 %114, %115
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %16, align 8
  br label %118

118:                                              ; preds = %92
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %88

121:                                              ; preds = %88
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i64, i64* %16, align 8
  %129 = load i64*, i64** %19, align 8
  store i64 %128, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %121
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %61

134:                                              ; preds = %61
  %135 = call i32 @mp_clamp(%struct.TYPE_13__* %10)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %137 = call i32 @mp_exch(%struct.TYPE_13__* %10, %struct.TYPE_13__* %136)
  %138 = call i32 @mp_clear(%struct.TYPE_13__* %10)
  %139 = load i32, i32* @MP_OKAY, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %134, %53, %42
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @fast_s_mp_mul_digs(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mp_init_size(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_13__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
