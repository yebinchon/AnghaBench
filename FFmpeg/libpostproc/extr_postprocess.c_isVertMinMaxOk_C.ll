; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_isVertMinMaxOk_C.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_isVertMinMaxOk_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @isVertMinMaxOk_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isVertMinMaxOk_C(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul nsw i32 %9, 4
  %11 = load i64*, i64** %5, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64* %13, i64** %5, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %133, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BLOCK_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %136

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 0, %21
  %23 = add nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %19, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 5, %29
  %31 = add nsw i32 %28, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %27, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %26, %34
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 2, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 4, %41
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %137

45:                                               ; preds = %18
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 1, %47
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %46, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 1, %56
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 7, %58
  %60 = add nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %55, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %54, %63
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 2, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 4, %70
  %72 = icmp ugt i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %137

74:                                               ; preds = %45
  %75 = load i64*, i64** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 2, %76
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 4, %78
  %80 = add nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %75, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 2, %85
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 1, %87
  %89 = add nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %84, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %83, %92
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 2, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 4, %99
  %101 = icmp ugt i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %137

103:                                              ; preds = %74
  %104 = load i64*, i64** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 3, %105
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 6, %107
  %109 = add nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %104, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 3, %114
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 3, %116
  %118 = add nsw i32 %115, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %113, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %112, %121
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 2, %123
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %122, %125
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 4, %128
  %130 = icmp ugt i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %137

132:                                              ; preds = %103
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 4
  store i32 %135, i32* %8, align 4
  br label %14

136:                                              ; preds = %14
  store i32 1, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %131, %102, %73, %44
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
