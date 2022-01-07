; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LenEnc_SetPrices.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LenEnc_SetPrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }

@kLenNumLowSymbols = common dso_local global i64 0, align 8
@kLenNumLowBits = common dso_local global i64 0, align 8
@kLenNumMidSymbols = common dso_local global i64 0, align 8
@kLenNumMidBits = common dso_local global i64 0, align 8
@kLenNumHighBits = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, i64*, i64*)* @LenEnc_SetPrices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenEnc_SetPrices(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @GET_PRICE_0a(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @GET_PRICE_1a(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @GET_PRICE_0a(i32 %27)
  %29 = add i64 %24, %28
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @GET_PRICE_1a(i32 %33)
  %35 = add i64 %30, %34
  store i64 %35, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %15, align 8
  br label %36

36:                                               ; preds = %62, %5
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* @kLenNumLowSymbols, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %124

45:                                               ; preds = %40
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @kLenNumLowBits, align 8
  %52 = shl i64 %50, %51
  %53 = add i64 %49, %52
  %54 = load i64, i64* @kLenNumLowBits, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = call i64 @RcTree_GetPrice(i64 %53, i64 %54, i64 %55, i64* %56)
  %58 = add i64 %46, %57
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %45
  %63 = load i64, i64* %15, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %15, align 8
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %96, %65
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* @kLenNumLowSymbols, align 8
  %69 = load i64, i64* @kLenNumMidSymbols, align 8
  %70 = add i64 %68, %69
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %66
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %124

77:                                               ; preds = %72
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @kLenNumMidBits, align 8
  %84 = shl i64 %82, %83
  %85 = add i64 %81, %84
  %86 = load i64, i64* @kLenNumMidBits, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @kLenNumLowSymbols, align 8
  %89 = sub i64 %87, %88
  %90 = load i64*, i64** %10, align 8
  %91 = call i64 @RcTree_GetPrice(i64 %85, i64 %86, i64 %89, i64* %90)
  %92 = add i64 %78, %91
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %77
  %97 = load i64, i64* %15, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %15, align 8
  br label %66

99:                                               ; preds = %66
  br label %100

100:                                              ; preds = %121, %99
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @kLenNumHighBits, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @kLenNumLowSymbols, align 8
  %112 = sub i64 %110, %111
  %113 = load i64, i64* @kLenNumMidSymbols, align 8
  %114 = sub i64 %112, %113
  %115 = load i64*, i64** %10, align 8
  %116 = call i64 @RcTree_GetPrice(i64 %108, i64 %109, i64 %114, i64* %115)
  %117 = add i64 %105, %116
  %118 = load i64*, i64** %9, align 8
  %119 = load i64, i64* %15, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  store i64 %117, i64* %120, align 8
  br label %121

121:                                              ; preds = %104
  %122 = load i64, i64* %15, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %15, align 8
  br label %100

124:                                              ; preds = %44, %76, %100
  ret void
}

declare dso_local i64 @GET_PRICE_0a(i32) #1

declare dso_local i64 @GET_PRICE_1a(i32) #1

declare dso_local i64 @RcTree_GetPrice(i64, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
