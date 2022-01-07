; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_bKGD.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_bKGD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8, i8, i8, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LCT_PALETTE = common dso_local global i64 0, align 8
@LCT_GREY = common dso_local global i64 0, align 8
@LCT_GREY_ALPHA = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @readChunk_bKGD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readChunk_bKGD(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LCT_PALETTE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 43, i32* %4, align 4
  br label %131

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i8 %23, i8* %25, align 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i8 %23, i8* %27, align 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8 %23, i8* %29, align 4
  br label %130

30:                                               ; preds = %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LCT_GREY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LCT_GREY_ALPHA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %37, %30
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 44, i32* %4, align 4
  br label %131

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul nsw i32 256, %54
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %55, %59
  %61 = trunc i32 %60 to i8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store i8 %61, i8* %63, align 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i8 %61, i8* %65, align 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i8 %61, i8* %67, align 4
  br label %129

68:                                               ; preds = %37
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LCT_RGB, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LCT_RGBA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %128

82:                                               ; preds = %75, %68
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 6
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 45, i32* %4, align 4
  br label %131

86:                                               ; preds = %82
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = mul nsw i32 256, %92
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %93, %97
  %99 = trunc i32 %98 to i8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i8 %99, i8* %101, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = mul nsw i32 256, %105
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %106, %110
  %112 = trunc i32 %111 to i8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i8 %112, i8* %114, align 1
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = mul nsw i32 256, %118
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 5
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %119, %123
  %125 = trunc i32 %124 to i8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  store i8 %125, i8* %127, align 2
  br label %128

128:                                              ; preds = %86, %75
  br label %129

129:                                              ; preds = %128, %48
  br label %130

130:                                              ; preds = %129, %18
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %85, %47, %17
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
