; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_cabac.c_decode_cabac_mb_mvd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_cabac.c_decode_cabac_mb_mvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }

@INT_BIT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"overflow in decode_cabac_mb_mvd\0A\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32*)* @decode_cabac_mb_mvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cabac_mb_mvd(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 3
  %20 = load i32, i32* @INT_BIT, align 4
  %21 = sub nsw i32 %20, 1
  %22 = ashr i32 %19, %21
  %23 = add nsw i32 %17, %22
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 33
  %26 = load i32, i32* @INT_BIT, align 4
  %27 = sub nsw i32 %26, 1
  %28 = ashr i32 %25, %27
  %29 = add nsw i32 %23, %28
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %16, i64 %31
  %33 = call i64 @get_cabac(i32* %13, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %4
  %36 = load i32*, i32** %9, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %124

37:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 3
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %62, %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 9
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i64 @get_cabac(i32* %45, i32* %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %43, %40
  %55 = phi i1 [ false, %40 ], [ %53, %43 ]
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %40

65:                                               ; preds = %54
  %66 = load i32, i32* %10, align 4
  %67 = icmp sge i32 %66, 9
  br i1 %67, label %68, label %115

68:                                               ; preds = %65
  store i32 3, i32* %11, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @get_cabac_bypass(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 1, %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sgt i32 %81, 24
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = call i32 @av_log(i32 %88, i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @INT_MIN, align 4
  store i32 %91, i32* %5, align 4
  br label %124

92:                                               ; preds = %74
  br label %69

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %98, %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %11, align 4
  %97 = icmp ne i32 %95, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @get_cabac_bypass(i32* %100)
  %102 = load i32, i32* %11, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %94

106:                                              ; preds = %94
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 70
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  br label %112

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 70, %111 ]
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  br label %118

115:                                              ; preds = %65
  %116 = load i32, i32* %10, align 4
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 0, %121
  %123 = call i32 @get_cabac_bypass_sign(i32* %120, i32 %122)
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %118, %83, %35
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @get_cabac(i32*, i32*) #1

declare dso_local i32 @get_cabac_bypass(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_cabac_bypass_sign(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
