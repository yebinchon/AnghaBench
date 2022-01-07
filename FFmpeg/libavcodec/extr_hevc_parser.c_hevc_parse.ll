; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_hevc_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_hevc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }

@PARSER_FLAG_COMPLETE_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32**, i32*, i32*, i32)* @hevc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %15, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  store i32* %23, i32** %16, align 8
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** %12, align 8
  store i32* %28, i32** %18, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %6
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = call i32 @ff_hevc_decode_extradata(i64 %41, i32 %44, i32* %46, i32* %48, i32* %50, i32* %52, i32 %55, i32 1, %struct.TYPE_12__* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %38, %33, %6
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %14, align 4
  br label %83

69:                                               ; preds = %60
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @hevc_find_frame_end(%struct.TYPE_11__* %70, i32* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @ff_combine_frame(i32* %74, i32 %75, i32** %12, i32* %13)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32**, i32*** %10, align 8
  store i32* null, i32** %79, align 8
  %80 = load i32*, i32** %11, align 8
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %7, align 4
  br label %104

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32*, i32** %18, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = icmp eq i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %17, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %83
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = call i32 @parse_nal_units(%struct.TYPE_11__* %93, i32* %94, i32 %95, %struct.TYPE_12__* %96)
  br label %98

98:                                               ; preds = %92, %83
  %99 = load i32*, i32** %12, align 8
  %100 = load i32**, i32*** %10, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %98, %78
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @ff_hevc_decode_extradata(i64, i32, i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @hevc_find_frame_end(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @ff_combine_frame(i32*, i32, i32**, i32*) #1

declare dso_local i32 @parse_nal_units(%struct.TYPE_11__*, i32*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
