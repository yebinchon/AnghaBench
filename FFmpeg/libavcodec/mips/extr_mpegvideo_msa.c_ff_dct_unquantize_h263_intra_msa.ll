; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_mpegvideo_msa.c_ff_dct_unquantize_h263_intra_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_mpegvideo_msa.c_ff_dct_unquantize_h263_intra_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_dct_unquantize_h263_intra_msa(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi i1 [ true, %4 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @av_assert2(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = shl i64 %28, 1
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  br label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 1
  %53 = or i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %55

54:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i64 63, i64* %11, align 8
  br label %74

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %65, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %61, %60
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @h263_dct_unquantize_msa(i32* %75, i64 %76, i64 %77, i64 %78, i32 1)
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @h263_dct_unquantize_msa(i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
