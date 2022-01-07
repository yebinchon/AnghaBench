; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__**, %struct.TYPE_12__**, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }

@query_formats.main_pix_fmts_yuv420 = internal constant [6 x i32] [i32 142, i32 136, i32 139, i32 146, i32 145, i32 147], align 16
@query_formats.overlay_pix_fmts_yuv420 = internal constant [2 x i32] [i32 139, i32 147], align 4
@query_formats.main_pix_fmts_yuv422 = internal constant [4 x i32] [i32 141, i32 135, i32 138, i32 147], align 16
@query_formats.overlay_pix_fmts_yuv422 = internal constant [2 x i32] [i32 138, i32 147], align 4
@query_formats.main_pix_fmts_yuv444 = internal constant [4 x i32] [i32 140, i32 134, i32 137, i32 147], align 16
@query_formats.overlay_pix_fmts_yuv444 = internal constant [2 x i32] [i32 137, i32 147], align 4
@query_formats.main_pix_fmts_gbrp = internal constant [3 x i32] [i32 148, i32 149, i32 147], align 4
@query_formats.overlay_pix_fmts_gbrp = internal constant [2 x i32] [i32 149, i32 147], align 4
@query_formats.main_pix_fmts_rgb = internal constant [7 x i32] [i32 152, i32 143, i32 153, i32 150, i32 144, i32 151, i32 147], align 16
@query_formats.overlay_pix_fmts_rgb = internal constant [5 x i32] [i32 152, i32 143, i32 153, i32 150, i32 147], align 16
@ENOMEM = common dso_local global i32 0, align 4
@alpha_pix_fmts = common dso_local global i32* null, align 8
@MAIN = common dso_local global i64 0, align 8
@OVERLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %72 [
    i32 130, label %14
    i32 129, label %24
    i32 128, label %34
    i32 131, label %44
    i32 132, label %54
    i32 133, label %64
  ]

14:                                               ; preds = %1
  %15 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @query_formats.main_pix_fmts_yuv420, i64 0, i64 0))
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %5, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.overlay_pix_fmts_yuv420, i64 0, i64 0))
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %7, align 4
  br label %123

23:                                               ; preds = %17
  br label %74

24:                                               ; preds = %1
  %25 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @query_formats.main_pix_fmts_yuv422, i64 0, i64 0))
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %5, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.overlay_pix_fmts_yuv422, i64 0, i64 0))
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %6, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %7, align 4
  br label %123

33:                                               ; preds = %27
  br label %74

34:                                               ; preds = %1
  %35 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @query_formats.main_pix_fmts_yuv444, i64 0, i64 0))
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %5, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.overlay_pix_fmts_yuv444, i64 0, i64 0))
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %6, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %123

43:                                               ; preds = %37
  br label %74

44:                                               ; preds = %1
  %45 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @query_formats.main_pix_fmts_rgb, i64 0, i64 0))
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %5, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @query_formats.overlay_pix_fmts_rgb, i64 0, i64 0))
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  %49 = icmp ne %struct.TYPE_15__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %123

53:                                               ; preds = %47
  br label %74

54:                                               ; preds = %1
  %55 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @query_formats.main_pix_fmts_gbrp, i64 0, i64 0))
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %5, align 8
  %56 = icmp ne %struct.TYPE_15__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call %struct.TYPE_15__* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.overlay_pix_fmts_gbrp, i64 0, i64 0))
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %6, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %7, align 4
  br label %123

63:                                               ; preds = %57
  br label %74

64:                                               ; preds = %1
  %65 = load i32*, i32** @alpha_pix_fmts, align 8
  %66 = call %struct.TYPE_15__* @ff_make_format_list(i32* %65)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %5, align 8
  %67 = icmp ne %struct.TYPE_15__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %7, align 4
  br label %123

71:                                               ; preds = %64
  br label %74

72:                                               ; preds = %1
  %73 = call i32 @av_assert0(i32 0)
  br label %74

74:                                               ; preds = %72, %71, %63, %53, %43, %33, %23
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 133
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = call i32 @ff_set_common_formats(%struct.TYPE_16__* %80, %struct.TYPE_15__* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %123

86:                                               ; preds = %79
  br label %122

87:                                               ; preds = %74
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %90, align 8
  %92 = load i64, i64* @MAIN, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %91, i64 %92
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = call i32 @ff_formats_ref(%struct.TYPE_15__* %88, i32* %95)
  store i32 %96, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %120, label %98

98:                                               ; preds = %87
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %101, align 8
  %103 = load i64, i64* @OVERLAY, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %102, i64 %103
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = call i32 @ff_formats_ref(%struct.TYPE_15__* %99, i32* %106)
  store i32 %107, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %98
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %112, align 8
  %114 = load i64, i64* @MAIN, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %113, i64 %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = call i32 @ff_formats_ref(%struct.TYPE_15__* %110, i32* %117)
  store i32 %118, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109, %98, %87
  br label %123

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %86
  store i32 0, i32* %2, align 4
  br label %141

123:                                              ; preds = %120, %85, %68, %60, %50, %40, %30, %20
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = icmp ne %struct.TYPE_15__* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = call i32 @av_freep(%struct.TYPE_15__** %128)
  br label %130

130:                                              ; preds = %126, %123
  %131 = call i32 @av_freep(%struct.TYPE_15__** %5)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = icmp ne %struct.TYPE_15__* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = call i32 @av_freep(%struct.TYPE_15__** %136)
  br label %138

138:                                              ; preds = %134, %130
  %139 = call i32 @av_freep(%struct.TYPE_15__** %6)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %122
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_15__* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ff_formats_ref(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
