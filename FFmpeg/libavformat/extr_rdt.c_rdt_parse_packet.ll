; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_rdt_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_rdt_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_18__*, i32*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }

@RTP_FLAG_KEY = common dso_local global i32 0, align 4
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i32*, i32, i32, i32)* @rdt_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdt_parse_packet(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, %struct.TYPE_17__* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %98

29:                                               ; preds = %9
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = call i32 @ffio_init_context(i32* %22, i32* %30, i32 %31, i32 0, i32* null, i32* null, i32* null, i32* null)
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* @RTP_FLAG_KEY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2, i32 0
  store i32 %38, i32* %24, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %53 = load i32, i32* %24, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ff_rm_parse_packet(%struct.TYPE_18__* %41, i32* %22, %struct.TYPE_16__* %42, i32 %50, i32 %51, %struct.TYPE_17__* %52, i32* %20, i32 %53, i32 %55)
  store i32 %56, i32* %21, align 4
  %57 = call i32 @avio_tell(i32* %22)
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %29
  %61 = load i32, i32* %21, align 4
  store i32 %61, i32* %10, align 4
  br label %155

62:                                               ; preds = %29
  %63 = load i32, i32* %21, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %65
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %23, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %23, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 @memcpy(i32 %76, i32* %80, i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %23, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @avio_alloc_context(i32 %87, i32 %90, i32 0, i32* null, i32* null, i32* null, i32* null)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %73, %65
  br label %99

97:                                               ; preds = %62
  br label %140

98:                                               ; preds = %9
  br label %99

99:                                               ; preds = %98, %96
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %118 = call i64 @ff_rm_retrieve_cache(%struct.TYPE_18__* %102, i32 %107, %struct.TYPE_16__* %108, i32 %116, %struct.TYPE_17__* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %99
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = call i32 @avio_context_free(i32* %137)
  br label %139

139:                                              ; preds = %133, %125, %99
  br label %140

140:                                              ; preds = %139, %97
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %140, %60
  %156 = load i32, i32* %10, align 4
  ret i32 %156
}

declare dso_local i32 @ffio_init_context(i32*, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ff_rm_parse_packet(%struct.TYPE_18__*, i32*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @avio_alloc_context(i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ff_rm_retrieve_cache(%struct.TYPE_18__*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @avio_context_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
