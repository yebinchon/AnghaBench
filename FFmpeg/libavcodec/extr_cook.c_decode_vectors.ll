; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decode_vectors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decode_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32*, float*)* }
%struct.TYPE_8__ = type { i32 }

@SUBBAND_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32*, float*)* @decode_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_vectors(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store float* %4, float** %10, align 8
  %18 = load i32, i32* @SUBBAND_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @SUBBAND_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %100, %5
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %103

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %43, label %72

43:                                               ; preds = %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @unpack_SQVH(%struct.TYPE_9__* %44, %struct.TYPE_8__* %45, i32 %50, i32* %21, i32* %24)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  store i32 7, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 7, i32* %66, align 4
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %54

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i32, i32* %16, align 4
  %74 = icmp sge i32 %73, 7
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = mul nuw i64 4, %19
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(i32* %21, i32 0, i32 %77)
  %79 = mul nuw i64 4, %23
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i32* %24, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %75, %72
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_9__*, i32, i32, i32*, i32*, float*)*, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32*, float*)** %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load float*, float** %10, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @SUBBAND_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %93, i64 %97
  %99 = call i32 %85(%struct.TYPE_9__* %86, i32 %87, i32 %92, i32* %21, i32* %24, float* %98)
  br label %100

100:                                              ; preds = %82
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %25

103:                                              ; preds = %25
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SUBBAND_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store i32 1, i32* %17, align 4
  br label %115

114:                                              ; preds = %103
  store i32 0, i32* %17, align 4
  br label %115

115:                                              ; preds = %114, %113
  %116 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %17, align 4
  switch i32 %117, label %119 [
    i32 0, label %118
    i32 1, label %118
  ]

118:                                              ; preds = %115, %115
  ret void

119:                                              ; preds = %115
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unpack_SQVH(%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
