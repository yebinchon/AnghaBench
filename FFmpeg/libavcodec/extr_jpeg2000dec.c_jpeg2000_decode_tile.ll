; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_jpeg2000_decode_tile.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_jpeg2000_decode_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@AV_PIX_FMT_XYZ12 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB48 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGBA64 = common dso_local global i64 0, align 8
@AV_PIX_FMT_GRAY16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32, i32)* @jpeg2000_decode_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg2000_decode_tile(%struct.TYPE_21__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %10, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 %23
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %11, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %27 = call i32 @tile_codeblocks(%struct.TYPE_19__* %25, %struct.TYPE_18__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %38 = call i32 @mct_decode(%struct.TYPE_19__* %36, %struct.TYPE_18__* %37)
  br label %39

39:                                               ; preds = %35, %4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %92, %39
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %95

46:                                               ; preds = %40
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %80, %74
  br label %95

91:                                               ; preds = %46
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %40

95:                                               ; preds = %90, %40
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sle i32 %98, 8
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %104 = call i32 @write_frame_8(%struct.TYPE_19__* %101, %struct.TYPE_18__* %102, %struct.TYPE_20__* %103, i32 8)
  br label %141

105:                                              ; preds = %95
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AV_PIX_FMT_XYZ12, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %129, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AV_PIX_FMT_RGB48, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AV_PIX_FMT_RGBA64, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AV_PIX_FMT_GRAY16, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %117, %111, %105
  br label %134

130:                                              ; preds = %123
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  br label %134

134:                                              ; preds = %130, %129
  %135 = phi i32 [ 16, %129 ], [ %133, %130 ]
  store i32 %135, i32* %13, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @write_frame_16(%struct.TYPE_19__* %136, %struct.TYPE_18__* %137, %struct.TYPE_20__* %138, i32 %139)
  br label %141

141:                                              ; preds = %134, %100
  ret i32 0
}

declare dso_local i32 @tile_codeblocks(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mct_decode(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @write_frame_8(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @write_frame_16(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
