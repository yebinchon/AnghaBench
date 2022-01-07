; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_inter_blocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_inter_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32*, i32*)* @decode_inter_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_inter_blocks(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32* %25, i32 0, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(i32* %32, i32 0, i32 %35)
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %114, %5
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 64
  br i1 %39, label %40, label %117

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  store i32* %50, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %112, %40
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %113

57:                                               ; preds = %51
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 @FFMIN(i32 %63, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = mul nsw i32 %73, 64
  %75 = load i32*, i32** %16, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %16, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %112

82:                                               ; preds = %57
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 1
  %93 = call i32 @read_code(i32* %83, i32* %84, i32* %13, i32* %88, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %6, align 4
  br label %118

98:                                               ; preds = %82
  %99 = load i32, i32* %13, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %99, %104
  %106 = load i32*, i32** %16, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 64
  store i32* %109, i32** %16, align 8
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %98, %61
  br label %51

113:                                              ; preds = %51
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %37

117:                                              ; preds = %37
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %96
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @read_code(i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
