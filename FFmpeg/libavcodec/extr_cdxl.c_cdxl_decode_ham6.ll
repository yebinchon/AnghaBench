; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdxl.c_cdxl_decode_ham6.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdxl.c_cdxl_decode_ham6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*)* @cdxl_decode_ham6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdxl_decode_ham6(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %29 = call i32 @import_palette(%struct.TYPE_8__* %27, i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @import_format(%struct.TYPE_8__* %30, i32 %33, i32* %36)
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %120, %2
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %123

44:                                               ; preds = %38
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = and i32 %46, 16711680
  store i32 %47, i32* %7, align 4
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = and i32 %49, 65280
  store i32 %50, i32* %8, align 4
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = and i32 %52, 255
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %108, %44
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %54
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  %63 = load i32, i32* %61, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = ashr i32 %64, 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, 15
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  switch i32 %68, label %96 [
    i32 0, label %69
    i32 1, label %85
    i32 2, label %88
    i32 3, label %92
  ]

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 16711680
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 65280
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 255
  store i32 %84, i32* %9, align 4
  br label %96

85:                                               ; preds = %60
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %86, 17
  store i32 %87, i32* %9, align 4
  br label %96

88:                                               ; preds = %60
  %89 = load i32, i32* %12, align 4
  %90 = mul nsw i32 %89, 17
  %91 = shl i32 %90, 16
  store i32 %91, i32* %7, align 4
  br label %96

92:                                               ; preds = %60
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %93, 17
  %95 = shl i32 %94, 8
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %60, %92, %88, %85, %69
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @AV_WL24(i32* %101, i32 %106)
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %54

111:                                              ; preds = %54
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %11, align 8
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %38

123:                                              ; preds = %38
  ret void
}

declare dso_local i32 @import_palette(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @import_format(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @AV_WL24(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
