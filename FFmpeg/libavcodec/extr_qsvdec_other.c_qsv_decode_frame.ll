; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec_other.c_qsv_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec_other.c_qsv_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_17__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*)* @qsv_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %4
  %24 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 12, i1 false)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @av_fifo_space(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 12
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @av_fifo_size(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 12
  %41 = trunc i64 %40 to i32
  %42 = call i32 @av_fifo_realloc2(i32 %34, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %155

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %23
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = call i32 @av_packet_ref(%struct.TYPE_15__* %13, %struct.TYPE_15__* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %155

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @av_fifo_generic_write(i32 %58, %struct.TYPE_15__* %13, i32 12, i32* null)
  br label %60

60:                                               ; preds = %55, %4
  br label %61

61:                                               ; preds = %138, %137, %60
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %151

66:                                               ; preds = %61
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %66
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @av_fifo_size(i32 %75)
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 12
  br i1 %78, label %79, label %98

79:                                               ; preds = %72
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  br label %96

88:                                               ; preds = %79
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = call i32 @ff_qsv_process_data(%struct.TYPE_16__* %89, %struct.TYPE_17__* %91, i32* %92, i32* %93, %struct.TYPE_15__* %94)
  br label %96

96:                                               ; preds = %88, %84
  %97 = phi i32 [ %87, %84 ], [ %95, %88 ]
  store i32 %97, i32* %5, align 4
  br label %155

98:                                               ; preds = %72
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = call i32 @av_packet_unref(%struct.TYPE_15__* %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = call i32 @av_fifo_generic_read(i32 %110, %struct.TYPE_15__* %112, i32 12, i32* null)
  br label %114

114:                                              ; preds = %104, %98
  br label %115

115:                                              ; preds = %114, %66
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32*, i32** %11, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = call i32 @ff_qsv_process_data(%struct.TYPE_16__* %116, %struct.TYPE_17__* %118, i32* %119, i32* %120, %struct.TYPE_15__* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = call i32 @av_packet_unref(%struct.TYPE_15__* %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %5, align 4
  br label %155

131:                                              ; preds = %115
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %61

138:                                              ; preds = %131
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, %139
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  br label %61

151:                                              ; preds = %61
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %151, %126, %96, %53, %45
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_fifo_space(i32) #2

declare dso_local i32 @av_fifo_realloc2(i32, i32) #2

declare dso_local i32 @av_fifo_size(i32) #2

declare dso_local i32 @av_packet_ref(%struct.TYPE_15__*, %struct.TYPE_15__*) #2

declare dso_local i32 @av_fifo_generic_write(i32, %struct.TYPE_15__*, i32, i32*) #2

declare dso_local i32 @ff_qsv_process_data(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_15__*) #2

declare dso_local i32 @av_fifo_generic_read(i32, %struct.TYPE_15__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
