; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_superframe_bsf.c_vp9_superframe_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_superframe_bsf.c_vp9_superframe_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Mixing of superframe syntax and naked VP9 frames not supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@MAX_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Too many invisible frames\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @vp9_superframe_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_superframe_filter(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__* %20, %struct.TYPE_17__* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %229

27:                                               ; preds = %2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 224
  %40 = icmp eq i32 %39, 192
  br i1 %40, label %41, label %75

41:                                               ; preds = %27
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 3
  %44 = and i32 %43, 3
  %45 = add nsw i32 1, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 7
  %48 = add nsw i32 1, %47
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 2, %51
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %41
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %69, %70
  br label %72

72:                                               ; preds = %58, %41
  %73 = phi i1 [ false, %41 ], [ %71, %58 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %27
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @init_get_bits8(i32* %6, i32* %78, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %221

85:                                               ; preds = %75
  %86 = call i32 @get_bits(i32* %6, i32 2)
  %87 = call i32 @get_bits1(i32* %6)
  store i32 %87, i32* %10, align 4
  %88 = call i32 @get_bits1(i32* %6)
  %89 = shl i32 %88, 1
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = call i32 @get_bits1(i32* %6)
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %85
  %99 = call i32 @get_bits1(i32* %6)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %108

102:                                              ; preds = %98
  %103 = call i32 @get_bits1(i32* %6)
  %104 = call i32 @get_bits1(i32* %6)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %102, %101
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 @av_log(%struct.TYPE_18__* %117, i32 %118, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %120 = load i32, i32* @ENOSYS, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %8, align 4
  br label %221

122:                                              ; preds = %111, %108
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %229

134:                                              ; preds = %128, %125
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* @MAX_CACHE, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = call i32 @av_log(%struct.TYPE_18__* %142, i32 %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %145, i32* %8, align 4
  br label %221

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %151, i64 %156
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %160 = call i32 @av_packet_move_ref(%struct.TYPE_17__* %158, %struct.TYPE_17__* %159)
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  %164 = load i32, i32* @EAGAIN, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %3, align 4
  br label %229

166:                                              ; preds = %148
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @av_assert0(i32 %171)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = call i32 @merge_superframe(%struct.TYPE_17__** %175, i32 %178, %struct.TYPE_17__* %179)
  store i32 %180, i32* %8, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %166
  br label %221

183:                                              ; preds = %166
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %186, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %187, i64 %192
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = call i32 @av_packet_copy_props(%struct.TYPE_17__* %184, %struct.TYPE_17__* %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %183
  br label %221

199:                                              ; preds = %183
  store i32 0, i32* %13, align 4
  br label %200

200:                                              ; preds = %215, %199
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %218

206:                                              ; preds = %200
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %209, i64 %211
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = call i32 @av_packet_unref(%struct.TYPE_17__* %213)
  br label %215

215:                                              ; preds = %206
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %200

218:                                              ; preds = %200
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  br label %221

221:                                              ; preds = %218, %198, %182, %141, %116, %84
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %226 = call i32 @av_packet_unref(%struct.TYPE_17__* %225)
  br label %227

227:                                              ; preds = %224, %221
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %163, %133, %25
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @merge_superframe(%struct.TYPE_17__**, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @av_packet_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
