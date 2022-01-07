; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_av_frame_apply_cropping.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_av_frame_apply_cropping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i64, i64, i64*, i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_FRAME_CROP_UNALIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_frame_apply_cropping(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %251

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = icmp sge i32 %27, %32
  br i1 %33, label %70, label %34

34:                                               ; preds = %24
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @INT_MAX, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = icmp sge i64 %37, %43
  br i1 %44, label %70, label %45

45:                                               ; preds = %34
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58, %45, %34, %24
  %71 = load i32, i32* @ERANGE, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %251

73:                                               ; preds = %58
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.TYPE_7__* @av_pix_fmt_desc_get(i32 %76)
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %6, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %81, i32* %3, align 4
  br label %251

82:                                               ; preds = %73
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %87 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %82
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  store i32 0, i32* %108, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  store i32 0, i32* %3, align 4
  br label %251

111:                                              ; preds = %82
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = call i32 @calc_cropping_offsets(i64* %112, %struct.TYPE_8__* %113, %struct.TYPE_7__* %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @AV_FRAME_CROP_UNALIGNED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %193, label %120

120:                                              ; preds = %111
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = call i32 @ff_ctz(i64 %129)
  br label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @INT_MAX, align 4
  br label %133

133:                                              ; preds = %131, %125
  %134 = phi i32 [ %130, %125 ], [ %132, %131 ]
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* @INT_MAX, align 4
  store i32 %135, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %164, %133
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 6
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %136
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ff_ctz(i64 %155)
  br label %159

157:                                              ; preds = %145
  %158 = load i32, i32* @INT_MAX, align 4
  br label %159

159:                                              ; preds = %157, %151
  %160 = phi i32 [ %156, %151 ], [ %158, %157 ]
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @FFMIN(i32 %161, i32 %162)
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %136

167:                                              ; preds = %136
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %172, i32* %3, align 4
  br label %251

173:                                              ; preds = %167
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 5
  br i1 %175, label %176, label %192

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 5, %177
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %178, %179
  %181 = shl i32 1, %180
  %182 = sub nsw i32 %181, 1
  %183 = xor i32 %182, -1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = call i32 @calc_cropping_offsets(i64* %188, %struct.TYPE_8__* %189, %struct.TYPE_7__* %190)
  br label %192

192:                                              ; preds = %176, %173
  br label %193

193:                                              ; preds = %192, %111
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %216, %193
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 6
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %194
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 6
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, %207
  store i64 %215, i64* %213, align 8
  br label %216

216:                                              ; preds = %203
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %194

219:                                              ; preds = %194
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %222, %225
  %227 = sext i32 %226 to i64
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %230, %227
  store i64 %231, i64* %229, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %234, %237
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %241, %238
  store i64 %242, i64* %240, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  store i32 0, i32* %244, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 3
  store i32 0, i32* %246, align 4
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 4
  store i64 0, i64* %248, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 5
  store i64 0, i64* %250, align 8
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %219, %171, %91, %80, %70, %21
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_7__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @calc_cropping_offsets(i64*, %struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @ff_ctz(i64) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
