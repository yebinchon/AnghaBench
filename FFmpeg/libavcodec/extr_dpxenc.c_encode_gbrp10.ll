; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpxenc.c_encode_gbrp10.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpxenc.c_encode_gbrp10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*)* @encode_gbrp10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_gbrp10(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca [3 x i32*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %16, align 8
  %22 = getelementptr inbounds i32*, i32** %16, i64 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %22, align 8
  %28 = getelementptr inbounds i32*, i32** %22, i64 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %28, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %137, %3
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %140

40:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %112, %40
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %115

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %54 = load i32*, i32** %53, align 16
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 2, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = call i32 @AV_RB16(i32* %58)
  %60 = shl i32 %59, 12
  %61 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i32 @AV_RB16(i32* %66)
  %68 = shl i32 %67, 2
  %69 = or i32 %60, %68
  %70 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  %71 = load i32*, i32** %70, align 16
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 2, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = call i32 @AV_RB16(i32* %75)
  %77 = shl i32 %76, 22
  %78 = or i32 %69, %77
  store i32 %78, i32* %12, align 4
  br label %106

79:                                               ; preds = %47
  %80 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %81 = load i32*, i32** %80, align 16
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 2, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = call i32 @AV_RL16(i32* %85)
  %87 = shl i32 %86, 12
  %88 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 2, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = call i32 @AV_RL16(i32* %93)
  %95 = shl i32 %94, 2
  %96 = or i32 %87, %95
  %97 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  %98 = load i32*, i32** %97, align 16
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 2, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = call i32 @AV_RL16(i32* %102)
  %104 = shl i32 %103, 22
  %105 = or i32 %96, %104
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %79, %52
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @write32(i32* %107, i32 %108)
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32* %111, i32** %6, align 8
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %41

115:                                              ; preds = %41
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = sext i32 %126 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %129, align 8
  br label %133

133:                                              ; preds = %119
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %116

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %34

140:                                              ; preds = %34
  ret void
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
