; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapenc.c_hap_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapenc.c_hap_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@HAP_COMP_NONE = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32*)* @hap_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hap_encode(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %10, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %19 = call i32 @hap_header_length(%struct.TYPE_15__* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = call i32 @FFMAX(i32 %22, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ff_alloc_packet2(%struct.TYPE_17__* %33, %struct.TYPE_16__* %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %123

42:                                               ; preds = %4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HAP_COMP_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @compress_texture(%struct.TYPE_17__* %49, i32 %54, i32 %59, i32* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %123

66:                                               ; preds = %48
  %67 = load i64, i64* @HAP_COMP_NONE, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i64 %67, i64* %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  br label %103

76:                                               ; preds = %42
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @compress_texture(%struct.TYPE_17__* %77, i32 %80, i32 %83, i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %123

90:                                               ; preds = %76
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @hap_compress_frame(%struct.TYPE_17__* %91, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %123

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %66
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @hap_write_frame_header(%struct.TYPE_15__* %104, i32 %107, i32 %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @av_shrink_packet(%struct.TYPE_16__* %112, i32 %115)
  %117 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %9, align 8
  store i32 1, i32* %122, align 4
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %103, %100, %88, %64, %40
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @hap_header_length(%struct.TYPE_15__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @compress_texture(%struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i32 @hap_compress_frame(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @hap_write_frame_header(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @av_shrink_packet(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
