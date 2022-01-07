; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_levels.c_ff_h264_guess_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_levels.c_ff_h264_guess_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }

@h264_levels = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ff_h264_guess_level(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 15
  %22 = sdiv i32 %21, 16
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 15
  %25 = sdiv i32 %24, 16
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 66
  br i1 %27, label %34, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 77
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 88
  br label %34

34:                                               ; preds = %31, %28, %6
  %35 = phi i1 [ true, %28 ], [ true, %6 ], [ %33, %31 ]
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %129, %34
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @h264_levels, align 8
  %41 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_5__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %132

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @h264_levels, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %18, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %129

56:                                               ; preds = %52, %43
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @h264_get_br_factor(i32 %62)
  %64 = mul nsw i32 %61, %63
  %65 = icmp sgt i32 %57, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %129

67:                                               ; preds = %56
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %129

76:                                               ; preds = %67
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 8, %82
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %129

86:                                               ; preds = %76
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 8, %92
  %94 = icmp sgt i32 %89, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %129

96:                                               ; preds = %86
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sdiv i32 %105, %108
  %110 = call i32 @FFMIN(i32 %109, i32 16)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %129

115:                                              ; preds = %102
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sdiv i32 %119, %122
  %124 = icmp sgt i32 %116, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %129

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %99, %96
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %7, align 8
  br label %133

129:                                              ; preds = %125, %114, %95, %85, %75, %66, %55
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %38

132:                                              ; preds = %38
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %133

133:                                              ; preds = %132, %127
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %134
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_5__*) #1

declare dso_local i32 @h264_get_br_factor(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
