; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64**, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_24__*, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_24__ = type { i64*, i64* }

@CELT_MAX_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, %struct.TYPE_23__*, i32)* @celt_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_encode_frame(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @ff_opus_rc_enc_init(i32* %13)
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ff_opus_psy_celt_frame_init(i32* %16, %struct.TYPE_23__* %17, i32 %18)
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = call i32 @celt_frame_setup_input(%struct.TYPE_22__* %20, %struct.TYPE_23__* %21)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 16
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @ff_opus_rc_enc_log(i32* %33, i32 1, i32 15)
  br label %35

35:                                               ; preds = %32, %27
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i64**, i64*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64*, i64** %45, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* @CELT_MAX_BANDS, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(i64* %49, float 0.000000e+00, i32 %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %36

58:                                               ; preds = %36
  br label %212

59:                                               ; preds = %4
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = call i32 @celt_apply_preemph_filter(%struct.TYPE_22__* %60, %struct.TYPE_23__* %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @ff_opus_rc_enc_log(i32* %68, i32 0, i32 15)
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = call i32 @celt_enc_quant_pfilter(i32* %70, %struct.TYPE_23__* %71)
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = call i32 @celt_frame_mdct(%struct.TYPE_22__* %74, %struct.TYPE_23__* %75)
  br label %77

77:                                               ; preds = %84, %73
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @ff_opus_psy_celt_frame_process(i32* %79, %struct.TYPE_23__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %87 = call i32 @celt_frame_mdct(%struct.TYPE_22__* %85, %struct.TYPE_23__* %86)
  br label %77

88:                                               ; preds = %77
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @ff_opus_rc_enc_init(i32* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @ff_opus_rc_enc_log(i32* %91, i32 0, i32 15)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %88
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @opus_rc_tell(i32* %98)
  %100 = add nsw i32 %99, 16
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sle i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %108 = call i32 @celt_enc_quant_pfilter(i32* %106, %struct.TYPE_23__* %107)
  br label %109

109:                                              ; preds = %105, %97, %88
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @opus_rc_tell(i32* %115)
  %117 = add nsw i32 %116, 3
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sle i32 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ff_opus_rc_enc_log(i32* %123, i32 %126, i32 3)
  br label %128

128:                                              ; preds = %122, %114, %109
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load i64**, i64*** %132, align 8
  %134 = call i32 @celt_quant_coarse(%struct.TYPE_23__* %129, i32* %130, i64** %133)
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @celt_enc_tf(%struct.TYPE_23__* %135, i32* %136)
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @ff_celt_bitalloc(%struct.TYPE_23__* %138, i32* %139, i32 1)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @celt_quant_fine(%struct.TYPE_23__* %141, i32* %142)
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @ff_celt_quant_bands(%struct.TYPE_23__* %144, i32* %145)
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %128
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ff_opus_rc_put_raw(i32* %152, i32 %155, i32 1)
  br label %157

157:                                              ; preds = %151, %128
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %161 = call i32 @celt_quant_final(%struct.TYPE_22__* %158, i32* %159, %struct.TYPE_23__* %160)
  store i32 0, i32* %10, align 4
  br label %162

162:                                              ; preds = %209, %157
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %212

168:                                              ; preds = %162
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i64 %173
  store %struct.TYPE_24__* %174, %struct.TYPE_24__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %205, %168
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @CELT_MAX_BANDS, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %208

179:                                              ; preds = %175
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %186, %193
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load i64**, i64*** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64*, i64** %197, i64 %199
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64 %194, i64* %204, align 8
  br label %205

205:                                              ; preds = %179
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %175

208:                                              ; preds = %175
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %162

212:                                              ; preds = %58, %162
  ret void
}

declare dso_local i32 @ff_opus_rc_enc_init(i32*) #1

declare dso_local i32 @ff_opus_psy_celt_frame_init(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @celt_frame_setup_input(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ff_opus_rc_enc_log(i32*, i32, i32) #1

declare dso_local i32 @memset(i64*, float, i32) #1

declare dso_local i32 @celt_apply_preemph_filter(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @celt_enc_quant_pfilter(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @celt_frame_mdct(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ff_opus_psy_celt_frame_process(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @opus_rc_tell(i32*) #1

declare dso_local i32 @celt_quant_coarse(%struct.TYPE_23__*, i32*, i64**) #1

declare dso_local i32 @celt_enc_tf(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ff_celt_bitalloc(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @celt_quant_fine(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ff_celt_quant_bands(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ff_opus_rc_put_raw(i32*, i32, i32) #1

declare dso_local i32 @celt_quant_final(%struct.TYPE_22__*, i32*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
