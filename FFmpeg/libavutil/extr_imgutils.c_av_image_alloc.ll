; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@FF_PSEUDOPAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Formats with a palette require a minimum alignment of 4\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_image_alloc(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %14, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %200

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @av_image_check_size(i32 %26, i32 %27, i32 0, i32* null)
  store i32 %28, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %7, align 4
  br label %200

32:                                               ; preds = %25
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 7
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @FFALIGN(i32 %38, i32 8)
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  %44 = call i32 @av_image_fill_linesizes(i32* %33, i32 %34, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %7, align 4
  br label %200

48:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @FFALIGN(i32 %57, i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load i32**, i32*** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @av_image_fill_pointers(i32** %68, i32 %69, i32 %70, i32* null, i32* %71)
  store i32 %72, i32* %16, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %7, align 4
  br label %200

76:                                               ; preds = %67
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32* @av_malloc(i32 %79)
  store i32* %80, i32** %17, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %7, align 4
  br label %200

86:                                               ; preds = %76
  %87 = load i32**, i32*** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @av_image_fill_pointers(i32** %87, i32 %88, i32 %89, i32* %90, i32* %91)
  store i32 %92, i32* %16, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @av_free(i32* %95)
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %7, align 4
  br label %200

98:                                               ; preds = %86
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FF_PSEUDOPAL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %105
  %113 = load i32**, i32*** %8, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %112, %98
  %118 = load i32**, i32*** %8, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @avpriv_set_systematic_pal2(i32* %120, i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 4
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load i32, i32* @AV_LOG_ERROR, align 4
  %127 = call i32 @av_log(i32* null, i32 %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = call i32 @AVERROR(i32 %128)
  store i32 %129, i32* %7, align 4
  br label %200

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %112, %105
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %131
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FF_PSEUDOPAL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %198

145:                                              ; preds = %138, %131
  %146 = load i32**, i32*** %8, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %198

150:                                              ; preds = %145
  %151 = load i32**, i32*** %8, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32**, i32*** %8, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 0
  %156 = load i32*, i32** %155, align 8
  %157 = ptrtoint i32* %153 to i64
  %158 = ptrtoint i32* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 4
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %11, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = icmp sgt i64 %160, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %150
  %169 = load i32**, i32*** %8, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %11, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %171, i64 %177
  %179 = load i32**, i32*** %8, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32**, i32*** %8, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 0
  %184 = load i32*, i32** %183, align 8
  %185 = ptrtoint i32* %181 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = sub nsw i64 %188, %194
  %196 = trunc i64 %195 to i32
  %197 = call i32 @memset(i32* %178, i32 0, i32 %196)
  br label %198

198:                                              ; preds = %168, %150, %145, %138
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %198, %125, %94, %83, %74, %46, %30, %22
  %201 = load i32, i32* %7, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_3__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_check_size(i32, i32, i32, i32*) #1

declare dso_local i32 @av_image_fill_linesizes(i32*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_image_fill_pointers(i32**, i32, i32, i32*, i32*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @avpriv_set_systematic_pal2(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
