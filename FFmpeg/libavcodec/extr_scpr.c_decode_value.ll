; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decode_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decode_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i64, i64*)*, i32 (i32*, i32*, i64, i64, i64)*, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@BOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i64, i64, i64*)* @decode_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_value(%struct.TYPE_3__* %0, i64* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32* %23, i32** %12, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32* %25, i32** %13, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (i32*, i64, i64*)*, i32 (i32*, i64, i64*)** %31, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 %32(i32* %33, i64 %34, i64* %15)
  store i32 %35, i32* %20, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %20, align 4
  store i32 %38, i32* %6, align 4
  br label %127

39:                                               ; preds = %5
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %16, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %18, align 8
  %52 = add i64 %50, %51
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* %17, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %17, align 8
  br label %59

58:                                               ; preds = %44
  br label %62

59:                                               ; preds = %54
  %60 = load i64, i64* %16, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %16, align 8
  br label %40

62:                                               ; preds = %58, %40
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %6, align 4
  br label %127

68:                                               ; preds = %62
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32 (i32*, i32*, i64, i64, i64)*, i32 (i32*, i32*, i64, i64, i64)** %70, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 %71(i32* %72, i32* %73, i64 %74, i64 %75, i64 %76)
  store i32 %77, i32* %20, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %6, align 4
  br label %127

81:                                               ; preds = %68
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %82, %83
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %84, i64* %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @BOT, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %81
  store i64 0, i64* %14, align 8
  store i32 0, i32* %19, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %9, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load i64*, i64** %8, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = lshr i64 %105, 1
  %107 = add i64 %106, 1
  store i64 %107, i64* %21, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %108, i64* %112, align 8
  %113 = load i64, i64* %21, align 8
  %114 = load i64, i64* %14, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %95

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %81
  %121 = load i64, i64* %14, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64*, i64** %11, align 8
  store i64 %125, i64* %126, align 8
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %120, %79, %66, %37
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
