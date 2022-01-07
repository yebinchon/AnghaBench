; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_deflateFixed.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_deflateFixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32*, i8*, i64, i64, %struct.TYPE_3__*, i32)* @deflateFixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflateFixed(i32* %0, i64* %1, i32* %2, i8* %3, i64 %4, i64 %5, %struct.TYPE_3__* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %24 = call i32 @HuffmanTree_init(i32* %17)
  %25 = call i32 @HuffmanTree_init(i32* %18)
  %26 = call i32 @generateFixedLitLenTree(i32* %17)
  %27 = call i32 @generateFixedDistanceTree(i32* %18)
  %28 = load i64*, i64** %10, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %19, align 4
  %31 = call i32 @addBitToStream(i64* %28, i32* %29, i32 %30)
  %32 = load i64*, i64** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @addBitToStream(i64* %32, i32* %33, i32 1)
  %35 = load i64*, i64** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @addBitToStream(i64* %35, i32* %36, i32 0)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %8
  %43 = call i32 @uivector_init(i32* %22)
  %44 = load i32*, i32** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @encodeLZ77(i32* %22, i32* %44, i8* %45, i64 %46, i64 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %42
  %64 = load i64*, i64** %10, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @writeLZ77data(i64* %64, i32* %65, i32* %22, i32* %17, i32* %18)
  br label %67

67:                                               ; preds = %63, %42
  %68 = call i32 @uivector_cleanup(i32* %22)
  br label %93

69:                                               ; preds = %8
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %21, align 8
  br label %71

71:                                               ; preds = %89, %69
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i64*, i64** %10, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i64, i64* %21, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @HuffmanTree_getCode(i32* %17, i8 zeroext %81)
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %21, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @HuffmanTree_getLength(i32* %17, i8 zeroext %86)
  %88 = call i32 @addHuffmanSymbol(i64* %76, i32* %77, i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i64, i64* %21, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %21, align 8
  br label %71

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i64*, i64** %10, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @HuffmanTree_getCode(i32* %17, i8 zeroext 0)
  %100 = call i32 @HuffmanTree_getLength(i32* %17, i8 zeroext 0)
  %101 = call i32 @addHuffmanSymbol(i64* %97, i32* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = call i32 @HuffmanTree_cleanup(i32* %17)
  %104 = call i32 @HuffmanTree_cleanup(i32* %18)
  %105 = load i32, i32* %20, align 4
  ret i32 %105
}

declare dso_local i32 @HuffmanTree_init(i32*) #1

declare dso_local i32 @generateFixedLitLenTree(i32*) #1

declare dso_local i32 @generateFixedDistanceTree(i32*) #1

declare dso_local i32 @addBitToStream(i64*, i32*, i32) #1

declare dso_local i32 @uivector_init(i32*) #1

declare dso_local i32 @encodeLZ77(i32*, i32*, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @writeLZ77data(i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @uivector_cleanup(i32*) #1

declare dso_local i32 @addHuffmanSymbol(i64*, i32*, i32, i32) #1

declare dso_local i32 @HuffmanTree_getCode(i32*, i8 zeroext) #1

declare dso_local i32 @HuffmanTree_getLength(i32*, i8 zeroext) #1

declare dso_local i32 @HuffmanTree_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
