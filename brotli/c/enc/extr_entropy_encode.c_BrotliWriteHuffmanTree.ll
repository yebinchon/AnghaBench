; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliWriteHuffmanTree.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliWriteHuffmanTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROTLI_INITIAL_REPEATED_CODE_LENGTH = common dso_local global i64 0, align 8
@BROTLI_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliWriteHuffmanTree(i64* %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %19 = load i64, i64* @BROTLI_INITIAL_REPEATED_CODE_LENGTH, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %15, align 8
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %41, %5
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %12, align 8
  %31 = sub i64 %29, %30
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i64, i64* %15, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %15, align 8
  br label %40

39:                                               ; preds = %27
  br label %44

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %23

44:                                               ; preds = %39, %23
  %45 = load i64, i64* %7, align 8
  %46 = icmp ugt i64 %45, 50
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @DecideOverRleUse(i64* %48, i64 %49, i64* %13, i64* %14)
  br label %51

51:                                               ; preds = %47, %44
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %113, %51
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %52
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %16, align 8
  store i64 1, i64* %17, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63, %56
  %67 = load i64, i64* %16, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69, %63
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %18, align 8
  br label %75

75:                                               ; preds = %91, %72
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %18, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %16, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %79, %75
  %87 = phi i1 [ false, %75 ], [ %85, %79 ]
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = load i64, i64* %17, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %17, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %18, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %18, align 8
  br label %75

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %69, %66
  %96 = load i64, i64* %16, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i64, i64* %17, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = call i32 @BrotliWriteHuffmanTreeRepetitionsZeros(i64 %99, i64* %100, i64* %101, i64* %102)
  br label %113

104:                                              ; preds = %95
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64*, i64** %8, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = load i64*, i64** %10, align 8
  %111 = call i32 @BrotliWriteHuffmanTreeRepetitions(i64 %105, i64 %106, i64 %107, i64* %108, i64* %109, i64* %110)
  %112 = load i64, i64* %16, align 8
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %104, %98
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %12, align 8
  br label %52

117:                                              ; preds = %52
  ret void
}

declare dso_local i32 @DecideOverRleUse(i64*, i64, i64*, i64*) #1

declare dso_local i32 @BrotliWriteHuffmanTreeRepetitionsZeros(i64, i64*, i64*, i64*) #1

declare dso_local i32 @BrotliWriteHuffmanTreeRepetitions(i64, i64, i64, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
