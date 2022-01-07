; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_a64multienc.c_to_meta_with_crop.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_a64multienc.c_to_meta_with_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32**, i32* }

@C64YRES = common dso_local global i32 0, align 4
@C64XRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*)* @to_meta_with_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_meta_with_crop(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @C64YRES, align 4
  %19 = call i32 @FFMIN(i32 %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @C64XRES, align 4
  %24 = call i32 @FFMIN(i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %14, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %142, %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @C64YRES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %145

34:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %138, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @C64XRES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %141

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %134, %39
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 8
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @C64YRES, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %137

52:                                               ; preds = %50
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %130, %52
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 8
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @C64XRES, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  br i1 %64, label %65, label %133

65:                                               ; preds = %63
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %73
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 0
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %82, %87
  %89 = add nsw i32 %81, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %79, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %96, %101
  %103 = add nsw i32 %95, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %93, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %92, %106
  %108 = sdiv i32 %107, 2
  store i32 %108, i32* %11, align 4
  br label %123

109:                                              ; preds = %73
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %112, %117
  %119 = add nsw i32 %111, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %110, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %109, %78
  %124 = load i32, i32* %11, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %69, %65
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %6, align 8
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %9, align 4
  br label %54

133:                                              ; preds = %63
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %41

137:                                              ; preds = %50
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 8
  store i32 %140, i32* %7, align 4
  br label %35

141:                                              ; preds = %35
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 8
  store i32 %144, i32* %8, align 4
  br label %30

145:                                              ; preds = %30
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
