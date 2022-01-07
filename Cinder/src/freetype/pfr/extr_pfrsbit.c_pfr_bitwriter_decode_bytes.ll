; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pfr/extr_pfrsbit.c_pfr_bitwriter_decode_bytes.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pfr/extr_pfrsbit.c_pfr_bitwriter_decode_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i64*)* @pfr_bitwriter_decode_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_bitwriter_decode_bytes(%struct.TYPE_3__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %10, align 8
  store i32 128, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = ptrtoint i64* %20 to i64
  %23 = ptrtoint i64* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = mul nsw i32 %26, 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 7
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %100, %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 7
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64*, i64** %5, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %5, align 8
  %51 = load i64, i64* %49, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** %10, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %9, align 4
  store i32 128, i32* %11, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = sext i32 %79 to i64
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64* %84, i64** %81, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  store i64* %87, i64** %10, align 8
  store i32 0, i32* %13, align 4
  br label %99

88:                                               ; preds = %61
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64*, i64** %10, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  store i64 %93, i64* %95, align 8
  store i32 128, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %96 = load i64*, i64** %10, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %10, align 8
  br label %98

98:                                               ; preds = %91, %88
  br label %99

99:                                               ; preds = %98, %69
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  br label %40

103:                                              ; preds = %40
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 128
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64*, i64** %10, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %103
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
