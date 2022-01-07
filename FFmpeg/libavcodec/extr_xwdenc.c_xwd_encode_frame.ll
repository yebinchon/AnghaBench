; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xwdenc.c_xwd_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xwdenc.c_xwd_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32, i32**, i32*, i32 }
%struct.TYPE_13__ = type { i32 }

@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4
@XWD_TRUE_COLOR = common dso_local global i32 0, align 4
@XWD_PSEUDO_COLOR = common dso_local global i32 0, align 4
@XWD_STATIC_GRAY = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported pixel format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XWD_HEADER_SIZE = common dso_local global i32 0, align 4
@WINDOW_NAME_SIZE = common dso_local global i32 0, align 4
@XWD_CMAP_SIZE = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@XWD_VERSION = common dso_local global i32 0, align 4
@XWD_Z_PIXMAP = common dso_local global i32 0, align 4
@WINDOW_NAME = common dso_local global i32* null, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*)* @xwd_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xwd_encode_frame(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_15__*, align 8
  %28 = alloca [256 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.TYPE_13__* @av_pix_fmt_desc_get(i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %38 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 12, i1 false)
  store i32 0, i32* %20, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %27, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %41 = call i32 @av_get_bits_per_pixel(%struct.TYPE_13__* %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  store i32 1, i32* %18, align 4
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %121 [
    i32 147, label %51
    i32 139, label %51
    i32 128, label %51
    i32 148, label %51
    i32 146, label %74
    i32 135, label %74
    i32 130, label %83
    i32 131, label %83
    i32 141, label %83
    i32 142, label %83
    i32 132, label %99
    i32 133, label %99
    i32 143, label %99
    i32 144, label %99
    i32 129, label %115
    i32 140, label %115
    i32 134, label %115
    i32 145, label %115
    i32 136, label %115
    i32 138, label %117
    i32 137, label %119
  ]

51:                                               ; preds = %49, %49, %49, %49
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 147
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 148
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  store i32 1, i32* %18, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 148
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %64, label %68

64:                                               ; preds = %61, %58
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 255, i32* %65, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 65280, i32* %66, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 16711680, i32* %67, align 4
  br label %72

68:                                               ; preds = %61
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 16711680, i32* %69, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 65280, i32* %70, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 255, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %64
  store i32 32, i32* %13, align 4
  store i32 24, i32* %12, align 4
  %73 = load i32, i32* @XWD_TRUE_COLOR, align 4
  store i32 %73, i32* %17, align 4
  store i32 32, i32* %14, align 4
  br label %127

74:                                               ; preds = %49, %49
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 135
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %74
  store i32 24, i32* %13, align 4
  %79 = load i32, i32* @XWD_TRUE_COLOR, align 4
  store i32 %79, i32* %17, align 4
  store i32 32, i32* %14, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 16711680, i32* %80, align 4
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 65280, i32* %81, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 255, i32* %82, align 4
  br label %127

83:                                               ; preds = %49, %49, %49, %49
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 141
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 142
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %83
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 31, i32* %90, align 4
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 2016, i32* %91, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 63488, i32* %92, align 4
  br label %97

93:                                               ; preds = %86
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 63488, i32* %94, align 4
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 2016, i32* %95, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 31, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %89
  store i32 16, i32* %13, align 4
  %98 = load i32, i32* @XWD_TRUE_COLOR, align 4
  store i32 %98, i32* %17, align 4
  store i32 16, i32* %14, align 4
  br label %127

99:                                               ; preds = %49, %49, %49, %49
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 143
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 144
  br i1 %104, label %105, label %109

105:                                              ; preds = %102, %99
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 31, i32* %106, align 4
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 992, i32* %107, align 4
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 31744, i32* %108, align 4
  br label %113

109:                                              ; preds = %102
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 31744, i32* %110, align 4
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 992, i32* %111, align 4
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 31, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %105
  store i32 16, i32* %13, align 4
  %114 = load i32, i32* @XWD_TRUE_COLOR, align 4
  store i32 %114, i32* %17, align 4
  store i32 16, i32* %14, align 4
  br label %127

115:                                              ; preds = %49, %49, %49, %49, %49
  store i32 8, i32* %13, align 4
  %116 = load i32, i32* @XWD_PSEUDO_COLOR, align 4
  store i32 %116, i32* %17, align 4
  store i32 8, i32* %14, align 4
  store i32 256, i32* %15, align 4
  br label %127

117:                                              ; preds = %49
  store i32 8, i32* %13, align 4
  store i32 8, i32* %14, align 4
  %118 = load i32, i32* @XWD_STATIC_GRAY, align 4
  store i32 %118, i32* %17, align 4
  br label %127

119:                                              ; preds = %49
  store i32 1, i32* %18, align 4
  store i32 1, i32* %20, align 4
  store i32 1, i32* %13, align 4
  store i32 8, i32* %14, align 4
  %120 = load i32, i32* @XWD_STATIC_GRAY, align 4
  store i32 %120, i32* %17, align 4
  br label %127

121:                                              ; preds = %49
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(%struct.TYPE_16__* %122, i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = call i32 @AVERROR(i32 %125)
  store i32 %126, i32* %5, align 4
  br label %306

127:                                              ; preds = %119, %117, %115, %113, %97, %78, %72
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @FFALIGN(i32 %132, i32 %133)
  %135 = sdiv i32 %134, 8
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* @XWD_HEADER_SIZE, align 4
  %137 = load i32, i32* @WINDOW_NAME_SIZE, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @XWD_CMAP_SIZE, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %16, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %143, %148
  store i32 %149, i32* %23, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %152 = load i32, i32* %23, align 4
  %153 = call i32 @ff_alloc_packet2(%struct.TYPE_16__* %150, %struct.TYPE_14__* %151, i32 %152, i32 0)
  store i32 %153, i32* %24, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %127
  %156 = load i32, i32* %24, align 4
  store i32 %156, i32* %5, align 4
  br label %306

157:                                              ; preds = %127
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %26, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %21, align 4
  %167 = call i32 @bytestream_put_be32(i32** %26, i32 %166)
  %168 = load i32, i32* @XWD_VERSION, align 4
  %169 = call i32 @bytestream_put_be32(i32** %26, i32 %168)
  %170 = load i32, i32* @XWD_Z_PIXMAP, align 4
  %171 = call i32 @bytestream_put_be32(i32** %26, i32 %170)
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @bytestream_put_be32(i32** %26, i32 %172)
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @bytestream_put_be32(i32** %26, i32 %176)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @bytestream_put_be32(i32** %26, i32 %180)
  %182 = call i32 @bytestream_put_be32(i32** %26, i32 0)
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @bytestream_put_be32(i32** %26, i32 %183)
  %185 = call i32 @bytestream_put_be32(i32** %26, i32 32)
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @bytestream_put_be32(i32** %26, i32 %186)
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @bytestream_put_be32(i32** %26, i32 %188)
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @bytestream_put_be32(i32** %26, i32 %190)
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @bytestream_put_be32(i32** %26, i32 %192)
  %194 = load i32, i32* %17, align 4
  %195 = call i32 @bytestream_put_be32(i32** %26, i32 %194)
  %196 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @bytestream_put_be32(i32** %26, i32 %197)
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @bytestream_put_be32(i32** %26, i32 %200)
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @bytestream_put_be32(i32** %26, i32 %203)
  %205 = call i32 @bytestream_put_be32(i32** %26, i32 8)
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @bytestream_put_be32(i32** %26, i32 %206)
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @bytestream_put_be32(i32** %26, i32 %208)
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @bytestream_put_be32(i32** %26, i32 %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @bytestream_put_be32(i32** %26, i32 %216)
  %218 = call i32 @bytestream_put_be32(i32** %26, i32 0)
  %219 = call i32 @bytestream_put_be32(i32** %26, i32 0)
  %220 = call i32 @bytestream_put_be32(i32** %26, i32 0)
  %221 = load i32*, i32** @WINDOW_NAME, align 8
  %222 = load i32, i32* @WINDOW_NAME_SIZE, align 4
  %223 = call i32 @bytestream_put_buffer(i32** %26, i32* %221, i32 %222)
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, 136
  br i1 %225, label %226, label %234

226:                                              ; preds = %157
  %227 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 0
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  %230 = load i32**, i32*** %229, align 8
  %231 = getelementptr inbounds i32*, i32** %230, i64 1
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @memcpy(i32* %227, i32* %232, i32 1024)
  br label %238

234:                                              ; preds = %157
  %235 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 0
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @avpriv_set_systematic_pal2(i32* %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %226
  store i32 0, i32* %22, align 4
  br label %239

239:                                              ; preds = %269, %238
  %240 = load i32, i32* %22, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %272

243:                                              ; preds = %239
  %244 = load i32, i32* %22, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %29, align 4
  %248 = load i32, i32* %29, align 4
  %249 = ashr i32 %248, 16
  %250 = and i32 %249, 255
  store i32 %250, i32* %30, align 4
  %251 = load i32, i32* %29, align 4
  %252 = ashr i32 %251, 8
  %253 = and i32 %252, 255
  store i32 %253, i32* %31, align 4
  %254 = load i32, i32* %29, align 4
  %255 = and i32 %254, 255
  store i32 %255, i32* %32, align 4
  %256 = load i32, i32* %22, align 4
  %257 = call i32 @bytestream_put_be32(i32** %26, i32 %256)
  %258 = load i32, i32* %30, align 4
  %259 = shl i32 %258, 8
  %260 = call i32 @bytestream_put_be16(i32** %26, i32 %259)
  %261 = load i32, i32* %31, align 4
  %262 = shl i32 %261, 8
  %263 = call i32 @bytestream_put_be16(i32** %26, i32 %262)
  %264 = load i32, i32* %32, align 4
  %265 = shl i32 %264, 8
  %266 = call i32 @bytestream_put_be16(i32** %26, i32 %265)
  %267 = call i32 @bytestream_put_byte(i32** %26, i32 7)
  %268 = call i32 @bytestream_put_byte(i32** %26, i32 0)
  br label %269

269:                                              ; preds = %243
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %22, align 4
  br label %239

272:                                              ; preds = %239
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 1
  %275 = load i32**, i32*** %274, align 8
  %276 = getelementptr inbounds i32*, i32** %275, i64 0
  %277 = load i32*, i32** %276, align 8
  store i32* %277, i32** %25, align 8
  store i32 0, i32* %22, align 4
  br label %278

278:                                              ; preds = %296, %272
  %279 = load i32, i32* %22, align 4
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %299

284:                                              ; preds = %278
  %285 = load i32*, i32** %25, align 8
  %286 = load i32, i32* %16, align 4
  %287 = call i32 @bytestream_put_buffer(i32** %26, i32* %285, i32 %286)
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 2
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %25, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32* %295, i32** %25, align 8
  br label %296

296:                                              ; preds = %284
  %297 = load i32, i32* %22, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %22, align 4
  br label %278

299:                                              ; preds = %278
  %300 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 8
  %305 = load i32*, i32** %9, align 8
  store i32 1, i32* %305, align 4
  store i32 0, i32* %5, align 4
  br label %306

306:                                              ; preds = %299, %155, %121
  %307 = load i32, i32* %5, align 4
  ret i32 %307
}

declare dso_local %struct.TYPE_13__* @av_pix_fmt_desc_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_get_bits_per_pixel(%struct.TYPE_13__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @avpriv_set_systematic_pal2(i32*, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
