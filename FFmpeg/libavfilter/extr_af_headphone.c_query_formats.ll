; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_7__**, %struct.HeadphoneContext* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.HeadphoneContext = type { i64, i32 }

@AV_SAMPLE_FMT_FLT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@HRIR_MULTI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.HeadphoneContext*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.HeadphoneContext*, %struct.HeadphoneContext** %12, align 8
  store %struct.HeadphoneContext* %13, %struct.HeadphoneContext** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  %15 = call i32 @ff_add_format(i32** %5, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %2, align 4
  br label %133

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ff_set_common_formats(%struct.TYPE_9__* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %2, align 4
  br label %133

28:                                               ; preds = %20
  %29 = call i32* (...) @ff_all_channel_layouts()
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %133

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @ff_channel_layouts_ref(i32* %36, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %133

48:                                               ; preds = %35
  %49 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %50 = call i32 @ff_add_channel_layout(i32** %7, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %133

55:                                               ; preds = %48
  %56 = load %struct.HeadphoneContext*, %struct.HeadphoneContext** %4, align 8
  %57 = getelementptr inbounds %struct.HeadphoneContext, %struct.HeadphoneContext* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HRIR_MULTI, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = call i32* (...) @ff_all_channel_counts()
  store i32* %62, i32** %8, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %133

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i64 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @ff_channel_layouts_ref(i32* %69, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %2, align 4
  br label %133

81:                                               ; preds = %68
  br label %109

82:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %105, %82
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.HeadphoneContext*, %struct.HeadphoneContext** %4, align 8
  %86 = getelementptr inbounds %struct.HeadphoneContext, %struct.HeadphoneContext* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @ff_channel_layouts_ref(i32* %90, i32* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %133

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %83

108:                                              ; preds = %83
  br label %109

109:                                              ; preds = %108, %81
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %113, i64 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = call i32 @ff_channel_layouts_ref(i32* %110, i32* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %2, align 4
  br label %133

122:                                              ; preds = %109
  %123 = call i32* (...) @ff_all_samplerates()
  store i32* %123, i32** %5, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = call i32 @AVERROR(i32 %127)
  store i32 %128, i32* %2, align 4
  br label %133

129:                                              ; preds = %122
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @ff_set_common_samplerates(%struct.TYPE_9__* %130, i32* %131)
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %126, %120, %102, %79, %65, %53, %46, %32, %26, %18
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_9__*, i32*) #1

declare dso_local i32* @ff_all_channel_layouts(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
