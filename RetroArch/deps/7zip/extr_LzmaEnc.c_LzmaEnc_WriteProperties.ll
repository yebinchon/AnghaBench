; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_WriteProperties.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_WriteProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@LZMA_PROPS_SIZE = common dso_local global i64 0, align 8
@SZ_ERROR_PARAM = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_WriteProperties(i64 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LZMA_PROPS_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %22, i32* %4, align 4
  br label %103

23:                                               ; preds = %3
  %24 = load i64, i64* @LZMA_PROPS_SIZE, align 8
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = mul nsw i32 %33, 9
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = trunc i64 %39 to i8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %43, 4194304
  br i1 %44, label %45, label %58

45:                                               ; preds = %23
  store i32 1048575, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 -1, %47
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %50, %45
  br label %83

58:                                               ; preds = %23
  store i32 11, i32* %9, align 4
  br label %59

59:                                               ; preds = %79, %58
  %60 = load i32, i32* %9, align 4
  %61 = icmp ule i32 %60, 30
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = shl i32 2, %64
  %66 = icmp sle i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 2, %68
  store i32 %69, i32* %10, align 4
  br label %82

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 3, %72
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 3, %76
  store i32 %77, i32* %10, align 4
  br label %82

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %59

82:                                               ; preds = %75, %67, %59
  br label %83

83:                                               ; preds = %82, %57
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = mul i32 8, %89
  %91 = ashr i32 %88, %90
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add i32 1, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %92, i8* %97, align 1
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %84

101:                                              ; preds = %84
  %102 = load i32, i32* @SZ_OK, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
