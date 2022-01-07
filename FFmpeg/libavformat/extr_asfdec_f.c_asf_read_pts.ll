; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_pts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__**, i32, %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }

@ASF_MAX_STREAMS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"asf_read_pts failed\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32*, i32)* @asf_read_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_pts(%struct.TYPE_17__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @ASF_MAX_STREAMS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %40, %4
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %28, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %54, %59
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %68, %73
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %48, %43
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i64 @avio_seek(i32 %80, i32 %81, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %185

87:                                               ; preds = %75
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = call i32 @ff_read_frame_flush(%struct.TYPE_17__* %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = call i32 @asf_reset_header(%struct.TYPE_17__* %90)
  br label %92

92:                                               ; preds = %178, %87
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %95 = call i64 @av_read_frame(%struct.TYPE_17__* %93, %struct.TYPE_16__* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = load i32, i32* @AV_LOG_INFO, align 4
  %100 = call i32 @av_log(%struct.TYPE_17__* %98, i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %101, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %185

102:                                              ; preds = %92
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %178

112:                                              ; preds = %102
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %16, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %121, i64 %123
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i64 %127
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %13, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %15, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @av_assert1(i32 %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %143, i64 %145
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %28, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %153, %157
  %159 = add nsw i32 %158, 1
  %160 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %161 = call i32 @av_add_index_entry(%struct.TYPE_14__* %147, i32 %148, i32 %149, i32 %152, i32 %159, i32 %160)
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %28, i64 %167
  store i32 %165, i32* %168, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %112
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %176 = call i32 @av_packet_unref(%struct.TYPE_16__* %175)
  br label %181

177:                                              ; preds = %112
  br label %178

178:                                              ; preds = %177, %102
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %180 = call i32 @av_packet_unref(%struct.TYPE_16__* %179)
  br label %92

181:                                              ; preds = %174
  %182 = load i32, i32* %15, align 4
  %183 = load i32*, i32** %8, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %185

185:                                              ; preds = %181, %97, %85
  %186 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @avio_seek(i32, i32, i32) #2

declare dso_local i32 @ff_read_frame_flush(%struct.TYPE_17__*) #2

declare dso_local i32 @asf_reset_header(%struct.TYPE_17__*) #2

declare dso_local i64 @av_read_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #2

declare dso_local i32 @av_assert1(i32) #2

declare dso_local i32 @av_add_index_entry(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
