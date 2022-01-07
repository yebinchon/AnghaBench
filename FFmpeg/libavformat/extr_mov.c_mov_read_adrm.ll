; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_adrm.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_adrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64*, i64*, i32, i32, i64*, i64* }
%struct.AVSHA = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DRM_BLOB_SIZE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[aax] file checksum == \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"[aax] activation_bytes option is missing!\0A\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"[aax] activation_bytes value needs to be 4 bytes!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"[aax] audible_fixed_key value needs to be 16 bytes!\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"[aax] mismatch in checksums!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"[aax] error in drm blob decryption!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @mov_read_adrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_adrm(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x i64], align 16
  %9 = alloca [20 x i64], align 16
  %10 = alloca [64 x i64], align 16
  %11 = alloca [64 x i64], align 16
  %12 = alloca [20 x i64], align 16
  %13 = alloca [20 x i64], align 16
  %14 = alloca %struct.AVSHA*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 8
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %17, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 7
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %18, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = call %struct.AVSHA* (...) @av_sha_alloc()
  store %struct.AVSHA* %27, %struct.AVSHA** %14, align 8
  %28 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %29 = icmp ne %struct.AVSHA* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %241

33:                                               ; preds = %3
  %34 = call i32 (...) @av_aes_alloc()
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %16, align 4
  br label %237

44:                                               ; preds = %33
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %47 = call i32 @avio_read(i32* %45, i64* %46, i32 8)
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds [64 x i64], [64 x i64]* %10, i64 0, i64 0
  %50 = load i32, i32* @DRM_BLOB_SIZE, align 4
  %51 = call i32 @avio_read(i32* %48, i64* %49, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %54 = call i32 @avio_read(i32* %52, i64* %53, i32 4)
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds [20 x i64], [20 x i64]* %12, i64 0, i64 0
  %57 = call i32 @avio_read(i32* %55, i64* %56, i32 20)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AV_LOG_INFO, align 4
  %62 = call i32 (i32, i32, i8*, ...) @av_log(i32 %60, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %76, %44
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 20
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AV_LOG_INFO, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [20 x i64], [20 x i64]* %12, i64 0, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i32, i8*, ...) @av_log(i32 %69, i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AV_LOG_INFO, align 4
  %84 = call i32 (i32, i32, i8*, ...) @av_log(i32 %82, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i64*, i64** %17, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %79
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AV_LOG_WARNING, align 4
  %92 = call i32 (i32, i32, i8*, ...) @av_log(i32 %90, i32 %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %237

93:                                               ; preds = %79
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 4
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @AV_LOG_FATAL, align 4
  %103 = call i32 (i32, i32, i8*, ...) @av_log(i32 %101, i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = call i32 @AVERROR(i32 %104)
  store i32 %105, i32* %16, align 4
  br label %237

106:                                              ; preds = %93
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 16
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AV_LOG_FATAL, align 4
  %116 = call i32 (i32, i32, i8*, ...) @av_log(i32 %114, i32 %115, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = call i32 @AVERROR(i32 %117)
  store i32 %118, i32* %16, align 4
  br label %237

119:                                              ; preds = %106
  %120 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %121 = call i32 @av_sha_init(%struct.AVSHA* %120, i32 160)
  %122 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %123 = load i64*, i64** %18, align 8
  %124 = call i32 @av_sha_update(%struct.AVSHA* %122, i64* %123, i32 16)
  %125 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %126 = load i64*, i64** %17, align 8
  %127 = call i32 @av_sha_update(%struct.AVSHA* %125, i64* %126, i32 4)
  %128 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %129 = getelementptr inbounds [20 x i64], [20 x i64]* %8, i64 0, i64 0
  %130 = call i32 @av_sha_final(%struct.AVSHA* %128, i64* %129)
  %131 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %132 = call i32 @av_sha_init(%struct.AVSHA* %131, i32 160)
  %133 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %134 = load i64*, i64** %18, align 8
  %135 = call i32 @av_sha_update(%struct.AVSHA* %133, i64* %134, i32 16)
  %136 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %137 = getelementptr inbounds [20 x i64], [20 x i64]* %8, i64 0, i64 0
  %138 = call i32 @av_sha_update(%struct.AVSHA* %136, i64* %137, i32 20)
  %139 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %140 = load i64*, i64** %17, align 8
  %141 = call i32 @av_sha_update(%struct.AVSHA* %139, i64* %140, i32 4)
  %142 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %143 = getelementptr inbounds [20 x i64], [20 x i64]* %9, i64 0, i64 0
  %144 = call i32 @av_sha_final(%struct.AVSHA* %142, i64* %143)
  %145 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %146 = call i32 @av_sha_init(%struct.AVSHA* %145, i32 160)
  %147 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %148 = getelementptr inbounds [20 x i64], [20 x i64]* %8, i64 0, i64 0
  %149 = call i32 @av_sha_update(%struct.AVSHA* %147, i64* %148, i32 16)
  %150 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %151 = getelementptr inbounds [20 x i64], [20 x i64]* %9, i64 0, i64 0
  %152 = call i32 @av_sha_update(%struct.AVSHA* %150, i64* %151, i32 16)
  %153 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %154 = getelementptr inbounds [20 x i64], [20 x i64]* %13, i64 0, i64 0
  %155 = call i32 @av_sha_final(%struct.AVSHA* %153, i64* %154)
  %156 = getelementptr inbounds [20 x i64], [20 x i64]* %13, i64 0, i64 0
  %157 = getelementptr inbounds [20 x i64], [20 x i64]* %12, i64 0, i64 0
  %158 = call i64 @memcmp(i64* %156, i64* %157, i32 20)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %119
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 (i32, i32, i8*, ...) @av_log(i32 %163, i32 %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %166, i32* %16, align 4
  br label %237

167:                                              ; preds = %119
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [20 x i64], [20 x i64]* %8, i64 0, i64 0
  %172 = call i32 @av_aes_init(i32 %170, i64* %171, i32 128, i32 1)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %177 = getelementptr inbounds [64 x i64], [64 x i64]* %10, i64 0, i64 0
  %178 = load i32, i32* @DRM_BLOB_SIZE, align 4
  %179 = ashr i32 %178, 4
  %180 = getelementptr inbounds [20 x i64], [20 x i64]* %9, i64 0, i64 0
  %181 = call i32 @av_aes_crypt(i32 %175, i64* %176, i64* %177, i32 %179, i64* %180, i32 1)
  store i32 0, i32* %15, align 4
  br label %182

182:                                              ; preds = %205, %167
  %183 = load i32, i32* %15, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %208

185:                                              ; preds = %182
  %186 = load i64*, i64** %17, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 3, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %190, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %185
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @AV_LOG_ERROR, align 4
  %202 = call i32 (i32, i32, i8*, ...) @av_log(i32 %200, i32 %201, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %203, i32* %16, align 4
  br label %237

204:                                              ; preds = %185
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %182

208:                                              ; preds = %182
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %213 = getelementptr inbounds i64, i64* %212, i64 8
  %214 = call i32 @memcpy(i64* %211, i64* %213, i32 16)
  %215 = getelementptr inbounds [64 x i64], [64 x i64]* %10, i64 0, i64 0
  %216 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %217 = getelementptr inbounds i64, i64* %216, i64 26
  %218 = call i32 @memcpy(i64* %215, i64* %217, i32 16)
  %219 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %220 = call i32 @av_sha_init(%struct.AVSHA* %219, i32 160)
  %221 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %222 = getelementptr inbounds [64 x i64], [64 x i64]* %10, i64 0, i64 0
  %223 = call i32 @av_sha_update(%struct.AVSHA* %221, i64* %222, i32 16)
  %224 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  %227 = load i64*, i64** %226, align 8
  %228 = call i32 @av_sha_update(%struct.AVSHA* %224, i64* %227, i32 16)
  %229 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %230 = load i64*, i64** %18, align 8
  %231 = call i32 @av_sha_update(%struct.AVSHA* %229, i64* %230, i32 16)
  %232 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 4
  %235 = load i64*, i64** %234, align 8
  %236 = call i32 @av_sha_final(%struct.AVSHA* %232, i64* %235)
  br label %237

237:                                              ; preds = %208, %197, %160, %111, %98, %87, %41
  %238 = load %struct.AVSHA*, %struct.AVSHA** %14, align 8
  %239 = call i32 @av_free(%struct.AVSHA* %238)
  %240 = load i32, i32* %16, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %237, %30
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local %struct.AVSHA* @av_sha_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_aes_alloc(...) #1

declare dso_local i32 @avio_read(i32*, i64*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @av_sha_init(%struct.AVSHA*, i32) #1

declare dso_local i32 @av_sha_update(%struct.AVSHA*, i64*, i32) #1

declare dso_local i32 @av_sha_final(%struct.AVSHA*, i64*) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @av_aes_init(i32, i64*, i32, i32) #1

declare dso_local i32 @av_aes_crypt(i32, i64*, i64*, i32, i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @av_free(%struct.AVSHA*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
