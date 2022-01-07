; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_copy_to_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_copy_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_image_copy_to_buffer(i32* %0, i32 %1, i32** %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32** %2, i32*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call i32 @av_image_get_buffer_size(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %34)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %23, align 8
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %8
  %40 = load i32, i32* %22, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %39, %8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %9, align 4
  br label %177

48:                                               ; preds = %42
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %18, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @FFMAX(i32 %63, i32 %64)
  store i32 %65, i32* %20, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  br label %49

69:                                               ; preds = %49
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @av_image_fill_linesizes(i32* %72, i32 %73, i32 %74)
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %24, align 4
  %77 = icmp sge i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @av_assert0(i32 %78)
  store i32 0, i32* %18, align 4
  br label %80

80:                                               ; preds = %142, %69
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %145

84:                                               ; preds = %80
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %94

90:                                               ; preds = %87, %84
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  br label %95

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %90
  %96 = phi i32 [ %93, %90 ], [ 0, %94 ]
  store i32 %96, i32* %26, align 4
  %97 = load i32**, i32*** %12, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %27, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %26, align 4
  %104 = shl i32 1, %103
  %105 = add nsw i32 %102, %104
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %26, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %25, align 4
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %138, %95
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %25, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %27, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memcpy(i32* %114, i32* %115, i32 %119)
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @FFALIGN(i32 %124, i32 %125)
  %127 = load i32*, i32** %10, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %10, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %27, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %27, align 8
  br label %138

138:                                              ; preds = %113
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %109

141:                                              ; preds = %109
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %18, align 4
  br label %80

145:                                              ; preds = %80
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %145
  %153 = load i32*, i32** %10, align 8
  store i32* %153, i32** %28, align 8
  store i32 0, i32* %18, align 4
  br label %154

154:                                              ; preds = %171, %152
  %155 = load i32, i32* %18, align 4
  %156 = icmp slt i32 %155, 256
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = load i32*, i32** %28, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32**, i32*** %12, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %18, align 4
  %166 = mul nsw i32 4, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = call i32 @AV_RN32(i32* %168)
  %170 = call i32 @AV_WL32(i32* %161, i32 %169)
  br label %171

171:                                              ; preds = %157
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %154

174:                                              ; preds = %154
  br label %175

175:                                              ; preds = %174, %145
  %176 = load i32, i32* %22, align 4
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %175, %45
  %178 = load i32, i32* %9, align 4
  ret i32 %178
}

declare dso_local i32 @av_image_get_buffer_size(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_image_fill_linesizes(i32*, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @AV_RN32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
