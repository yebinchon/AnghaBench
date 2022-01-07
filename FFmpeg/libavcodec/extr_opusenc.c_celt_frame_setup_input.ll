; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_frame_setup_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_frame_setup_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i8**, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @celt_frame_setup_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_frame_setup_input(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @OPUS_BLOCK_SIZE(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = call %struct.TYPE_17__* @ff_bufqueue_get(i32* %32)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %69, %2
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %45
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %9, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @av_get_bytes_per_sample(i32 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %11, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %63, %66
  %68 = call i32 @memcpy(i32* %61, i8* %62, i64 %67)
  br label %69

69:                                               ; preds = %40
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %34

72:                                               ; preds = %34
  %73 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %164, %72
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %167

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = call %struct.TYPE_17__* @ff_bufqueue_get(i32* %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %5, align 8
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = call %struct.TYPE_17__* @ff_bufqueue_peek(i32* %89, i32 0)
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %5, align 8
  br label %91

91:                                               ; preds = %87, %83
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %153, %91
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %156

98:                                               ; preds = %92
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  store %struct.TYPE_16__* %104, %struct.TYPE_16__** %14, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %15, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @av_get_bytes_per_sample(i32 %114)
  %116 = ptrtoint i8* %115 to i64
  store i64 %116, i64* %16, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %118, %121
  %123 = load i64, i64* %16, align 8
  %124 = mul i64 %122, %123
  store i64 %124, i64* %17, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i64 @FFMIN(i32 %125, i32 %129)
  %131 = load i64, i64* %16, align 8
  %132 = mul i64 %130, %131
  store i64 %132, i64* %18, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %6, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i8*, i8** %15, align 8
  %142 = load i64, i64* %18, align 8
  %143 = call i32 @memcpy(i32* %140, i8* %141, i64 %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @memset(i32* %150, i32 0, i64 %151)
  br label %153

153:                                              ; preds = %98
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %92

156:                                              ; preds = %92
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %7, align 4
  %159 = sub nsw i32 %158, 1
  %160 = icmp ne i32 %157, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %163

163:                                              ; preds = %161, %156
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %74

167:                                              ; preds = %74
  ret void
}

declare dso_local i32 @OPUS_BLOCK_SIZE(i32) #1

declare dso_local %struct.TYPE_17__* @ff_bufqueue_get(i32*) #1

declare dso_local i8* @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_17__* @ff_bufqueue_peek(i32*, i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
