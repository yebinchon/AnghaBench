; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gifdec.c_gif_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gifdec.c_gif_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GIF_TRAILER = common dso_local global i32 0, align 4
@GIF_EXTENSION_INTRODUCER = common dso_local global i32 0, align 4
@GIF_COM_EXT_LABEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@GIF_GCE_EXT_LABEL = common dso_local global i32 0, align 4
@GIF_IMAGE_SEPARATOR = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_GIF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @gif_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_read_header(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %4, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @resync(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %2, align 4
  br label %243

31:                                               ; preds = %1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @avio_rl16(i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @avio_rl16(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @avio_r8(i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @avio_skip(i32* %43, i32 1)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @avio_r8(i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %31
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %2, align 4
  br label %243

54:                                               ; preds = %49
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__* %55, i32* null)
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %6, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %243

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 7
  %70 = add nsw i32 %69, 1
  %71 = shl i32 1, %70
  %72 = mul nsw i32 3, %71
  %73 = call i32 @avio_skip(i32* %67, i32 %72)
  br label %74

74:                                               ; preds = %66, %62
  br label %75

75:                                               ; preds = %187, %74
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @avio_r8(i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @GIF_TRAILER, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %188

80:                                               ; preds = %75
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @avio_feof(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %188

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @GIF_EXTENSION_INTRODUCER, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %158

89:                                               ; preds = %85
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @avio_r8(i32* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @GIF_COM_EXT_LABEL, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = call i32 @av_bprint_init(%struct.TYPE_19__* %16, i32 0, i32 -1)
  br label %97

97:                                               ; preds = %101, %95
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @avio_r8(i32* %98)
  store i32 %99, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @avio_read_to_bprint(i32* %102, %struct.TYPE_19__* %16, i32 %103)
  br label %97

105:                                              ; preds = %97
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @av_dict_set(i32* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %109, i32 0)
  %111 = call i32 @av_bprint_finalize(%struct.TYPE_19__* %16, i32* null)
  br label %157

112:                                              ; preds = %89
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @GIF_GCE_EXT_LABEL, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %112
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @avio_r8(i32* %117)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %146

121:                                              ; preds = %116
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @avio_skip(i32* %122, i32 1)
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @avio_rl16(i32* %124)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %19, align 4
  br label %135

135:                                              ; preds = %131, %121
  %136 = load i32, i32* %19, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @FFMIN(i32 %136, i32 %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @avio_skip(i32* %144, i32 1)
  br label %150

146:                                              ; preds = %116
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %18, align 4
  %149 = call i32 @avio_skip(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %135
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @gif_skip_subblocks(i32* %151)
  br label %156

153:                                              ; preds = %112
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @gif_skip_subblocks(i32* %154)
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %105
  br label %187

158:                                              ; preds = %85
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @GIF_IMAGE_SEPARATOR, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %158
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @avio_skip(i32* %163, i32 8)
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @avio_r8(i32* %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = and i32 %167, 128
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* %12, align 4
  %173 = and i32 %172, 7
  %174 = add nsw i32 %173, 1
  %175 = shl i32 1, %174
  %176 = mul nsw i32 3, %175
  %177 = call i32 @avio_skip(i32* %171, i32 %176)
  br label %178

178:                                              ; preds = %170, %162
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @avio_skip(i32* %179, i32 1)
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @gif_skip_subblocks(i32* %181)
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %186

185:                                              ; preds = %158
  br label %188

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %157
  br label %75

188:                                              ; preds = %185, %84, %75
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = call i32 @avpriv_set_pts_info(%struct.TYPE_17__* %189, i32 64, i32 1, i32 100)
  %191 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 4
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* @AV_CODEC_ID_GIF, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 3
  store i32 %196, i32* %200, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  store i32 %201, i32* %205, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 3
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %188
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 15
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  store i32 %223, i32* %228, align 4
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 1
  store i32 64, i32* %233, align 4
  br label %234

234:                                              ; preds = %221, %188
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* @SEEK_SET, align 4
  %237 = call i64 @avio_seek(i32* %235, i32 0, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* @EIO, align 4
  %241 = call i32 @AVERROR(i32 %240)
  store i32 %241, i32* %2, align 4
  br label %243

242:                                              ; preds = %234
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %239, %59, %52, %29
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @resync(i32*) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @avio_read_to_bprint(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i32, i32) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @gif_skip_subblocks(i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @avio_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
