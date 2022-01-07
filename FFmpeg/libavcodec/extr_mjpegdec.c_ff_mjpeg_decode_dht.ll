; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_ff_mjpeg_decode_dht.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_ff_mjpeg_decode_dht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32***, i32***, i32**, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dht: len %d is too large\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"class=%d index=%d nb_codes=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mjpeg_decode_dht(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [17 x i32], align 16
  %12 = alloca [256 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = call i32 @get_bits(i32* %15, i32 16)
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 8, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = call i32 @get_bits_left(i32* %21)
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i32, i8*, i32, ...) @av_log(i32 %27, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %2, align 4
  br label %240

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %238, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %239

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 17
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %2, align 4
  br label %240

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = call i32 @get_bits(i32* %43, i32 4)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %48, i32* %2, align 4
  br label %240

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = call i32 @get_bits(i32* %51, i32 4)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sge i32 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %2, align 4
  br label %240

57:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %59, 16
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = call i32 @get_bits(i32* %63, i32 8)
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [17 x i32], [17 x i32]* %11, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [17 x i32], [17 x i32]* %11, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, 17
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 256
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %77
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %2, align 4
  br label %240

88:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %107, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = call i32 @get_bits(i32* %95, i32 8)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %93
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %89

110:                                              ; preds = %89
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @ff_free_vlc(i32* %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AV_LOG_DEBUG, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 (i32, i32, i8*, i32, ...) @av_log(i32 %127, i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130, i32 %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = getelementptr inbounds [17 x i32], [17 x i32]* %11, i64 0, i64 0
  %145 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %7, align 4
  %149 = icmp sgt i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @build_vlc(i32* %143, i32* %144, i32* %145, i32 %147, i32 0, i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %110
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %2, align 4
  br label %240

155:                                              ; preds = %110
  %156 = load i32, i32* %7, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %155
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = call i32 @ff_free_vlc(i32* %166)
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = getelementptr inbounds [17 x i32], [17 x i32]* %11, i64 0, i64 0
  %177 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  %180 = call i32 @build_vlc(i32* %175, i32* %176, i32* %177, i32 %179, i32 0, i32 0)
  store i32 %180, i32* %13, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %158
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %2, align 4
  br label %240

184:                                              ; preds = %158
  br label %185

185:                                              ; preds = %184, %155
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %209, %185
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 16
  br i1 %188, label %189, label %212

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [17 x i32], [17 x i32]* %11, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32***, i32**** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32**, i32*** %197, i64 %199
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %194, i32* %208, align 4
  br label %209

209:                                              ; preds = %189
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %186

212:                                              ; preds = %186
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %235, %212
  %214 = load i32, i32* %6, align 4
  %215 = icmp slt i32 %214, 256
  br i1 %215, label %216, label %238

216:                                              ; preds = %213
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32***, i32**** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32**, i32*** %223, i64 %225
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %220, i32* %234, align 4
  br label %235

235:                                              ; preds = %216
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %213

238:                                              ; preds = %213
  br label %33

239:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %182, %153, %86, %55, %47, %39, %24
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @build_vlc(i32*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
