; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_frame_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_frame_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32**, i32, i32 }

@DCA_SUBBANDS_X96 = common dso_local global i32 0, align 4
@DCA_ADPCM_COEFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @parse_x96_frame_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_x96_frame_data(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @parse_x96_coding_header(%struct.TYPE_6__* %15, i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %149

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @parse_x96_subframe_header(%struct.TYPE_6__* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %149

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @parse_x96_subframe_audio(%struct.TYPE_6__* %37, i32 %38, i32 %39, i32* %12)
  store i32 %40, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %149

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %144, %48
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %147

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %56
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %76, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @FFMAX(i32 %73, i32 %87)
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %72, %56
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %140, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @DCA_SUBBANDS_X96, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %143

94:                                               ; preds = %90
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %14, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %94
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32*, i32** %14, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = call i32 @AV_COPY128(i32* %120, i32* %126)
  br label %139

128:                                              ; preds = %115, %94
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %130, %133
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memset(i32* %129, i32 0, i32 %137)
  br label %139

139:                                              ; preds = %128, %119
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %90

143:                                              ; preds = %90
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %50

147:                                              ; preds = %50
  %148 = call i32 (...) @emms_c()
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %42, %34, %20
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @parse_x96_coding_header(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @parse_x96_subframe_header(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @parse_x96_subframe_audio(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @AV_COPY128(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @emms_c(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
