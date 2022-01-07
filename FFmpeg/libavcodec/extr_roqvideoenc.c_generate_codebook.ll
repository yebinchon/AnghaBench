; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_generate_codebook.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_generate_codebook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@CHROMA_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32, %struct.TYPE_7__*, i32, i32)* @generate_codebook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_codebook(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, %struct.TYPE_7__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 4
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = mul nsw i32 6, %28
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32* @av_malloc_array(i32 %29, i32 %33)
  store i32* %34, i32** %22, align 8
  %35 = load i32*, i32** %22, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %8, align 4
  br label %158

40:                                               ; preds = %7
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* %20, align 4
  %45 = mul nsw i32 6, %44
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32* @av_malloc_array(i32 %45, i32 %49)
  store i32* %50, i32** %23, align 8
  %51 = load i32*, i32** %23, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %19, align 4
  br label %148

56:                                               ; preds = %43
  br label %61

57:                                               ; preds = %40
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %23, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %20, align 4
  %64 = mul nsw i32 6, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %22, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %23, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = call i32 @avpriv_init_elbg(i32* %62, i32 %64, i32 %65, i32* %66, i32 %67, i32 1, i32* %68, i32* %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %148

75:                                               ; preds = %61
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %20, align 4
  %78 = mul nsw i32 6, %77
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %22, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %23, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 @avpriv_do_elbg(i32* %76, i32 %78, i32 %79, i32* %80, i32 %81, i32 1, i32* %82, i32* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %148

89:                                               ; preds = %75
  %90 = load i32*, i32** %22, align 8
  store i32* %90, i32** %21, align 8
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %144, %89
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %147

95:                                               ; preds = %91
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %140, %95
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %96
  store i32 0, i32* %17, align 4
  br label %101

101:                                              ; preds = %114, %100
  %102 = load i32, i32* %17, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32*, i32** %21, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %21, align 8
  %107 = load i32, i32* %105, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load i32*, i32** %21, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %21, align 8
  %120 = load i32, i32* %118, align 4
  %121 = load i32, i32* @CHROMA_BIAS, align 4
  %122 = sdiv i32 %121, 2
  %123 = add nsw i32 %120, %122
  %124 = load i32, i32* @CHROMA_BIAS, align 4
  %125 = sdiv i32 %123, %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32*, i32** %21, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %21, align 8
  %130 = load i32, i32* %128, align 4
  %131 = load i32, i32* @CHROMA_BIAS, align 4
  %132 = sdiv i32 %131, 2
  %133 = add nsw i32 %130, %132
  %134 = load i32, i32* @CHROMA_BIAS, align 4
  %135 = sdiv i32 %133, %134
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 1
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %13, align 8
  br label %140

140:                                              ; preds = %117
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %18, align 4
  br label %96

143:                                              ; preds = %96
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %16, align 4
  br label %91

147:                                              ; preds = %91
  br label %148

148:                                              ; preds = %147, %88, %74, %53
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32*, i32** %23, align 8
  %153 = call i32 @av_free(i32* %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32*, i32** %22, align 8
  %156 = call i32 @av_free(i32* %155)
  %157 = load i32, i32* %19, align 4
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %154, %37
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_init_elbg(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @avpriv_do_elbg(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
