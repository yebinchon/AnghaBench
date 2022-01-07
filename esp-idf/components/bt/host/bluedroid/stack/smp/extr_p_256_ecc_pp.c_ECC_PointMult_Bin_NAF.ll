; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_ecc_pp.c_ECC_PointMult_Bin_NAF.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_ecc_pp.c_ECC_PointMult_Bin_NAF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { i32*, i32*, i32* }

@KEY_LENGTH_DWORDS_P256 = common dso_local global i64 0, align 8
@curve_p256 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@curve = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECC_PointMult_Bin_NAF(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [65 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @KEY_LENGTH_DWORDS_P256, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @curve_p256, i32 0, i32 0), align 8
  store i32* %20, i32** %14, align 8
  br label %23

21:                                               ; preds = %4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @curve, i32 0, i32 0), align 8
  store i32* %22, i32** %14, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = call i32 @p_256_init_point(%struct.TYPE_14__* %13)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @multiprecision_init(i32* %27, i64 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = call i32 @p_256_init_point(%struct.TYPE_14__* %34)
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @multiprecision_copy(i32* %37, i32* %40, i64 %41)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @multiprecision_sub(i32* %44, i32* %45, i32* %48, i64 %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @multiprecision_init(i32* %52, i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds [65 x i32], [65 x i32]* %10, i64 0, i64 0
  %59 = call i32 @memset(i32* %58, i32 0, i32 260)
  %60 = getelementptr inbounds [65 x i32], [65 x i32]* %10, i64 0, i64 0
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @ECC_NAF(i32* %60, i64* %11, i32* %61, i64 %62)
  %64 = load i64, i64* %11, align 8
  %65 = sub nsw i64 %64, 1
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %107, %23
  %68 = load i32, i32* %15, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %67
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = call i32 @p_256_copy_point(%struct.TYPE_14__* %13, %struct.TYPE_14__* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @ECC_Double(%struct.TYPE_14__* %73, %struct.TYPE_14__* %13, i64 %74)
  %76 = load i32, i32* %15, align 4
  %77 = sdiv i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [65 x i32], [65 x i32]* %10, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %15, align 4
  %82 = srem i32 %81, 4
  %83 = mul nsw i32 %82, 2
  %84 = ashr i32 %80, %83
  %85 = and i32 %84, 3
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp eq i64 %87, 1
  br i1 %88, label %89, label %96

89:                                               ; preds = %70
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = call i32 @p_256_copy_point(%struct.TYPE_14__* %13, %struct.TYPE_14__* %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @ECC_Add(%struct.TYPE_14__* %92, %struct.TYPE_14__* %13, %struct.TYPE_14__* %93, i64 %94)
  br label %106

96:                                               ; preds = %70
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %97, 3
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = call i32 @p_256_copy_point(%struct.TYPE_14__* %13, %struct.TYPE_14__* %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @ECC_Add(%struct.TYPE_14__* %102, %struct.TYPE_14__* %13, %struct.TYPE_14__* %12, i64 %103)
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %15, align 4
  br label %67

110:                                              ; preds = %67
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @multiprecision_inv_mod(i32* %112, i32* %115, i64 %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @multiprecision_mersenns_squa_mod(i32* %120, i32* %122, i64 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @multiprecision_mersenns_mult_mod(i32* %127, i32* %130, i32* %133, i64 %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @multiprecision_mersenns_mult_mod(i32* %138, i32* %141, i32* %143, i64 %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @multiprecision_mersenns_mult_mod(i32* %148, i32* %151, i32* %154, i64 %155)
  ret void
}

declare dso_local i32 @p_256_init_point(%struct.TYPE_14__*) #1

declare dso_local i32 @multiprecision_init(i32*, i64) #1

declare dso_local i32 @multiprecision_copy(i32*, i32*, i64) #1

declare dso_local i32 @multiprecision_sub(i32*, i32*, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ECC_NAF(i32*, i64*, i32*, i64) #1

declare dso_local i32 @p_256_copy_point(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ECC_Double(%struct.TYPE_14__*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @ECC_Add(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @multiprecision_inv_mod(i32*, i32*, i64) #1

declare dso_local i32 @multiprecision_mersenns_squa_mod(i32*, i32*, i64) #1

declare dso_local i32 @multiprecision_mersenns_mult_mod(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
