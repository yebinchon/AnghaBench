; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_qsv_decode_preinit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_qsv_decode_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@AV_PIX_FMT_QSV = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MFX_MEMTYPE_OPAQUE_FRAME = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_VIDEO_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Decoder\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error initializing an MFX session\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_17__*, i32, %struct.TYPE_16__*)* @qsv_decode_preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_decode_preinit(%struct.TYPE_21__* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %18 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %25 = call i32 @ff_get_format(%struct.TYPE_21__* %23, i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %178

35:                                               ; preds = %4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (...) @qsv_fifo_item_size()
  %45 = mul nsw i32 %43, %44
  %46 = call i64 @av_fifo_alloc(i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %178

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = icmp ne %struct.TYPE_19__* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %14, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %10, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %68, %63, %57
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = icmp ne %struct.TYPE_22__* %91, null
  br i1 %92, label %93, label %126

93:                                               ; preds = %88
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %15, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %16, align 8
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %93
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MFX_MEMTYPE_OPAQUE_FRAME, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @MFX_IOPATTERN_OUT_OPAQUE_MEMORY, align 4
  store i32 %113, i32* %11, align 4
  br label %124

114:                                              ; preds = %105
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @MFX_IOPATTERN_OUT_VIDEO_MEMORY, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %121, %114
  br label %124

124:                                              ; preds = %123, %112
  br label %125

125:                                              ; preds = %124, %93
  br label %126

126:                                              ; preds = %125, %88
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @MFX_IOPATTERN_OUT_SYSTEM_MEMORY, align 4
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ff_qsv_print_iopattern(%struct.TYPE_21__* %135, i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @qsv_init_session(%struct.TYPE_21__* %140, %struct.TYPE_17__* %141, i32* %142, %struct.TYPE_22__* %145, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %131
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = call i32 @av_log(%struct.TYPE_21__* %153, i32 %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %5, align 4
  br label %178

157:                                              ; preds = %131
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %157, %152, %53, %28
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @ff_get_format(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @av_fifo_alloc(i32) #1

declare dso_local i32 @qsv_fifo_item_size(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_qsv_print_iopattern(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @qsv_init_session(%struct.TYPE_21__*, %struct.TYPE_17__*, i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
