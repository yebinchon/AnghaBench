; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_ecc_pp.c_ECC_Double.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_ecc_pp.c_ECC_Double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@KEY_LENGTH_DWORDS_P256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @ECC_Double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ECC_Double(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @multiprecision_iszero(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @multiprecision_init(i32* %37, i32 %38)
  store i32 1, i32* %17, align 4
  br label %123

40:                                               ; preds = %3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %11, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %13, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %15, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %12, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %14, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @multiprecision_mersenns_squa_mod(i32* %21, i32* %59, i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @multiprecision_sub_mod(i32* %24, i32* %62, i32* %21, i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @multiprecision_add_mod(i32* %21, i32* %65, i32* %21, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @multiprecision_mersenns_mult_mod(i32* %24, i32* %21, i32* %24, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @multiprecision_lshift_mod(i32* %27, i32* %24, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @multiprecision_add_mod(i32* %24, i32* %27, i32* %24, i32 %72)
  %74 = load i32*, i32** %16, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @multiprecision_mersenns_mult_mod(i32* %74, i32* %75, i32* %76, i32 %77)
  %79 = load i32*, i32** %16, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @multiprecision_lshift_mod(i32* %79, i32* %80, i32 %81)
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @multiprecision_mersenns_squa_mod(i32* %83, i32* %84, i32 %85)
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @multiprecision_lshift_mod(i32* %87, i32* %88, i32 %89)
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @multiprecision_mersenns_mult_mod(i32* %27, i32* %91, i32* %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @multiprecision_lshift_mod(i32* %27, i32* %27, i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @multiprecision_mersenns_squa_mod(i32* %97, i32* %98, i32 %99)
  %101 = load i32*, i32** %14, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @multiprecision_lshift_mod(i32* %101, i32* %102, i32 %103)
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @multiprecision_mersenns_squa_mod(i32* %105, i32* %24, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @multiprecision_lshift_mod(i32* %21, i32* %27, i32 %108)
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @multiprecision_sub_mod(i32* %110, i32* %111, i32* %21, i32 %112)
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @multiprecision_sub_mod(i32* %21, i32* %27, i32* %114, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @multiprecision_mersenns_mult_mod(i32* %21, i32* %21, i32* %24, i32 %117)
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @multiprecision_sub_mod(i32* %119, i32* %21, i32* %120, i32 %121)
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %40, %34
  %124 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %17, align 4
  switch i32 %125, label %127 [
    i32 0, label %126
    i32 1, label %126
  ]

126:                                              ; preds = %123, %123
  ret void

127:                                              ; preds = %123
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @multiprecision_iszero(i32*, i32) #2

declare dso_local i32 @multiprecision_init(i32*, i32) #2

declare dso_local i32 @multiprecision_mersenns_squa_mod(i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_sub_mod(i32*, i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_add_mod(i32*, i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_mersenns_mult_mod(i32*, i32*, i32*, i32) #2

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
