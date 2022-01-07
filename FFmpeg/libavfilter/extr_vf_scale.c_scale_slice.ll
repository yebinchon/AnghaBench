; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_scale_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_scale_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32*, i32** }
%struct.SwsContext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.SwsContext*, i32, i32, i32, i32)* @scale_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scale_slice(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, %struct.SwsContext* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.SwsContext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [4 x i32*], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store %struct.SwsContext* %3, %struct.SwsContext** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %17, align 8
  store i32 0, i32* %22, align 4
  br label %29

29:                                               ; preds = %114, %8
  %30 = load i32, i32* %22, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %117

32:                                               ; preds = %29
  %33 = load i32, i32* %22, align 4
  %34 = add nsw i32 %33, 1
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  store i32 %43, i32* %23, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %22, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %22, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %22, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %23, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %22, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %79, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %74, i64 %88
  %90 = load i32, i32* %22, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 %91
  store i32* %89, i32** %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %22, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %100, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %99, i64 %109
  %111 = load i32, i32* %22, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 %112
  store i32* %110, i32** %113, align 8
  br label %114

114:                                              ; preds = %42
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %22, align 4
  br label %29

117:                                              ; preds = %29
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 1
  store i32* %127, i32** %128, align 8
  br label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  store i32* %139, i32** %140, align 8
  br label %141

141:                                              ; preds = %134, %129
  %142 = load %struct.SwsContext*, %struct.SwsContext** %12, align 8
  %143 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %15, align 4
  %147 = sdiv i32 %145, %146
  %148 = load i32, i32* %14, align 4
  %149 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %151 = call i32 @sws_scale(%struct.SwsContext* %142, i32** %143, i32* %144, i32 %147, i32 %148, i32** %149, i32* %150)
  ret i32 %151
}

declare dso_local i32 @sws_scale(%struct.SwsContext*, i32**, i32*, i32, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
