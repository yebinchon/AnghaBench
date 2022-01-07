; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libkvazaar.c_libkvazaar_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libkvazaar.c_libkvazaar_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_25__*, i32, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 (i32, %struct.TYPE_26__*, %struct.TYPE_28__**, i64*, %struct.TYPE_26__**, i32*, %struct.TYPE_27__*)*, i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_26__*)*, %struct.TYPE_26__* (i64, i64)* }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, i32, i32, i32 }
%struct.TYPE_31__ = type { i64, i64, i64, i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"Changing video dimensions during encoding is not supported. (changed from %dx%d to %dx%d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Changing pixel format during encoding is not supported. (changed from %s to %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to allocate picture.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to encode frame.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to allocate output packet.\0A\00", align 1
@KVZ_NAL_BLA_W_LP = common dso_local global i64 0, align 8
@KVZ_NAL_RSV_IRAP_VCL23 = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_31__*, i32*)* @libkvazaar_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libkvazaar_encode(%struct.TYPE_32__* %0, %struct.TYPE_30__* %1, %struct.TYPE_31__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_27__, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %9, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %24 = icmp ne %struct.TYPE_31__* %23, null
  br i1 %24, label %25, label %154

25:                                               ; preds = %4
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %35, %25
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %46, i32 %47, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %57, i64 %60, i64 %63)
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %15, align 4
  br label %255

66:                                               ; preds = %35
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @av_get_pix_fmt_name(i64 %79)
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @av_get_pix_fmt_name(i64 %83)
  %85 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %75, i32 %76, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %84)
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %15, align 4
  br label %255

87:                                               ; preds = %66
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_26__* (i64, i64)*, %struct.TYPE_26__* (i64, i64)** %91, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call %struct.TYPE_26__* %92(i64 %95, i64 %98)
  store %struct.TYPE_26__* %99, %struct.TYPE_26__** %10, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %101 = icmp ne %struct.TYPE_26__* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %87
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %103, i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = call i32 @AVERROR(i32 %106)
  store i32 %107, i32* %15, align 4
  br label %255

108:                                              ; preds = %87
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = getelementptr inbounds i32, i32* %109, i64 1
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sdiv i64 %117, 2
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %114, align 4
  %120 = getelementptr inbounds i32, i32* %114, i64 1
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sdiv i64 %123, 2
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %120, align 4
  %126 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i32**
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @av_image_copy(i32 %129, i32* %130, i32** %134, i32 %137, i64 %140, i32 %144, i64 %147)
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %108, %4
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32 (i32, %struct.TYPE_26__*, %struct.TYPE_28__**, i64*, %struct.TYPE_26__**, i32*, %struct.TYPE_27__*)*, i32 (i32, %struct.TYPE_26__*, %struct.TYPE_28__**, i64*, %struct.TYPE_26__**, i32*, %struct.TYPE_27__*)** %158, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %164 = call i32 %159(i32 %162, %struct.TYPE_26__* %163, %struct.TYPE_28__** %13, i64* %14, %struct.TYPE_26__** %11, i32* null, %struct.TYPE_27__* %12)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %154
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %169 = load i32, i32* @AV_LOG_ERROR, align 4
  %170 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %168, i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %171 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %171, i32* %15, align 4
  br label %255

172:                                              ; preds = %154
  store i32 0, i32* %15, align 4
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %175 = icmp ne %struct.TYPE_28__* %174, null
  br i1 %175, label %176, label %254

176:                                              ; preds = %173
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %17, align 8
  store i64 0, i64* %18, align 8
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i64, i64* %14, align 8
  %181 = call i32 @ff_alloc_packet2(%struct.TYPE_32__* %177, %struct.TYPE_30__* %178, i64 %179, i64 %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %176
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %185, i32 %186, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %255

188:                                              ; preds = %176
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %189, %struct.TYPE_28__** %17, align 8
  br label %190

190:                                              ; preds = %220, %188
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %192 = icmp ne %struct.TYPE_28__* %191, null
  br i1 %192, label %193, label %224

193:                                              ; preds = %190
  %194 = load i64, i64* %18, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %194, %197
  %199 = load i64, i64* %14, align 8
  %200 = icmp sle i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @av_assert0(i32 %201)
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %18, align 8
  %207 = add nsw i64 %205, %206
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @memcpy(i64 %207, i32 %210, i64 %213)
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %18, align 8
  %219 = add nsw i64 %218, %217
  store i64 %219, i64* %18, align 8
  br label %220

220:                                              ; preds = %193
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %222, align 8
  store %struct.TYPE_28__* %223, %struct.TYPE_28__** %17, align 8
  br label %190

224:                                              ; preds = %190
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 1
  store i32 0, i32* %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @KVZ_NAL_BLA_W_LP, align 8
  %240 = icmp sge i64 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %224
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @KVZ_NAL_RSV_IRAP_VCL23, align 8
  %245 = icmp sle i64 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  br label %252

252:                                              ; preds = %246, %241, %224
  %253 = load i32*, i32** %8, align 8
  store i32 1, i32* %253, align 4
  br label %254

254:                                              ; preds = %252, %173
  br label %255

255:                                              ; preds = %254, %184, %167, %102, %74, %45
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 2
  %260 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %259, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %262 = call i32 %260(%struct.TYPE_26__* %261)
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 2
  %267 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %266, align 8
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %269 = call i32 %267(%struct.TYPE_26__* %268)
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 1
  %274 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %273, align 8
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %276 = call i32 %274(%struct.TYPE_28__* %275)
  %277 = load i32, i32* %15, align 4
  ret i32 %277
}

declare dso_local i32 @av_log(%struct.TYPE_32__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_copy(i32, i32*, i32**, i32, i64, i32, i64) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_32__*, %struct.TYPE_30__*, i64, i64) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
