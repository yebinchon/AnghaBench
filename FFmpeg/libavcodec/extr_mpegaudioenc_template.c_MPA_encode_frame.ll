; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_MPA_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_MPA_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_17__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i64, i64* }

@MPA_MAX_CHANNELS = common dso_local global i32 0, align 4
@SBLIMIT = common dso_local global i32 0, align 4
@MPA_MAX_CODED_FRAME_SIZE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @MPA_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPA_encode_frame(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %10, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* @SBLIMIT, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %12, align 8
  %35 = mul nuw i64 %31, %33
  %36 = alloca i16, i64 %35, align 16
  store i64 %31, i64* %13, align 8
  store i64 %33, i64* %14, align 8
  %37 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* @SBLIMIT, align 4
  %40 = zext i32 %39 to i64
  %41 = mul nuw i64 %38, %40
  %42 = alloca i8, i64 %41, align 16
  store i64 %38, i64* %15, align 8
  store i64 %40, i64* %16, align 8
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %60, %4
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @filter(%struct.TYPE_16__* %50, i32 %51, i32* %55, i32 %58)
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %43

63:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  br label %64

64:                                               ; preds = %97, %63
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @compute_scale_factors(%struct.TYPE_16__* %71, i32 %78, i32 %85, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %70
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  br label %64

100:                                              ; preds = %64
  store i32 0, i32* %18, align 4
  br label %101

101:                                              ; preds = %114, %100
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, %33
  %112 = getelementptr inbounds i16, i16* %36, i64 %111
  %113 = call i32 @psycho_acoustic_model(%struct.TYPE_16__* %108, i16* %112)
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = bitcast i16* %36 to i16**
  %120 = bitcast i8* %42 to i8**
  %121 = call i32 @compute_bit_allocation(%struct.TYPE_16__* %118, i16** %119, i8** %120, i32* %17)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = load i32, i32* @MPA_MAX_CODED_FRAME_SIZE, align 4
  %125 = call i32 @ff_alloc_packet2(%struct.TYPE_19__* %122, %struct.TYPE_17__* %123, i32 %124, i32 0)
  store i32 %125, i32* %19, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %19, align 4
  store i32 %128, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %168

129:                                              ; preds = %117
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @init_put_bits(i32* %131, i32 %134, i32 %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = bitcast i8* %42 to i8**
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @encode_frame(%struct.TYPE_16__* %139, i8** %140, i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %129
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @ff_samples_to_time_base(%struct.TYPE_19__* %152, i32 %155)
  %157 = sub nsw i64 %151, %156
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %148, %129
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = call i32 @put_bits_count(i32* %162)
  %164 = sdiv i32 %163, 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load i32*, i32** %9, align 8
  store i32 1, i32* %167, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %168

168:                                              ; preds = %160, %127
  %169 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @filter(%struct.TYPE_16__*, i32, i32*, i32) #2

declare dso_local i32 @compute_scale_factors(%struct.TYPE_16__*, i32, i32, i32, i32) #2

declare dso_local i32 @psycho_acoustic_model(%struct.TYPE_16__*, i16*) #2

declare dso_local i32 @compute_bit_allocation(%struct.TYPE_16__*, i16**, i8**, i32*) #2

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_19__*, %struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @init_put_bits(i32*, i32, i32) #2

declare dso_local i32 @encode_frame(%struct.TYPE_16__*, i8**, i32) #2

declare dso_local i64 @ff_samples_to_time_base(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @put_bits_count(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
