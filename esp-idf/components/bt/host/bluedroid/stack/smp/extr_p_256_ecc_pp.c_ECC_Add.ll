; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_ecc_pp.c_ECC_Add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_ecc_pp.c_ECC_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32* }

@KEY_LENGTH_DWORDS_P256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @ECC_Add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ECC_Add(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %12, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %15, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %18, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %13, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %16, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %19, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %14, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %17, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %20, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @multiprecision_iszero(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = call i32 @p_256_copy_point(%struct.TYPE_9__* %61, %struct.TYPE_9__* %62)
  store i32 1, i32* %21, align 4
  br label %159

64:                                               ; preds = %4
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @multiprecision_iszero(i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = call i32 @p_256_copy_point(%struct.TYPE_9__* %70, %struct.TYPE_9__* %71)
  store i32 1, i32* %21, align 4
  br label %159

73:                                               ; preds = %64
  %74 = load i32*, i32** %18, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @multiprecision_mersenns_squa_mod(i32* %25, i32* %74, i32 %75)
  %77 = load i32*, i32** %18, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @multiprecision_mersenns_mult_mod(i32* %28, i32* %77, i32* %25, i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @multiprecision_mersenns_mult_mod(i32* %25, i32* %80, i32* %25, i32 %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @multiprecision_mersenns_mult_mod(i32* %28, i32* %83, i32* %28, i32 %84)
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @multiprecision_sub_mod(i32* %25, i32* %25, i32* %86, i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @multiprecision_sub_mod(i32* %28, i32* %28, i32* %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @multiprecision_iszero(i32* %25, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %73
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @multiprecision_iszero(i32* %28, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ECC_Double(%struct.TYPE_9__* %100, %struct.TYPE_9__* %101, i32 %102)
  store i32 1, i32* %21, align 4
  br label %159

104:                                              ; preds = %95
  %105 = load i32*, i32** %20, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @multiprecision_init(i32* %105, i32 %106)
  store i32 1, i32* %21, align 4
  br label %159

108:                                              ; preds = %73
  %109 = load i32*, i32** %20, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @multiprecision_mersenns_mult_mod(i32* %109, i32* %110, i32* %25, i32 %111)
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @multiprecision_mersenns_squa_mod(i32* %113, i32* %25, i32 %114)
  %116 = load i32*, i32** %18, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @multiprecision_mersenns_mult_mod(i32* %116, i32* %117, i32* %25, i32 %118)
  %120 = load i32*, i32** %17, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @multiprecision_mersenns_mult_mod(i32* %120, i32* %121, i32* %122, i32 %123)
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @multiprecision_lshift_mod(i32* %25, i32* %125, i32 %126)
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @multiprecision_mersenns_squa_mod(i32* %128, i32* %28, i32 %129)
  %131 = load i32*, i32** %14, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @multiprecision_sub_mod(i32* %131, i32* %132, i32* %25, i32 %133)
  %135 = load i32*, i32** %14, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @multiprecision_sub_mod(i32* %135, i32* %136, i32* %137, i32 %138)
  %140 = load i32*, i32** %17, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @multiprecision_sub_mod(i32* %140, i32* %141, i32* %142, i32 %143)
  %145 = load i32*, i32** %17, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @multiprecision_mersenns_mult_mod(i32* %145, i32* %146, i32* %28, i32 %147)
  %149 = load i32*, i32** %18, align 8
  %150 = load i32*, i32** %18, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @multiprecision_mersenns_mult_mod(i32* %149, i32* %150, i32* %151, i32 %152)
  %154 = load i32*, i32** %17, align 8
  %155 = load i32*, i32** %17, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @multiprecision_sub_mod(i32* %154, i32* %155, i32* %156, i32 %157)
  store i32 0, i32* %21, align 4
  br label %159

159:                                              ; preds = %108, %104, %99, %69, %60
  %160 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %21, align 4
  switch i32 %161, label %163 [
    i32 0, label %162
    i32 1, label %162
  ]

162:                                              ; preds = %159, %159
  ret void

163:                                              ; preds = %159
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @multiprecision_iszero(i32*, i32) #2

declare dso_local i32 @p_256_copy_point(%struct.TYPE_9__*, %struct.TYPE_9__*) #2

declare dso_local i32 @multiprecision_mersenns_squa_mod(i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_mersenns_mult_mod(i32*, i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_sub_mod(i32*, i32*, i32*, i32) #2

declare dso_local i32 @ECC_Double(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @multiprecision_init(i32*, i32) #2

declare dso_local i32 @multiprecision_lshift_mod(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
