; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_thp.c_thp_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_thp.c_thp_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_19__*, i8*, %struct.TYPE_16__, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i8*, i8* }
%struct.TYPE_17__ = type { i8*, i8*, i64, i32, i32, i8*, i8* }
%struct.TYPE_16__ = type { i32, i8* }

@INT_MAX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_THP = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_THP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @thp_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thp_read_header(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = call i64 @avio_size(%struct.TYPE_20__* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = call i8* @avio_rb32(%struct.TYPE_20__* %18)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = call i8* @avio_rb32(%struct.TYPE_20__* %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = call i8* @avio_rb32(%struct.TYPE_20__* %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = call i8* @avio_rb32(%struct.TYPE_20__* %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = call i8* @avio_rb32(%struct.TYPE_20__* %31)
  %33 = call i32 @av_int2float(i8* %32)
  %34 = load i32, i32* @INT_MAX, align 4
  %35 = call { i32, i8* } @av_d2q(i32 %33, i32 %34)
  %36 = bitcast %struct.TYPE_16__* %9 to { i32, i8* }*
  %37 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %36, i32 0, i32 0
  %38 = extractvalue { i32, i8* } %35, 0
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %36, i32 0, i32 1
  %40 = extractvalue { i32, i8* } %35, 1
  store i8* %40, i8** %39, align 8
  %41 = bitcast %struct.TYPE_16__* %30 to i8*
  %42 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = call i8* @avio_rb32(%struct.TYPE_20__* %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = call i8* @avio_rb32(%struct.TYPE_20__* %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 12
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = call i8* @avio_rb32(%struct.TYPE_20__* %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %1
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %58
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %63, %1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = call i8* @avio_rb32(%struct.TYPE_20__* %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = call i8* @avio_rb32(%struct.TYPE_20__* %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = call i8* @avio_rb32(%struct.TYPE_20__* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 10
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = call i8* @avio_rb32(%struct.TYPE_20__* %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 14
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 12
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 13
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 11
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 9
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i32 @avio_seek(%struct.TYPE_20__* %98, i8* %101, i32 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = call i8* @avio_rb32(%struct.TYPE_20__* %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @avio_read(%struct.TYPE_20__* %109, i32* %112, i32 16)
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %285, %73
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %288

120:                                              ; preds = %114
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %215

129:                                              ; preds = %120
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = icmp ne %struct.TYPE_19__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %288

135:                                              ; preds = %129
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %137 = call %struct.TYPE_19__* @avformat_new_stream(%struct.TYPE_21__* %136, i32* null)
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %5, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = icmp ne %struct.TYPE_19__* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %2, align 4
  br label %289

143:                                              ; preds = %135
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @avpriv_set_pts_info(%struct.TYPE_19__* %144, i32 64, i32 %148, i8* %152)
  %154 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 4
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* @AV_CODEC_ID_THP, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  store i32 %159, i32* %163, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = call i8* @avio_rb32(%struct.TYPE_20__* %168)
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 6
  store i8* %169, i8** %173, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %175 = call i8* @avio_rb32(%struct.TYPE_20__* %174)
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 5
  store i8* %175, i8** %179, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 8
  %182 = bitcast %struct.TYPE_16__* %181 to { i32, i8* }*
  %183 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %182, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @av_q2d(i32 %184, i8* %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  store i8* %187, i8** %191, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 7
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 3
  store i8* %194, i8** %198, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 6
  store %struct.TYPE_19__* %199, %struct.TYPE_19__** %201, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 69632
  br i1 %210, label %211, label %214

211:                                              ; preds = %143
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %213 = call i8* @avio_rb32(%struct.TYPE_20__* %212)
  br label %214

214:                                              ; preds = %211, %143
  br label %284

215:                                              ; preds = %120
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %283

224:                                              ; preds = %215
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %288

230:                                              ; preds = %224
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %232 = call %struct.TYPE_19__* @avformat_new_stream(%struct.TYPE_21__* %231, i32* null)
  store %struct.TYPE_19__* %232, %struct.TYPE_19__** %5, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %234 = icmp ne %struct.TYPE_19__* %233, null
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = load i32, i32* @ENOMEM, align 4
  %237 = call i32 @AVERROR(i32 %236)
  store i32 %237, i32* %2, align 4
  br label %289

238:                                              ; preds = %230
  %239 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 4
  store i32 %239, i32* %243, align 4
  %244 = load i32, i32* @AV_CODEC_ID_ADPCM_THP, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 3
  store i32 %244, i32* %248, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 2
  store i64 0, i64* %252, align 8
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %254 = call i8* @avio_rb32(%struct.TYPE_20__* %253)
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 1
  store i8* %254, i8** %258, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %260 = call i8* @avio_rb32(%struct.TYPE_20__* %259)
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 0
  store i8* %260, i8** %264, align 8
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %266 = call i8* @avio_rb32(%struct.TYPE_20__* %265)
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 2
  store i8* %266, i8** %268, align 8
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @avpriv_set_pts_info(%struct.TYPE_19__* %269, i32 64, i32 1, i8* %274)
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 4
  store i32 %278, i32* %280, align 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 3
  store i32 1, i32* %282, align 8
  br label %283

283:                                              ; preds = %238, %215
  br label %284

284:                                              ; preds = %283, %214
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %114

288:                                              ; preds = %229, %134, %114
  store i32 0, i32* %2, align 4
  br label %289

289:                                              ; preds = %288, %235, %140
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i64 @avio_size(%struct.TYPE_20__*) #1

declare dso_local i8* @avio_rb32(%struct.TYPE_20__*) #1

declare dso_local { i32, i8* } @av_d2q(i32, i32) #1

declare dso_local i32 @av_int2float(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avio_seek(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local %struct.TYPE_19__* @avformat_new_stream(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_19__*, i32, i32, i8*) #1

declare dso_local i8* @av_q2d(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
