; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dsfdec.c_dsf_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dsfdec.c_dsf_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__*, %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown format version\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown format id\00", align 1
@dsf_channel_layout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"channel type %i\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_DSD_LSBF_PLANAR = common dso_local global i32 0, align 4
@AV_CODEC_ID_DSD_MSBF_PLANAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unknown most significant bit\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"block_align overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @dsf_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsf_read_header(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %4, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = call i32 @avio_skip(%struct.TYPE_22__* %15, i32 4)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = call i32 @avio_rl64(%struct.TYPE_22__* %17)
  %19 = icmp ne i32 %18, 28
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %2, align 4
  br label %254

22:                                               ; preds = %1
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = call %struct.TYPE_21__* @avformat_new_stream(%struct.TYPE_23__* %23, i32* null)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %6, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %254

30:                                               ; preds = %22
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = call i32 @avio_skip(%struct.TYPE_22__* %31, i32 8)
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = call i32 @avio_rl64(%struct.TYPE_22__* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @read_id3(%struct.TYPE_23__* %42, i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i32 @avio_seek(%struct.TYPE_22__* %45, i32 28, i32 %46)
  br label %48

48:                                               ; preds = %41, %30
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = call i32 @avio_rl32(%struct.TYPE_22__* %49)
  %51 = call i32 @MKTAG(i8 signext 102, i8 signext 109, i8 signext 116, i8 signext 32)
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = call i32 @avio_rl64(%struct.TYPE_22__* %54)
  %56 = icmp ne i32 %55, 52
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %48
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %2, align 4
  br label %254

59:                                               ; preds = %53
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = call i32 @avio_rl32(%struct.TYPE_22__* %60)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = call i32 (%struct.TYPE_23__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_23__* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %2, align 4
  br label %254

67:                                               ; preds = %59
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = call i32 @avio_rl32(%struct.TYPE_22__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = call i32 (%struct.TYPE_23__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_23__* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %2, align 4
  br label %254

75:                                               ; preds = %67
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = call i32 @avio_rl32(%struct.TYPE_22__* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32*, i32** @dsf_channel_layout, align 8
  %80 = call i32 @FF_ARRAY_ELEMS(i32* %79)
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i32*, i32** @dsf_channel_layout, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 6
  store i32 %87, i32* %91, align 8
  br label %92

92:                                               ; preds = %82, %75
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (%struct.TYPE_23__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_23__* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %92
  %104 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 5
  store i32 %104, i32* %108, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = call i32 @avio_rl32(%struct.TYPE_22__* %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = call i32 @avio_rl32(%struct.TYPE_22__* %115)
  %117 = sdiv i32 %116, 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %103
  %129 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %129, i32* %2, align 4
  br label %254

130:                                              ; preds = %103
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = call i32 @avio_rl32(%struct.TYPE_22__* %131)
  switch i32 %132, label %145 [
    i32 1, label %133
    i32 8, label %139
  ]

133:                                              ; preds = %130
  %134 = load i32, i32* @AV_CODEC_ID_DSD_LSBF_PLANAR, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  store i32 %134, i32* %138, align 8
  br label %149

139:                                              ; preds = %130
  %140 = load i32, i32* @AV_CODEC_ID_DSD_MSBF_PLANAR, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  store i32 %140, i32* %144, align 8
  br label %149

145:                                              ; preds = %130
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %147 = call i32 (%struct.TYPE_23__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_23__* %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %148, i32* %2, align 4
  br label %254

149:                                              ; preds = %139, %133
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = call i32 @avio_rl64(%struct.TYPE_22__* %150)
  %152 = sdiv i32 %151, 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %152, %157
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %162 = call i32 @avio_rl32(%struct.TYPE_22__* %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  store i32 %162, i32* %166, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @INT_MAX, align 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sdiv i32 %172, %177
  %179 = icmp sgt i32 %171, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %149
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %182 = call i32 (%struct.TYPE_23__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_23__* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %183, i32* %2, align 4
  br label %254

184:                                              ; preds = %149
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %194, %189
  store i32 %195, i32* %193, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  %207 = sext i32 %206 to i64
  %208 = mul nsw i64 %207, 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 3
  store i64 %208, i64* %212, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = call i32 @avpriv_set_pts_info(%struct.TYPE_21__* %213, i32 64, i32 1, i64 %219)
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %222 = call i32 @avio_skip(%struct.TYPE_22__* %221, i32 4)
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %224 = call i8* @avio_tell(%struct.TYPE_22__* %223)
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %229 = call i32 @avio_rl32(%struct.TYPE_22__* %228)
  %230 = call i32 @MKTAG(i8 signext 100, i8 signext 97, i8 signext 116, i8 signext 97)
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %184
  %233 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %233, i32* %2, align 4
  br label %254

234:                                              ; preds = %184
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %236 = call i32 @avio_rl64(%struct.TYPE_22__* %235)
  %237 = sub nsw i32 %236, 12
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 12
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 4
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %249 = call i8* @avio_tell(%struct.TYPE_22__* %248)
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  store i8* %249, i8** %253, align 8
  store i32 0, i32* %2, align 4
  br label %254

254:                                              ; preds = %234, %232, %180, %145, %128, %71, %63, %57, %27, %20
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @avio_skip(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @avio_rl64(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @avformat_new_stream(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @read_id3(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_22__*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_21__*, i32, i32, i64) #1

declare dso_local i8* @avio_tell(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
