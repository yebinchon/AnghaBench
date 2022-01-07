; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_setup_spatial_predictor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_setup_spatial_predictor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32*, i32*, i32)* }

@x8_setup_spatial_predictor.prediction_table = internal constant [3 x [12 x i32]] [[12 x i32] [i32 0, i32 8, i32 4, i32 10, i32 11, i32 2, i32 6, i32 9, i32 1, i32 3, i32 5, i32 7], [12 x i32] [i32 4, i32 0, i32 8, i32 11, i32 10, i32 3, i32 5, i32 2, i32 6, i32 9, i32 1, i32 7], [12 x i32] [i32 8, i32 0, i32 4, i32 10, i32 11, i32 1, i32 7, i32 2, i32 6, i32 9, i32 3, i32 5]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @x8_setup_spatial_predictor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x8_setup_spatial_predictor(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32, i32, i32*, i32*, i32)*, i32 (i32, i32, i32, i32*, i32*, i32)** %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 10
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %12(i32 %19, i32 %22, i32 %33, i32* %6, i32* %7, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %78

62:                                               ; preds = %59, %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 9
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 6899
  %74 = ashr i32 %73, 17
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %67, %62
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %161

82:                                               ; preds = %78
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 3
  %87 = zext i1 %86 to i32
  %88 = call i32 @av_assert2(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 2, %92
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %82
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 3
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 11, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32 10, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %109
  br label %121

118:                                              ; preds = %95
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %117
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 7
  store i32 0, i32* %123, align 4
  br label %160

124:                                              ; preds = %82
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = call i32 @x8_get_orient_vlc(%struct.TYPE_8__* %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  br label %161

134:                                              ; preds = %124
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %137, 12
  %139 = zext i1 %138 to i32
  %140 = call i32 @av_assert2(i32 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %143, 3
  %145 = zext i1 %144 to i32
  %146 = call i32 @av_assert2(i32 %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x [12 x i32]], [3 x [12 x i32]]* @x8_setup_spatial_predictor.prediction_table, i64 0, i64 %150
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [12 x i32], [12 x i32]* %151, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %134, %121
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %133, %81
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @x8_get_orient_vlc(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
