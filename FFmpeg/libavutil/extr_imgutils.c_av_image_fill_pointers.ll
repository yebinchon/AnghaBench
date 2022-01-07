; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_fill_pointers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_fill_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@FF_PSEUDOPAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_image_fill_pointers(i32** %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  %20 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 16, i1 false)
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %16, align 8
  %23 = load i32**, i32*** %7, align 8
  %24 = call i32 @memset(i32** %23, i32 0, i32 32)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %197

37:                                               ; preds = %27
  %38 = load i32*, i32** %10, align 8
  %39 = load i32**, i32*** %7, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @INT_MAX, align 4
  %45 = sub nsw i32 %44, 1024
  %46 = load i32, i32* %9, align 4
  %47 = sdiv i32 %45, %46
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %197

52:                                               ; preds = %37
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %55, %56
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %57, i32* %58, align 16
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %52
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FF_PSEUDOPAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65, %52
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32**, i32*** %7, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  store i32* %77, i32** %79, align 8
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = add nsw i32 %81, 1024
  store i32 %82, i32* %6, align 4
  br label %197

83:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %95
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %84

100:                                              ; preds = %84
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  store i32 %102, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %103

103:                                              ; preds = %192, %100
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %106, %103
  %113 = phi i1 [ false, %103 ], [ %111, %106 ]
  br i1 %113, label %114, label %195

114:                                              ; preds = %112
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %124

120:                                              ; preds = %117, %114
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  br label %125

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %120
  %126 = phi i32 [ %123, %120 ], [ 0, %124 ]
  store i32 %126, i32* %18, align 4
  %127 = load i32**, i32*** %7, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %127, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %132, i64 %138
  %140 = load i32**, i32*** %7, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  store i32* %139, i32** %143, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %18, align 4
  %146 = shl i32 1, %145
  %147 = add nsw i32 %144, %146
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %18, align 4
  %150 = ashr i32 %148, %149
  store i32 %150, i32* %17, align 4
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @INT_MAX, align 4
  %157 = load i32, i32* %17, align 4
  %158 = sdiv i32 %156, %157
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %125
  %161 = load i32, i32* @EINVAL, align 4
  %162 = call i32 @AVERROR(i32 %161)
  store i32 %162, i32* %6, align 4
  br label %197

163:                                              ; preds = %125
  %164 = load i32, i32* %17, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %164, %169
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %172
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @INT_MAX, align 4
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %175, %179
  %181 = icmp sgt i32 %174, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %163
  %183 = load i32, i32* @EINVAL, align 4
  %184 = call i32 @AVERROR(i32 %183)
  store i32 %184, i32* %6, align 4
  br label %197

185:                                              ; preds = %163
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %103

195:                                              ; preds = %112
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %195, %182, %160, %72, %49, %34
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #2

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
