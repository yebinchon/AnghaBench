; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_qdm2_fft_decode_tones.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_qdm2_fft_decode_tones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64*, i64 }

@vlc_tab_fft_tone_offset = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"overread in qdm2_fft_decode_tones()\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"qdm2_fft_decode_tones() stuck\0A\00", align 1
@fft_level_index_table = common dso_local global i64* null, align 8
@fft_level_exp_vlc = common dso_local global i32 0, align 4
@fft_level_exp_alt_vlc = common dso_local global i32 0, align 4
@fft_stereo_exp_vlc = common dso_local global i32 0, align 4
@fft_stereo_phase_vlc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*, i32)* @qdm2_fft_decode_tones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdm2_fft_decode_tones(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %20, align 4
  store i32 2, i32* %19, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 4, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = shl i32 1, %31
  store i32 %32, i32* %16, align 4
  store i32 1, i32* %22, align 4
  br label %33

33:                                               ; preds = %231, %4
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @get_bits_left(i32* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %234

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %85, %42
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** @vlc_tab_fft_tone_offset, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @qdm2_get_vlc(i32* %44, i32* %48, i32 1, i32 2)
  store i32 %49, i32* %21, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %86

51:                                               ; preds = %43
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @get_bits_left(i32* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 @av_log(i32* null, i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  br label %234

65:                                               ; preds = %51
  store i32 1, i32* %22, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %20, align 4
  br label %85

76:                                               ; preds = %65
  %77 = load i32, i32* %16, align 4
  %78 = mul nsw i32 8, %77
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = shl i32 8, %81
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %76, %68
  br label %43

86:                                               ; preds = %43
  %87 = load i32, i32* %21, align 4
  %88 = sub nsw i32 %87, 2
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %22, align 4
  br label %125

91:                                               ; preds = %37
  %92 = load i32, i32* %16, align 4
  %93 = icmp sle i32 %92, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 @av_log(i32* null, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %234

97:                                               ; preds = %91
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** @vlc_tab_fft_tone_offset, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @qdm2_get_vlc(i32* %98, i32* %102, i32 1, i32 2)
  %104 = load i32, i32* %22, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %22, align 4
  br label %106

106:                                              ; preds = %111, %97
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %16, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp sge i32 %107, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load i32, i32* %16, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sub nsw i32 1, %113
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %22, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = shl i32 1, %120
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %20, align 4
  br label %106

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %86
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %234

132:                                              ; preds = %125
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %14, align 4
  %135 = ashr i32 %133, %134
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i64*, i64** @fft_level_index_table, align 8
  %138 = call i32 @FF_ARRAY_ELEMS(i64* %137)
  %139 = icmp sge i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %234

141:                                              ; preds = %132
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @get_bits1(i32* %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @get_bits1(i32* %149)
  store i32 %150, i32* %10, align 4
  br label %152

151:                                              ; preds = %141
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %151, %146
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32* @fft_level_exp_vlc, i32* @fft_level_exp_alt_vlc
  %158 = call i32 @qdm2_get_vlc(i32* %153, i32* %157, i32 0, i32 2)
  store i32 %158, i32* %12, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i64*, i64** %160, align 8
  %162 = load i64*, i64** @fft_level_index_table, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i64, i64* %161, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %152
  br label %178

176:                                              ; preds = %152
  %177 = load i32, i32* %12, align 4
  br label %178

178:                                              ; preds = %176, %175
  %179 = phi i32 [ 0, %175 ], [ %177, %176 ]
  store i32 %179, i32* %12, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @get_bits(i32* %180, i32 3)
  store i32 %181, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %178
  %185 = load i32, i32* %12, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = call i32 @qdm2_get_vlc(i32* %186, i32* @fft_stereo_exp_vlc, i32 0, i32 1)
  %188 = sub nsw i32 %185, %187
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @qdm2_get_vlc(i32* %190, i32* @fft_stereo_phase_vlc, i32 0, i32 1)
  %192 = sub nsw i32 %189, %191
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %184
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 8
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %195, %184
  br label %199

199:                                              ; preds = %198, %178
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  %205 = icmp sgt i32 %202, %204
  br i1 %205, label %206, label %231

206:                                              ; preds = %199
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %20, align 4
  %209 = add nsw i32 %207, %208
  store i32 %209, i32* %23, align 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @qdm2_fft_init_coefficient(%struct.TYPE_4__* %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %206
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %22, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %9, align 4
  %226 = sub nsw i32 1, %225
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @qdm2_fft_init_coefficient(%struct.TYPE_4__* %221, i32 %222, i32 %223, i32 %224, i32 %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %220, %206
  br label %231

231:                                              ; preds = %230, %199
  %232 = load i32, i32* %22, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %22, align 4
  br label %33

234:                                              ; preds = %64, %94, %131, %140, %33
  ret void
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @qdm2_get_vlc(i32*, i32*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i64*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @qdm2_fft_init_coefficient(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
