; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_generic_descriptor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_generic_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_6__, i8*, i8*, i8*, i8*, %struct.TYPE_5__, i8**, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"VideoLineMap element size %d currently not supported\0A\00", align 1
@mxf_sony_mpeg4_extradata = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Duplicate sony_mpeg4_extradata\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mxf_jp2k_rsiz = common dso_local global i32 0, align 4
@FF_PROFILE_JPEG2000_DCINEMA_2K = common dso_local global i32 0, align 4
@FF_PROFILE_JPEG2000_DCINEMA_4K = common dso_local global i32 0, align 4
@AV_PIX_FMT_XYZ12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32, i32)* @mxf_read_generic_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_read_generic_descriptor(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %178 [
    i32 16129, label %21
    i32 12290, label %28
    i32 12292, label %33
    i32 12293, label %39
    i32 12294, label %45
    i32 12801, label %50
    i32 12803, label %56
    i32 12802, label %61
    i32 12812, label %66
    i32 12813, label %71
    i32 12814, label %116
    i32 12818, label %127
    i32 13057, label %132
    i32 13058, label %137
    i32 13064, label %142
    i32 15619, label %147
    i32 15622, label %158
    i32 15623, label %164
    i32 15617, label %169
    i32 13313, label %174
  ]

21:                                               ; preds = %6
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 20
  %27 = call i32 @mxf_read_strong_ref_array(i32* %22, i32* %24, i32* %26)
  store i32 %27, i32* %7, align 4
  br label %241

28:                                               ; preds = %6
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @avio_rb64(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 19
  store i32 %30, i32* %32, align 8
  br label %240

33:                                               ; preds = %6
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @avio_read(i32* %34, i32 %37, i32 16)
  br label %240

39:                                               ; preds = %6
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 17
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @avio_read(i32* %40, i32 %43, i32 16)
  br label %240

45:                                               ; preds = %6
  %46 = load i32*, i32** %9, align 8
  %47 = call i8* @avio_rb32(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 16
  store i8* %47, i8** %49, align 8
  br label %240

50:                                               ; preds = %6
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @avio_read(i32* %51, i32 %54, i32 16)
  br label %240

56:                                               ; preds = %6
  %57 = load i32*, i32** %9, align 8
  %58 = call i8* @avio_rb32(i32* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 15
  store i8* %58, i8** %60, align 8
  br label %240

61:                                               ; preds = %6
  %62 = load i32*, i32** %9, align 8
  %63 = call i8* @avio_rb32(i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 14
  store i8* %63, i8** %65, align 8
  br label %240

66:                                               ; preds = %6
  %67 = load i32*, i32** %9, align 8
  %68 = call i8* @avio_r8(i32* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 13
  store i8* %68, i8** %70, align 8
  br label %240

71:                                               ; preds = %6
  %72 = load i32*, i32** %9, align 8
  %73 = call i8* @avio_rb32(i32* %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i8* @avio_rb32(i32* %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %111

80:                                               ; preds = %71
  %81 = load i32, i32* %15, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32*, i32** %9, align 8
  %85 = call i8* @avio_rb32(i32* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 12
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %85, i8** %89, align 8
  br label %95

90:                                               ; preds = %80
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 12
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  store i8* null, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %83
  %96 = load i32, i32* %15, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32*, i32** %9, align 8
  %100 = call i8* @avio_rb32(i32* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 12
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  store i8* %100, i8** %104, align 8
  br label %110

105:                                              ; preds = %95
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 12
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  store i8* null, i8** %109, align 8
  br label %110

110:                                              ; preds = %105, %98
  br label %115

111:                                              ; preds = %71
  %112 = load i32, i32* @AV_LOG_WARNING, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %110
  br label %240

116:                                              ; preds = %6
  %117 = load i32*, i32** %9, align 8
  %118 = call i8* @avio_rb32(i32* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i8* @avio_rb32(i32* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  br label %240

127:                                              ; preds = %6
  %128 = load i32*, i32** %9, align 8
  %129 = call i8* @avio_r8(i32* %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 10
  store i8* %129, i8** %131, align 8
  br label %240

132:                                              ; preds = %6
  %133 = load i32*, i32** %9, align 8
  %134 = call i8* @avio_rb32(i32* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 9
  store i8* %134, i8** %136, align 8
  br label %240

137:                                              ; preds = %6
  %138 = load i32*, i32** %9, align 8
  %139 = call i8* @avio_rb32(i32* %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 8
  store i8* %139, i8** %141, align 8
  br label %240

142:                                              ; preds = %6
  %143 = load i32*, i32** %9, align 8
  %144 = call i8* @avio_rb32(i32* %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 7
  store i8* %144, i8** %146, align 8
  br label %240

147:                                              ; preds = %6
  %148 = load i32*, i32** %9, align 8
  %149 = call i8* @avio_rb32(i32* %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i8* %149, i8** %152, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = call i8* @avio_rb32(i32* %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  br label %240

158:                                              ; preds = %6
  %159 = load i32*, i32** %9, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @avio_read(i32* %159, i32 %162, i32 16)
  br label %240

164:                                              ; preds = %6
  %165 = load i32*, i32** %9, align 8
  %166 = call i8* @avio_rb32(i32* %165)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  br label %240

169:                                              ; preds = %6
  %170 = load i32*, i32** %9, align 8
  %171 = call i8* @avio_rb32(i32* %170)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  br label %240

174:                                              ; preds = %6
  %175 = load i32*, i32** %9, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %177 = call i32 @mxf_read_pixel_layout(i32* %175, %struct.TYPE_7__* %176)
  br label %240

178:                                              ; preds = %6
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @mxf_sony_mpeg4_extradata, align 4
  %181 = call i32 @IS_KLV_KEY(i32 %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %219

183:                                              ; preds = %178
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32, i32* @AV_LOG_WARNING, align 4
  %190 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %189, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %183
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @av_free(i32 %194)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @av_malloc(i32 %198)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %191
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = call i32 @AVERROR(i32 %207)
  store i32 %208, i32* %7, align 4
  br label %241

209:                                              ; preds = %191
  %210 = load i32, i32* %11, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @avio_read(i32* %213, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %209, %178
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @mxf_jp2k_rsiz, align 4
  %222 = call i32 @IS_KLV_KEY(i32 %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %219
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 @avio_rb16(i32* %225)
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* @FF_PROFILE_JPEG2000_DCINEMA_2K, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %224
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* @FF_PROFILE_JPEG2000_DCINEMA_4K, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %230, %224
  %235 = load i32, i32* @AV_PIX_FMT_XYZ12, align 4
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %234, %230
  br label %239

239:                                              ; preds = %238, %219
  br label %240

240:                                              ; preds = %239, %174, %169, %164, %158, %147, %142, %137, %132, %127, %116, %115, %66, %61, %56, %50, %45, %39, %33, %28
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %240, %206, %21
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i32 @mxf_read_strong_ref_array(i32*, i32*, i32*) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @avio_read(i32*, i32, i32) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i8* @avio_r8(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @mxf_read_pixel_layout(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @IS_KLV_KEY(i32, i32) #1

declare dso_local i32 @av_free(i32) #1

declare dso_local i32 @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_rb16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
