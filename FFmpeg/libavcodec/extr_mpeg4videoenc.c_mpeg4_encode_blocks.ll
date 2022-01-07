; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_encode_blocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_encode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@AV_CODEC_FLAG2_NO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, [64 x i32]*, i32*, i32**, i32*, i32*)* @mpeg4_encode_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg4_encode_blocks(%struct.TYPE_9__* %0, [64 x i32]* %1, i32* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca [64 x i32]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store [64 x i32]* %1, [64 x i32]** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32**, i32*** %10, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %85

16:                                               ; preds = %6
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AV_CODEC_FLAG2_NO_OUTPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = load [64 x i32]*, [64 x i32]** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %33, i64 %35
  %37 = getelementptr inbounds [64 x i32], [64 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32**, i32*** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @mpeg4_get_block_length(%struct.TYPE_9__* %32, i32* %37, i32 %38, i32 %43, i32* %48)
  %50 = call i32 @skip_put_bits(i32* %31, i32 %49)
  br label %51

51:                                               ; preds = %29
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %26

54:                                               ; preds = %26
  br label %84

55:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %80, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 6
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = load [64 x i32]*, [64 x i32]** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %61, i64 %63
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %64, i64 0, i64 0
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32**, i32*** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @mpeg4_encode_block(%struct.TYPE_9__* %60, i32* %65, i32 %66, i32 %71, i32* %76, i32* %77, i32* %78)
  br label %80

80:                                               ; preds = %59
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %56

83:                                               ; preds = %56
  br label %84

84:                                               ; preds = %83, %54
  br label %142

85:                                               ; preds = %6
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AV_CODEC_FLAG2_NO_OUTPUT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load [64 x i32]*, [64 x i32]** %8, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %102, i64 %104
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %105, i64 0, i64 0
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @mpeg4_get_block_length(%struct.TYPE_9__* %101, i32* %106, i32 %107, i32 0, i32* %111)
  %113 = call i32 @skip_put_bits(i32* %100, i32 %112)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %95

117:                                              ; preds = %95
  br label %141

118:                                              ; preds = %85
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %137, %118
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 6
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = load [64 x i32]*, [64 x i32]** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %124, i64 %126
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %127, i64 0, i64 0
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @mpeg4_encode_block(%struct.TYPE_9__* %123, i32* %128, i32 %129, i32 0, i32* %133, i32* %134, i32* %135)
  br label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %119

140:                                              ; preds = %119
  br label %141

141:                                              ; preds = %140, %117
  br label %142

142:                                              ; preds = %141, %84
  ret void
}

declare dso_local i32 @skip_put_bits(i32*, i32) #1

declare dso_local i32 @mpeg4_get_block_length(%struct.TYPE_9__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @mpeg4_encode_block(%struct.TYPE_9__*, i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
