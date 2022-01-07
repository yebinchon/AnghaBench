; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_16__*, i32*, i32* }
%struct.TYPE_16__ = type { i32, i32 (i32, i32)*, i32 (i32, i32, i32*)* }
%struct.TYPE_18__ = type { i32, i32, i64* }

@LADSPA_PROPERTY_INPLACE_BROKEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = icmp eq i32 %20, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @av_assert0(i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = call i64 @av_frame_is_writable(%struct.TYPE_18__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @LADSPA_PROPERTY_INPLACE_BROKEN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %47, %2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %8, align 8
  br label %78

58:                                               ; preds = %47, %39, %35
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_18__* @ff_get_audio_buffer(i32 %63, i32 %66)
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %8, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = icmp ne %struct.TYPE_18__* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %259

74:                                               ; preds = %58
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %75, %struct.TYPE_18__* %76)
  br label %78

78:                                               ; preds = %74, %56
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = icmp eq i32 %86, %93
  br label %95

95:                                               ; preds = %83, %78
  %96 = phi i1 [ true, %78 ], [ %94, %83 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @av_assert0(i32 %97)
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %220, %95
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %223

105:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %151, %105
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %154

112:                                              ; preds = %106
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  br label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %11, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %126, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 6
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 9
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = call i32 %127(i32 %134, i32 %141, i32* %149)
  br label %151

151:                                              ; preds = %121
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %106

154:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %200, %154
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %203

161:                                              ; preds = %155
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* %10, align 4
  br label %170

168:                                              ; preds = %161
  %169 = load i32, i32* %9, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  store i32 %171, i32* %11, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 8
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i32*
  %199 = call i32 %176(i32 %183, i32 %190, i32* %198)
  br label %200

200:                                              ; preds = %170
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %155

203:                                              ; preds = %155
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 7
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i32 (i32, i32)*, i32 (i32, i32)** %207, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 6
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 %208(i32 %215, i32 %218)
  br label %220

220:                                              ; preds = %203
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %99

223:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %242, %223
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %224
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %232 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @print_ctl_info(%struct.TYPE_20__* %231, i32 %232, %struct.TYPE_17__* %233, i32 %234, i32 %237, i32 %240, i32 1)
  br label %242

242:                                              ; preds = %230
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %9, align 4
  br label %224

245:                                              ; preds = %224
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %248 = icmp ne %struct.TYPE_18__* %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  br label %251

251:                                              ; preds = %249, %245
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %258 = call i32 @ff_filter_frame(i32 %256, %struct.TYPE_18__* %257)
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %251, %70
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @ff_get_audio_buffer(i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @print_ctl_info(%struct.TYPE_20__*, i32, %struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
