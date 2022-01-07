; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_sei.c_decode_registered_user_data_closed_caption.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_sei.c_decode_registered_user_data_closed_caption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8** }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @decode_registered_user_data_closed_caption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_registered_user_data_closed_caption(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %133

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @get_bits(i32* %21, i32 8)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %119

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @skip_bits(i32* %27, i32 1)
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @get_bits(i32* %29, i32 1)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %118

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @skip_bits(i32* %35, i32 1)
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @get_bits(i32* %37, i32 5)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @skip_bits(i32* %40, i32 8)
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %117

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %48, 3
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @UINT64_C(i32 3)
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @INT_MAX, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %4, align 4
  br label %133

66:                                               ; preds = %51
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @av_reallocp(i8*** %68, i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %4, align 4
  br label %133

75:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = call i8* @get_bits(i32* %81, i32 8)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* %82, i8** %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i8* @get_bits(i32* %91, i32 8)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* %92, i8** %100, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i8* @get_bits(i32* %101, i32 8)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = getelementptr inbounds i8*, i8** %105, i64 %108
  store i8* %102, i8** %110, align 8
  br label %111

111:                                              ; preds = %80
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %76

114:                                              ; preds = %76
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @skip_bits(i32* %115, i32 8)
  br label %117

117:                                              ; preds = %114, %46, %34
  br label %118

118:                                              ; preds = %117, %26
  br label %132

119:                                              ; preds = %20
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %128, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @skip_bits(i32* %126, i32 8)
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %120

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %118
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %73, %63, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @av_reallocp(i8***, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
