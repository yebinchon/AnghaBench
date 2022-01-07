; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_intra_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_intra_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32*, i32*)* @decode_intra_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_intra_block(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %12, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1024
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @memset(i32* %33, i32 0, i32 8)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %5
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  br label %59

42:                                               ; preds = %5
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 1
  %49 = call i32 @read_code(i32* %43, i32* %44, i32* %15, i32* %17, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %6, align 4
  br label %124

54:                                               ; preds = %42
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %38
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = add nsw i32 %60, %66
  %68 = load i32*, i32** %14, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  store i32 1, i32* %18, align 4
  br label %73

73:                                               ; preds = %122, %59
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 64
  br i1 %75, label %76, label %123

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %18, align 4
  %84 = sub nsw i32 64, %83
  %85 = call i32 @FFMIN(i32 %82, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %122

93:                                               ; preds = %76
  %94 = load i32*, i32** %8, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 1
  %100 = call i32 @read_code(i32* %94, i32* %95, i32* %15, i32* %17, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %6, align 4
  br label %124

105:                                              ; preds = %93
  %106 = load i32, i32* %15, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %106, %111
  %113 = load i32*, i32** %14, align 8
  %114 = load i64*, i64** %12, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  store i32 %112, i32* %119, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %105, %80
  br label %73

123:                                              ; preds = %73
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %103, %52
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @read_code(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
