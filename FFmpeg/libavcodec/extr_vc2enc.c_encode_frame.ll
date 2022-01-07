; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_21__*, i32* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32*, i32, i32)* }
%struct.TYPE_21__ = type { i32, i32, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32*, i32* }

@dwt_plane = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error getting output packet.\0A\00", align 1
@DIRAC_PCODE_SEQ_HEADER = common dso_local global i32 0, align 4
@DIRAC_PCODE_AUX = common dso_local global i32 0, align 4
@DIRAC_PCODE_PICTURE_HQ = common dso_local global i32 0, align 4
@DIRAC_PCODE_END_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i8*, i32, i32)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %78, %6
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  store i32* %42, i32** %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  store i32 %56, i32* %63, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 4
  br label %78

78:                                               ; preds = %20
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %17

81:                                               ; preds = %17
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32*, i32, i32)*, i32 (%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32*, i32, i32)** %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = load i32, i32* @dwt_plane, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = call i32 %86(%struct.TYPE_20__* %89, i32 %90, %struct.TYPE_21__* %93, i32* null, i32 3, i32 4)
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = call i32 @calc_slice_sizes(%struct.TYPE_17__* %96)
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 2
  br i1 %100, label %101, label %136

101:                                              ; preds = %81
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %106, %109
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %111, %114
  %116 = call i32 @ff_alloc_packet2(%struct.TYPE_20__* %104, %struct.TYPE_18__* %105, i32 %110, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %101
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(%struct.TYPE_20__* %122, i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %7, align 4
  br label %163

126:                                              ; preds = %101
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @init_put_bits(i32* %128, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %126, %81
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %138 = load i32, i32* @DIRAC_PCODE_SEQ_HEADER, align 4
  %139 = call i32 @encode_parse_info(%struct.TYPE_17__* %137, i32 %138)
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = call i32 @encode_seq_header(%struct.TYPE_17__* %140)
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %146 = load i32, i32* @DIRAC_PCODE_AUX, align 4
  %147 = call i32 @encode_parse_info(%struct.TYPE_17__* %145, i32 %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @avpriv_put_string(i32* %149, i8* %150, i32 1)
  br label %152

152:                                              ; preds = %144, %136
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %154 = load i32, i32* @DIRAC_PCODE_PICTURE_HQ, align 4
  %155 = call i32 @encode_parse_info(%struct.TYPE_17__* %153, i32 %154)
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %157 = call i32 @encode_picture_start(%struct.TYPE_17__* %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = call i32 @encode_slices(%struct.TYPE_17__* %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %161 = load i32, i32* @DIRAC_PCODE_END_SEQ, align 4
  %162 = call i32 @encode_parse_info(%struct.TYPE_17__* %160, i32 %161)
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %152, %119
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @calc_slice_sizes(%struct.TYPE_17__*) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @init_put_bits(i32*, i32, i32) #1

declare dso_local i32 @encode_parse_info(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @encode_seq_header(%struct.TYPE_17__*) #1

declare dso_local i32 @avpriv_put_string(i32*, i8*, i32) #1

declare dso_local i32 @encode_picture_start(%struct.TYPE_17__*) #1

declare dso_local i32 @encode_slices(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
