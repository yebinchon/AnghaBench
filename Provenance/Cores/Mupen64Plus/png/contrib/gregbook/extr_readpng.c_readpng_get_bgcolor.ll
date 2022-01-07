; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readpng.c_readpng_get_bgcolor.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readpng.c_readpng_get_bgcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@png_ptr = common dso_local global i32 0, align 4
@info_ptr = common dso_local global i32 0, align 4
@PNG_INFO_bKGD = common dso_local global i32 0, align 4
@bit_depth = common dso_local global i32 0, align 4
@color_type = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readpng_get_bgcolor(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @png_ptr, align 4
  %10 = call i32 @png_jmpbuf(i32 %9)
  %11 = call i64 @setjmp(i32 %10) #3
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @png_destroy_read_struct(i32* @png_ptr, i32* @info_ptr, i32* null)
  store i32 2, i32* %4, align 4
  br label %100

15:                                               ; preds = %3
  %16 = load i32, i32* @png_ptr, align 4
  %17 = load i32, i32* @info_ptr, align 4
  %18 = load i32, i32* @PNG_INFO_bKGD, align 4
  %19 = call i32 @png_get_valid(i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %100

22:                                               ; preds = %15
  %23 = load i32, i32* @png_ptr, align 4
  %24 = load i32, i32* @info_ptr, align 4
  %25 = call i32 @png_get_bKGD(i32 %23, i32 %24, %struct.TYPE_3__** %8)
  %26 = load i32, i32* @bit_depth, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %99

44:                                               ; preds = %22
  %45 = load i64, i64* @color_type, align 8
  %46 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32, i32* @bit_depth, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %85

51:                                               ; preds = %48
  %52 = load i32, i32* @bit_depth, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 255, i32 0
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %60, i32* %63, align 4
  br label %84

64:                                               ; preds = %51
  %65 = load i32, i32* @bit_depth, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 85, %70
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %71, i32* %74, align 4
  br label %83

75:                                               ; preds = %64
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 17, %78
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %6, align 8
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %67
  br label %84

84:                                               ; preds = %83, %54
  br label %98

85:                                               ; preds = %48, %44
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %85, %84
  br label %99

99:                                               ; preds = %98, %28
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %21, %13
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @png_jmpbuf(i32) #2

declare dso_local i32 @png_destroy_read_struct(i32*, i32*, i32*) #2

declare dso_local i32 @png_get_valid(i32, i32, i32) #2

declare dso_local i32 @png_get_bKGD(i32, i32, %struct.TYPE_3__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
