; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_11__*, i32, i32, i32, i32)* @decode_region_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_region_intra(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %14, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_11__*, i32*)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = call i32 %29(%struct.TYPE_11__* %30, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %125, label %36

36:                                               ; preds = %6
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %20, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %21, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %20, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %22, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %21, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32* %65, i32** %23, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = call i32 @decode_pixel(%struct.TYPE_11__* %66, i32* %68, i32* null, i32 0, i32 0)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %36
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %7, align 4
  br label %151

74:                                               ; preds = %36
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %113, %74
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %82
  %87 = load i32*, i32** %22, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @memset(i32* %87, i32 %88, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %86
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %108, %95
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 %98, 3
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i32*, i32** %23, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @AV_WB24(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 3
  store i32 %110, i32* %17, align 4
  br label %96

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %86
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32*, i32** %22, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %22, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load i32*, i32** %23, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %23, align 8
  br label %82

124:                                              ; preds = %82
  br label %150

125:                                              ; preds = %6
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = call i32 @decode_region(%struct.TYPE_11__* %126, i32* %129, i32* %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %139, i32 %142, i32* %144, i32* %148)
  store i32 %149, i32* %7, align 4
  br label %151

150:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %125, %72
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @decode_pixel(%struct.TYPE_11__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @decode_region(%struct.TYPE_11__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
