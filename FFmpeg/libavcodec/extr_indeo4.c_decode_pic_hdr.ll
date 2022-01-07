; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo4.c_decode_pic_hdr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo4.c_decode_pic_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_18__, %struct.TYPE_21__*, i8*, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid picture start code!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid frame type: %d\0A\00", align 1
@IVI4_FRAMETYPE_BIDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Sync bit is set!\0A\00", align 1
@IVI4_FRAMETYPE_NULL_FIRST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Null frame encountered!\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Password-protected clip!\0A\00", align 1
@IVI4_PIC_SIZE_ESC = common dso_local global i32 0, align 4
@ivi4_common_pic_sizes = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Only YVU9 picture format is supported!\0A\00", align 1
@AV_PIX_FMT_YUV410P = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"picture dimensions %d %d cannot be decoded\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Scalability: unsupported subdivision! Luma bands: %d, chroma bands: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Couldn't reallocate color planes!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Couldn't reallocate internal structures!\0A\00", align 1
@IVI_MB_HUFF = common dso_local global i32 0, align 4
@IVI_BLK_HUFF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Pic hdr extension encountered!\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Bad blocks bits encountered!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @decode_pic_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pic_hdr(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 10
  %12 = call i32 @get_bits(i32* %11, i32 18)
  %13 = icmp ne i32 %12, 262136
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %15, i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %18, i32* %3, align 4
  br label %506

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 10
  %27 = call i32 @get_bits(i32* %26, i32 3)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %35, i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %3, align 4
  br label %506

42:                                               ; preds = %19
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IVI4_FRAMETYPE_BIDIR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 10
  %54 = call i8* @get_bits1(i32* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 18
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 10
  %59 = call i8* @get_bits1(i32* %58)
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %62, i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %3, align 4
  br label %506

66:                                               ; preds = %51
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 10
  %69 = call i8* @get_bits1(i32* %68)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 10
  %74 = call i32 @get_bits(i32* %73, i32 24)
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 0, %75 ]
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IVI4_FRAMETYPE_NULL_FIRST, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = call i32 @ff_dlog(%struct.TYPE_20__* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %506

88:                                               ; preds = %76
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 10
  %91 = call i8* @get_bits1(i32* %90)
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 10
  %96 = call i32 @skip_bits_long(i32* %95, i32 32)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = call i32 @ff_dlog(%struct.TYPE_20__* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 10
  %102 = call i32 @get_bits(i32* %101, i32 3)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @IVI4_PIC_SIZE_ESC, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 10
  %109 = call i32 @get_bits(i32* %108, i32 16)
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 10
  %113 = call i32 @get_bits(i32* %112, i32 16)
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  br label %133

115:                                              ; preds = %99
  %116 = load i8**, i8*** @ivi4_common_pic_sizes, align 8
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 %117, 2
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %116, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = load i8**, i8*** @ivi4_common_pic_sizes, align 8
  %126 = load i32, i32* %6, align 4
  %127 = mul nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %115, %106
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 10
  %136 = call i8* @get_bits1(i32* %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 17
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 17
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %160

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 10
  %148 = call i32 @get_bits(i32* %147, i32 4)
  %149 = call i8* @scale_tile_size(i32 %145, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %150, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 10
  %156 = call i32 @get_bits(i32* %155, i32 4)
  %157 = call i8* @scale_tile_size(i32 %153, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 %158, i32* %159, align 4
  br label %167

160:                                              ; preds = %133
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %162, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %160, %143
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 10
  %170 = call i32 @get_bits(i32* %169, i32 2)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %173, i32 %174, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %176, i32* %3, align 4
  br label %506

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 3
  %181 = ashr i32 %180, 2
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32 %181, i32* %182, align 4
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 3
  %186 = ashr i32 %185, 2
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i32 %186, i32* %187, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 10
  %190 = call i8* @decode_plane_subdivision(i32* %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  store i32 %191, i32* %192, align 4
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  store i32 0, i32* %193, align 4
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %177
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 10
  %200 = call i8* @decode_plane_subdivision(i32* %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %197, %177
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @AV_PIX_FMT_YUV410P, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %213 = call i64 @av_image_check_size2(i32 %205, i32 %207, i32 %210, i32 %211, i32 0, %struct.TYPE_20__* %212)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %203
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %217 = load i32, i32* @AV_LOG_ERROR, align 4
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %216, i32 %217, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %219, i32 %221)
  %223 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %223, i32* %3, align 4
  br label %506

224:                                              ; preds = %203
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 1
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 1
  br label %232

232:                                              ; preds = %228, %224
  %233 = phi i1 [ true, %224 ], [ %231, %228 ]
  %234 = zext i1 %233 to i32
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 4
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %249, label %258

249:                                              ; preds = %245, %241
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %251 = load i32, i32* @AV_LOG_ERROR, align 4
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %250, i32 %251, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i32 %253, i32 %255)
  %257 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %257, i32* %3, align 4
  br label %506

258:                                              ; preds = %245, %232
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 15
  %261 = call i64 @ivi_pic_config_cmp(%struct.TYPE_18__* %9, %struct.TYPE_18__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %372

263:                                              ; preds = %258
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 16
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %266, align 8
  %268 = call i64 @ff_ivi_init_planes(%struct.TYPE_20__* %264, %struct.TYPE_21__* %267, %struct.TYPE_18__* %9, i32 1)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %263
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %272 = load i32, i32* @AV_LOG_ERROR, align 4
  %273 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %271, i32 %272, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 15
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 6
  store i32 0, i32* %276, align 8
  %277 = load i32, i32* @ENOMEM, align 4
  %278 = call i32 @AVERROR(i32 %277)
  store i32 %278, i32* %3, align 4
  br label %506

279:                                              ; preds = %263
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 15
  %282 = bitcast %struct.TYPE_18__* %281 to i8*
  %283 = bitcast %struct.TYPE_18__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %282, i8* align 4 %283, i64 32, i1 false)
  store i32 0, i32* %8, align 4
  br label %284

284:                                              ; preds = %348, %279
  %285 = load i32, i32* %8, align 4
  %286 = icmp sle i32 %285, 2
  br i1 %286, label %287, label %351

287:                                              ; preds = %284
  store i32 0, i32* %7, align 4
  br label %288

288:                                              ; preds = %344, %287
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %294 = load i32, i32* %293, align 4
  br label %298

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  br label %298

298:                                              ; preds = %295, %292
  %299 = phi i32 [ %294, %292 ], [ %297, %295 ]
  %300 = icmp slt i32 %289, %299
  br i1 %300, label %301, label %347

301:                                              ; preds = %298
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %312, label %304

304:                                              ; preds = %301
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 16, i32 8
  br label %313

312:                                              ; preds = %301
  br label %313

313:                                              ; preds = %312, %304
  %314 = phi i32 [ %311, %304 ], [ 4, %312 ]
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 16
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  store i32 %314, i32* %326, align 4
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i64
  %331 = select i1 %329, i32 8, i32 4
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 16
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %333, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %338, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 1
  store i32 %331, i32* %343, align 4
  br label %344

344:                                              ; preds = %313
  %345 = load i32, i32* %7, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %7, align 4
  br label %288

347:                                              ; preds = %298
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  br label %284

351:                                              ; preds = %284
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 16
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %353, align 8
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 15
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 15
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = call i64 @ff_ivi_init_tiles(%struct.TYPE_21__* %354, i32 %358, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %351
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %367 = load i32, i32* @AV_LOG_ERROR, align 4
  %368 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %366, i32 %367, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %369 = load i32, i32* @ENOMEM, align 4
  %370 = call i32 @AVERROR(i32 %369)
  store i32 %370, i32* %3, align 4
  br label %506

371:                                              ; preds = %351
  br label %372

372:                                              ; preds = %371, %258
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 10
  %375 = call i8* @get_bits1(i32* %374)
  %376 = icmp ne i8* %375, null
  br i1 %376, label %377, label %381

377:                                              ; preds = %372
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 10
  %380 = call i32 @get_bits(i32* %379, i32 20)
  br label %382

381:                                              ; preds = %372
  br label %382

382:                                              ; preds = %381, %377
  %383 = phi i32 [ %380, %377 ], [ 0, %381 ]
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i32 0, i32 5
  store i32 %383, i32* %385, align 4
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 10
  %388 = call i8* @get_bits1(i32* %387)
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %394

390:                                              ; preds = %382
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 10
  %393 = call i32 @skip_bits(i32* %392, i32 8)
  br label %394

394:                                              ; preds = %390, %382
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %395, i32 0, i32 10
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 10
  %399 = call i8* @get_bits1(i32* %398)
  %400 = load i32, i32* @IVI_MB_HUFF, align 4
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 14
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %404 = call i64 @ff_ivi_dec_huff_desc(i32* %396, i8* %399, i32 %400, i32* %402, %struct.TYPE_20__* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %418, label %406

406:                                              ; preds = %394
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 10
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 10
  %411 = call i8* @get_bits1(i32* %410)
  %412 = load i32, i32* @IVI_BLK_HUFF, align 4
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 13
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %416 = call i64 @ff_ivi_dec_huff_desc(i32* %408, i8* %411, i32 %412, i32* %414, %struct.TYPE_20__* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %406, %394
  %419 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %419, i32* %3, align 4
  br label %506

420:                                              ; preds = %406
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 10
  %423 = call i8* @get_bits1(i32* %422)
  %424 = icmp ne i8* %423, null
  br i1 %424, label %425, label %429

425:                                              ; preds = %420
  %426 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 10
  %428 = call i32 @get_bits(i32* %427, i32 3)
  br label %430

429:                                              ; preds = %420
  br label %430

430:                                              ; preds = %429, %425
  %431 = phi i32 [ %428, %425 ], [ 8, %429 ]
  %432 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %432, i32 0, i32 6
  store i32 %431, i32* %433, align 8
  %434 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 10
  %436 = call i8* @get_bits1(i32* %435)
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 12
  store i8* %436, i8** %438, align 8
  %439 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %439, i32 0, i32 10
  %441 = call i8* @get_bits1(i32* %440)
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 11
  store i8* %441, i8** %443, align 8
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 10
  %446 = call i32 @get_bits(i32* %445, i32 5)
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i32 0, i32 7
  store i32 %446, i32* %448, align 4
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 10
  %451 = call i8* @get_bits1(i32* %450)
  %452 = icmp ne i8* %451, null
  br i1 %452, label %453, label %457

453:                                              ; preds = %430
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i32 0, i32 10
  %456 = call i32 @get_bits(i32* %455, i32 3)
  br label %458

457:                                              ; preds = %430
  br label %458

458:                                              ; preds = %457, %453
  %459 = phi i32 [ %456, %453 ], [ 0, %457 ]
  %460 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %460, i32 0, i32 8
  store i32 %459, i32* %461, align 8
  %462 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 10
  %464 = call i8* @get_bits1(i32* %463)
  %465 = icmp ne i8* %464, null
  br i1 %465, label %466, label %470

466:                                              ; preds = %458
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 10
  %469 = call i32 @get_bits(i32* %468, i32 16)
  br label %471

470:                                              ; preds = %458
  br label %471

471:                                              ; preds = %470, %466
  %472 = phi i32 [ %469, %466 ], [ 0, %470 ]
  %473 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 9
  store i32 %472, i32* %474, align 4
  br label %475

475:                                              ; preds = %489, %471
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i32 0, i32 10
  %478 = call i8* @get_bits1(i32* %477)
  %479 = icmp ne i8* %478, null
  br i1 %479, label %480, label %493

480:                                              ; preds = %475
  %481 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %482 = call i32 @ff_dlog(%struct.TYPE_20__* %481, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %483 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %483, i32 0, i32 10
  %485 = call i32 @get_bits_left(i32* %484)
  %486 = icmp slt i32 %485, 10
  br i1 %486, label %487, label %489

487:                                              ; preds = %480
  %488 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %488, i32* %3, align 4
  br label %506

489:                                              ; preds = %480
  %490 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 10
  %492 = call i32 @skip_bits(i32* %491, i32 8)
  br label %475

493:                                              ; preds = %475
  %494 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %494, i32 0, i32 10
  %496 = call i8* @get_bits1(i32* %495)
  %497 = icmp ne i8* %496, null
  br i1 %497, label %498, label %502

498:                                              ; preds = %493
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %500 = load i32, i32* @AV_LOG_ERROR, align 4
  %501 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %499, i32 %500, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %502

502:                                              ; preds = %498, %493
  %503 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i32 0, i32 10
  %505 = call i32 @align_get_bits(i32* %504)
  store i32 0, i32* %3, align 4
  br label %506

506:                                              ; preds = %502, %487, %418, %365, %270, %249, %215, %172, %85, %61, %34, %14
  %507 = load i32, i32* %3, align 4
  ret i32 %507
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i8* @scale_tile_size(i32, i32) #1

declare dso_local i8* @decode_plane_subdivision(i32*) #1

declare dso_local i64 @av_image_check_size2(i32, i32, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i64 @ivi_pic_config_cmp(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @ff_ivi_init_planes(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ff_ivi_init_tiles(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i64 @ff_ivi_dec_huff_desc(i32*, i8*, i32, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
