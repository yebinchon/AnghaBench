; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_decode_registered_user_data_closed_caption.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_decode_registered_user_data_closed_caption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8** }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i8*, i32)* @decode_registered_user_data_closed_caption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_registered_user_data_closed_caption(%struct.TYPE_4__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %150

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @get_bits(i32* %24, i32 8)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %136

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @skip_bits(i32* %30, i32 1)
  %32 = load i32*, i32** %7, align 8
  %33 = call i8* @get_bits(i32* %32, i32 1)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %135

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @skip_bits(i32* %38, i32 1)
  %40 = load i32*, i32** %7, align 8
  %41 = call i8* @get_bits(i32* %40, i32 5)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @skip_bits(i32* %43, i32 8)
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %134

49:                                               ; preds = %37
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %51, 3
  %53 = icmp sge i32 %50, %52
  br i1 %53, label %54, label %134

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  br label %66

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i32 [ %64, %59 ], [ 0, %65 ]
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @UINT64_C(i32 3)
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @INT_MAX, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %150

80:                                               ; preds = %66
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @av_buffer_realloc(%struct.TYPE_5__** %82, i64 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %5, align 4
  br label %150

89:                                               ; preds = %80
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %128, %89
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %131

94:                                               ; preds = %90
  %95 = load i32*, i32** %7, align 8
  %96 = call i8* @get_bits(i32* %95, i32 8)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  store i8* %96, i8** %105, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i8* @get_bits(i32* %106, i32 8)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  store i8* %107, i8** %116, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i8* @get_bits(i32* %117, i32 8)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  store i8* %118, i8** %127, align 8
  br label %128

128:                                              ; preds = %94
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %90

131:                                              ; preds = %90
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @skip_bits(i32* %132, i32 8)
  br label %134

134:                                              ; preds = %131, %49, %37
  br label %135

135:                                              ; preds = %134, %29
  br label %149

136:                                              ; preds = %23
  store i32 0, i32* %17, align 4
  br label %137

137:                                              ; preds = %145, %136
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @skip_bits(i32* %143, i32 8)
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %137

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %135
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %87, %77, %20
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @av_buffer_realloc(%struct.TYPE_5__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
