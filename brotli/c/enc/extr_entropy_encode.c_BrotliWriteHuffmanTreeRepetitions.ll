; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliWriteHuffmanTreeRepetitions.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliWriteHuffmanTreeRepetitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROTLI_TRUE = common dso_local global i64 0, align 8
@BROTLI_REPEAT_PREVIOUS_CODE_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64*, i64*, i64*)* @BrotliWriteHuffmanTreeRepetitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BrotliWriteHuffmanTreeRepetitions(i64 %0, i64 %1, i64 %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ugt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BROTLI_DCHECK(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 %23, i64* %27, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = load i64*, i64** %10, align 8
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %22, %6
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 7
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %41, i64* %45, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %40, %37
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %56, 3
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %68, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %63
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %13, align 8
  br label %59

79:                                               ; preds = %59
  br label %122

80:                                               ; preds = %55
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %83, 3
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %108, %80
  %86 = load i64, i64* @BROTLI_TRUE, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %85
  %89 = load i64, i64* @BROTLI_REPEAT_PREVIOUS_CODE_LENGTH, align 8
  %90 = load i64*, i64** %11, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %89, i64* %93, align 8
  %94 = load i64, i64* %9, align 8
  %95 = and i64 %94, 3
  %96 = load i64*, i64** %12, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %95, i64* %99, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %9, align 8
  %104 = lshr i64 %103, 2
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %88
  br label %111

108:                                              ; preds = %88
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %9, align 8
  br label %85

111:                                              ; preds = %107, %85
  %112 = load i64*, i64** %11, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @Reverse(i64* %112, i64 %113, i64 %115)
  %117 = load i64*, i64** %12, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64*, i64** %10, align 8
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @Reverse(i64* %117, i64 %118, i64 %120)
  br label %122

122:                                              ; preds = %111, %79
  ret void
}

declare dso_local i32 @BROTLI_DCHECK(i32) #1

declare dso_local i32 @Reverse(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
