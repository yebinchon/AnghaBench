; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_writeLZ77data.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_writeLZ77data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@FIRST_LENGTH_CODE_INDEX = common dso_local global i32 0, align 4
@LENGTHEXTRA = common dso_local global i32* null, align 8
@DISTANCEEXTRA = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, %struct.TYPE_3__*, i32*, i32*)* @writeLZ77data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeLZ77data(i64* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %100, %5
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %103

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @HuffmanTree_getCode(i32* %35, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @HuffmanTree_getLength(i32* %38, i32 %39)
  %41 = call i32 @addHuffmanSymbol(i64* %33, i32* %34, i32 %37, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ugt i32 %42, 256
  br i1 %43, label %44, label %99

44:                                               ; preds = %26
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @FIRST_LENGTH_CODE_INDEX, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** @LENGTHEXTRA, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %11, align 8
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %17, align 4
  %68 = load i32*, i32** @DISTANCEEXTRA, align 8
  %69 = load i32, i32* %17, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %18, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %19, align 4
  %80 = load i64*, i64** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @addBitsToStream(i64* %80, i32* %81, i32 %82, i32 %83)
  %85 = load i64*, i64** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @HuffmanTree_getCode(i32* %87, i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @HuffmanTree_getLength(i32* %90, i32 %91)
  %93 = call i32 @addHuffmanSymbol(i64* %85, i32* %86, i32 %89, i32 %92)
  %94 = load i64*, i64** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @addBitsToStream(i64* %94, i32* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %44, %26
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %11, align 8
  br label %20

103:                                              ; preds = %20
  ret void
}

declare dso_local i32 @addHuffmanSymbol(i64*, i32*, i32, i32) #1

declare dso_local i32 @HuffmanTree_getCode(i32*, i32) #1

declare dso_local i32 @HuffmanTree_getLength(i32*, i32) #1

declare dso_local i32 @addBitsToStream(i64*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
