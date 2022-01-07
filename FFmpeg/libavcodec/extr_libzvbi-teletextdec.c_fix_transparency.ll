; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_fix_transparency.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_fix_transparency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i32** }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@BITMAP_CHAR_HEIGHT = common dso_local global i32 0, align 4
@BITMAP_CHAR_WIDTH = common dso_local global i32 0, align 4
@VBI_TRANSPARENT_BLACK = common dso_local global i32 0, align 4
@VBI_NB_COLORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_8__*, i32, i32, i32)* @fix_transparency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_transparency(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %141, %6
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %144

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %28, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  store i32* %36, i32** %14, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @BITMAP_CHAR_HEIGHT, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %49
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %15, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %55
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %16, align 8
  br label %57

57:                                               ; preds = %137, %22
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %60 = icmp ult %struct.TYPE_9__* %58, %59
  br i1 %60, label %61, label %140

61:                                               ; preds = %57
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* @BITMAP_CHAR_WIDTH, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %17, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %135 [
    i32 128, label %69
    i32 131, label %74
    i32 130, label %81
    i32 129, label %115
  ]

69:                                               ; preds = %61
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* @VBI_TRANSPARENT_BLACK, align 4
  %72 = load i32, i32* @BITMAP_CHAR_WIDTH, align 4
  %73 = call i32 @memset(i32* %70, i32 %71, i32 %72)
  br label %135

74:                                               ; preds = %61
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %135

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %61, %80
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 255
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %109, %91
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = icmp ult i32* %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* @VBI_NB_COLORS, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %96
  br label %109

109:                                              ; preds = %108
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %14, align 8
  br label %92

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %86
  br label %135

114:                                              ; preds = %81
  br label %115

115:                                              ; preds = %61, %114
  br label %116

116:                                              ; preds = %131, %115
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = icmp ult i32* %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @VBI_TRANSPARENT_BLACK, align 4
  %129 = load i32*, i32** %14, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %120
  br label %131

131:                                              ; preds = %130
  %132 = load i32*, i32** %14, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %14, align 8
  br label %116

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %61, %134, %113, %79, %69
  %136 = load i32*, i32** %17, align 8
  store i32* %136, i32** %14, align 8
  br label %137

137:                                              ; preds = %135
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 1
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %15, align 8
  br label %57

140:                                              ; preds = %57
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %18

144:                                              ; preds = %18
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
