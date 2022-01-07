; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_common_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_common_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@DCA_SYNCWORD_XLL = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid XLL sync word\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"XLL stream version %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid XLL common header checksum\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DCA_XLL_PBR_BUFFER_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid XLL frame size (%d bytes)\0A\00", align 1
@DCA_XLL_CHSETS_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%d XLL channel sets\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Too many segments per XLL frame\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Too few samples per XLL segment\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Too many samples per XLL segment\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Too many samples per XLL frame\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Read past end of XLL common header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @parse_common_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_common_header(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 11
  %10 = call i32 @get_bits_long(i32* %9, i32 32)
  %11 = load i32, i32* @DCA_SYNCWORD_XLL, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %18 = call i32 (i32, i32, i8*, ...) @av_log(i32 %16, i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %242

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 11
  %24 = call i32 @get_bits(i32* %23, i32 4)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @avpriv_request_sample(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %34, i32* %2, align 4
  br label %242

35:                                               ; preds = %21
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 11
  %38 = call i32 @get_bits(i32* %37, i32 8)
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 11
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 8
  %47 = call i64 @ff_dca_check_crc(i32 %42, i32* %44, i32 32, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 (i32, i32, i8*, ...) @av_log(i32 %52, i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %2, align 4
  br label %242

56:                                               ; preds = %35
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 11
  %59 = call i32 @get_bits(i32* %58, i32 5)
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 11
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @get_bits_long(i32* %62, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DCA_XLL_PBR_BUFFER_MAX, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71, %56
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i32, i8*, ...) @av_log(i32 %80, i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %2, align 4
  br label %242

87:                                               ; preds = %71
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 11
  %94 = call i32 @get_bits(i32* %93, i32 4)
  %95 = add nsw i32 %94, 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DCA_XLL_CHSETS_MAX, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %87
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @avpriv_request_sample(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %111, i32* %2, align 4
  br label %242

112:                                              ; preds = %87
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 11
  %115 = call i32 @get_bits(i32* %114, i32 4)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 1, %116
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 1024
  br i1 %123, label %124, label %131

124:                                              ; preds = %112
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AV_LOG_ERROR, align 4
  %129 = call i32 (i32, i32, i8*, ...) @av_log(i32 %127, i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %130 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %130, i32* %2, align 4
  br label %242

131:                                              ; preds = %112
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 11
  %134 = call i32 @get_bits(i32* %133, i32 4)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %131
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = call i32 (i32, i32, i8*, ...) @av_log(i32 %144, i32 %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %147, i32* %2, align 4
  br label %242

148:                                              ; preds = %131
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = shl i32 1, %151
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 512
  br i1 %158, label %159, label %166

159:                                              ; preds = %148
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = call i32 (i32, i32, i8*, ...) @av_log(i32 %162, i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %165 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %165, i32* %2, align 4
  br label %242

166:                                              ; preds = %148
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %169, %170
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = shl i32 1, %176
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = icmp sgt i32 %182, 65536
  br i1 %183, label %184, label %191

184:                                              ; preds = %166
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = call i32 (i32, i32, i8*, ...) @av_log(i32 %187, i32 %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %190 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %190, i32* %2, align 4
  br label %242

191:                                              ; preds = %166
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 11
  %194 = call i32 @get_bits(i32* %193, i32 5)
  %195 = add nsw i32 %194, 1
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 11
  %200 = call i32 @get_bits(i32* %199, i32 2)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 11
  %205 = call i64 @get_bits1(i32* %204)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 12
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 11
  %210 = call i32 @get_bits(i32* %209, i32 5)
  %211 = add nsw i32 %210, 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 12
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %191
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 11
  %221 = call i32 @get_bits(i32* %220, i32 4)
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 9
  store i32 %221, i32* %223, align 4
  br label %227

224:                                              ; preds = %191
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 9
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %224, %218
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 11
  %230 = load i32, i32* %5, align 4
  %231 = mul nsw i32 %230, 8
  %232 = call i64 @ff_dca_seek_bits(i32* %229, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %227
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 10
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @AV_LOG_ERROR, align 4
  %239 = call i32 (i32, i32, i8*, ...) @av_log(i32 %237, i32 %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %240 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %240, i32* %2, align 4
  br label %242

241:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %241, %234, %184, %159, %141, %124, %103, %77, %49, %28, %13
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*, i32) #1

declare dso_local i64 @ff_dca_check_crc(i32, i32*, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
