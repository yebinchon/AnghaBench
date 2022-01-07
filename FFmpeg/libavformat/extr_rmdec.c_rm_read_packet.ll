; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__**, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@RAW_PACKET_SIZE = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@AVDISCARD_NONKEY = common dso_local global i64 0, align 8
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @rm_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_read_packet(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  store i32 1, i32* %11, align 4
  br label %19

19:                                               ; preds = %174, %152, %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %26, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %27, i64 %30
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %7, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ff_rm_retrieve_cache(%struct.TYPE_17__* %33, i32 %36, %struct.TYPE_16__* %37, %struct.TYPE_14__* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %176

47:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %154

48:                                               ; preds = %19
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %48
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %56, i64 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %7, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %15, align 8
  %62 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @RAW_PACKET_SIZE, align 4
  br label %78

69:                                               ; preds = %53
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = sdiv i32 %76, 2
  br label %78

78:                                               ; preds = %69, %67
  %79 = phi i32 [ %68, %67 ], [ %77, %69 ]
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = icmp eq i32 %80, 1
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 2, i32 0
  store i32 %84, i32* %14, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @avio_tell(i32 %87)
  store i32 %88, i32* %13, align 4
  br label %103

89:                                               ; preds = %48
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = call i32 @rm_sync(%struct.TYPE_17__* %90, i32* %12, i32* %14, i32* %8, i32* %13)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %97, i64 %99
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %7, align 8
  br label %102

102:                                              ; preds = %94, %89
  br label %103

103:                                              ; preds = %102, %78
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @avio_feof(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %110, i32* %3, align 4
  br label %176

111:                                              ; preds = %103
  %112 = load i32, i32* %9, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @EIO, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %176

117:                                              ; preds = %111
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @ff_rm_parse_packet(%struct.TYPE_17__* %118, i32 %121, %struct.TYPE_16__* %122, %struct.TYPE_14__* %125, i32 %126, i32* %127, i32* %11, i32 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %117
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %176

135:                                              ; preds = %117
  %136 = load i32, i32* %14, align 4
  %137 = and i32 %136, 2
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  %141 = and i32 %140, 127
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %148 = call i32 @av_add_index_entry(%struct.TYPE_16__* %144, i32 %145, i32 %146, i32 0, i32 0, i32 %147)
  br label %149

149:                                              ; preds = %143, %139, %135
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %19

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %47
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AVDISCARD_NONKEY, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, 2
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160, %154
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AVDISCARD_ALL, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %164, %160
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @av_packet_unref(i32* %171)
  br label %174

173:                                              ; preds = %164
  br label %175

174:                                              ; preds = %170
  br label %19

175:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %133, %114, %109, %45
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @ff_rm_retrieve_cache(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @rm_sync(%struct.TYPE_17__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_rm_parse_packet(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_14__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @av_add_index_entry(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
