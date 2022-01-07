; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_i_pred_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_i_pred_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32**, i32*, i64, i64 }

@vc1_i_pred_dc.dcpred = internal constant [32 x i32] [i32 -1, i32 1024, i32 512, i32 341, i32 256, i32 205, i32 171, i32 146, i32 128, i32 114, i32 102, i32 93, i32 85, i32 79, i32 73, i32 68, i32 64, i32 60, i32 57, i32 54, i32 51, i32 49, i32 47, i32 45, i32 43, i32 41, i32 39, i32 38, i32 37, i32 35, i32 34, i32 33], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32**, i32*)* @vc1_i_pred_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_i_pred_dc(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %18, align 4
  br label %30

26:                                               ; preds = %6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  store i32* %51, i32** %19, align 8
  %52 = load i32*, i32** %19, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 -1, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %19, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 0, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 9
  br i1 %68, label %72, label %69

69:                                               ; preds = %30
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %105, label %72

72:                                               ; preds = %69, %30
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [32 x i32], [32 x i32]* @vc1_i_pred_dc.dcpred, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %83, %80, %77, %72
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 3
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [32 x i32], [32 x i32]* @vc1_i_pred_dc.dcpred, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %15, align 4
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %99, %96, %93, %88
  br label %130

105:                                              ; preds = %69
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 2
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 3
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %116, %113, %110, %105
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 3
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %128, %125, %122, %117
  br label %130

130:                                              ; preds = %129, %104
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 %131, %132
  %134 = call i64 @abs(i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i64 @abs(i32 %137)
  %139 = icmp sle i64 %134, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %17, align 4
  %142 = load i32*, i32** %12, align 8
  store i32 1, i32* %142, align 4
  br label %146

143:                                              ; preds = %130
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %17, align 4
  %145 = load i32*, i32** %12, align 8
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32*, i32** %19, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32**, i32*** %11, align 8
  store i32* %148, i32** %149, align 8
  %150 = load i32, i32* %17, align 4
  ret i32 %150
}

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
