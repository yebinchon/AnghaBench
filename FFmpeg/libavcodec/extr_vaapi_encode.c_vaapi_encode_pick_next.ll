; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode.c_vaapi_encode_pick_next.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode.c_vaapi_encode_pick_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_18__*, i64, %struct.TYPE_18__*, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i32*, i64, i64, %struct.TYPE_18__*, i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32 }

@PICTURE_TYPE_B = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Pick B-picture at depth %d to encode next.\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Pick nothing to encode next - need more input for reference pictures.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Pick nothing to encode next - need more input for timestamps.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Pick forced IDR-picture to encode next.\0A\00", align 1
@PICTURE_TYPE_IDR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Pick new-GOP IDR-picture to encode next.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Pick new-GOP I-picture to encode next.\0A\00", align 1
@PICTURE_TYPE_I = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Pick group-end P-picture to encode next.\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Pick normal P-picture to encode next.\0A\00", align 1
@PICTURE_TYPE_P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_18__**)* @vaapi_encode_pick_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_encode_pick_next(%struct.TYPE_20__* %0, %struct.TYPE_18__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__**, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 10
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %7, align 8
  br label %19

19:                                               ; preds = %66, %2
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %66

28:                                               ; preds = %22
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PICTURE_TYPE_B, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %66

35:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 8
  %45 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %45, i64 %47
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %58

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %36

58:                                               ; preds = %53, %36
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %34, %27
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %7, align 8
  br label %19

70:                                               ; preds = %64, %19
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = load i32, i32* @AV_LOG_DEBUG, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %74, i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %81, align 8
  store i32 0, i32* %3, align 4
  br label %365

82:                                               ; preds = %70
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  store i32 0, i32* %11, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %90, %93
  br label %95

95:                                               ; preds = %87, %82
  %96 = phi i1 [ true, %82 ], [ %94, %87 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 10
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %7, align 8
  br label %101

101:                                              ; preds = %152, %95
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %103 = icmp ne %struct.TYPE_18__* %102, null
  br i1 %103, label %104, label %154

104:                                              ; preds = %101
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 6
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %8, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %9, align 8
  br label %152

114:                                              ; preds = %104
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %154

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %154

127:                                              ; preds = %120
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %132, %133
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %154

140:                                              ; preds = %127
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %142 = icmp ne %struct.TYPE_18__* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %154

149:                                              ; preds = %143, %140
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %149, %112
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %7, align 8
  br label %101

154:                                              ; preds = %148, %139, %126, %119, %101
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = icmp ne %struct.TYPE_18__* %155, null
  br i1 %156, label %175, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 8
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %11, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 9
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  store %struct.TYPE_18__* %167, %struct.TYPE_18__** %7, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %162
  %173 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %173, i32* %3, align 4
  br label %365

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %157, %154
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %177 = icmp ne %struct.TYPE_18__* %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %180 = load i32, i32* @AV_LOG_DEBUG, align 4
  %181 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %179, i32 %180, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %182 = load i32, i32* @EAGAIN, align 4
  %183 = call i32 @AVERROR(i32 %182)
  store i32 %183, i32* %3, align 4
  br label %365

184:                                              ; preds = %175
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = icmp sle i64 %187, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %184
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 8
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %199 = load i32, i32* @AV_LOG_DEBUG, align 4
  %200 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %198, i32 %199, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %201 = load i32, i32* @EAGAIN, align 4
  %202 = call i32 @AVERROR(i32 %201)
  store i32 %202, i32* %3, align 4
  br label %365

203:                                              ; preds = %192, %184
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %203
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %210 = load i32, i32* @AV_LOG_DEBUG, align 4
  %211 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %209, i32 %210, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %212 = load i64, i64* @PICTURE_TYPE_IDR, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  store i32 1, i32* %216, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  store i32 1, i32* %218, align 4
  br label %293

219:                                              ; preds = %203
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %222, %223
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = icmp sge i32 %224, %227
  br i1 %228, label %229, label %260

229:                                              ; preds = %219
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %232, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %229
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %239 = load i32, i32* @AV_LOG_DEBUG, align 4
  %240 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %238, i32 %239, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %241 = load i64, i64* @PICTURE_TYPE_IDR, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 0
  store i32 1, i32* %245, align 8
  br label %257

246:                                              ; preds = %229
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %248 = load i32, i32* @AV_LOG_DEBUG, align 4
  %249 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %247, i32 %248, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %250 = load i64, i64* @PICTURE_TYPE_I, align 8
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %246, %237
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 3
  store i32 1, i32* %259, align 4
  br label %292

260:                                              ; preds = %219
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %265, %266
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %267, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %260
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %274 = load i32, i32* @AV_LOG_DEBUG, align 4
  %275 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %273, i32 %274, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %280

276:                                              ; preds = %260
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %278 = load i32, i32* @AV_LOG_DEBUG, align 4
  %279 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %277, i32 %278, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %280

280:                                              ; preds = %276, %272
  %281 = load i64, i64* @PICTURE_TYPE_P, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %285 = call i32 @av_assert0(%struct.TYPE_18__* %284)
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 1, %286
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %280, %257
  br label %293

293:                                              ; preds = %292, %208
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 2
  store i32 1, i32* %295, align 4
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %297 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  store %struct.TYPE_18__* %296, %struct.TYPE_18__** %297, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %301 = call i32 @vaapi_encode_add_ref(%struct.TYPE_20__* %298, %struct.TYPE_18__* %299, %struct.TYPE_18__* %300, i32 0, i32 1, i32 0)
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @PICTURE_TYPE_IDR, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %293
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @PICTURE_TYPE_P, align 8
  %315 = icmp eq i64 %313, %314
  %316 = zext i1 %315 to i32
  %317 = load i32, i32* %11, align 4
  %318 = icmp sgt i32 %317, 0
  %319 = zext i1 %318 to i32
  %320 = call i32 @vaapi_encode_add_ref(%struct.TYPE_20__* %308, %struct.TYPE_18__* %309, %struct.TYPE_18__* %310, i32 %316, i32 %319, i32 0)
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 7
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %324, align 8
  %326 = call i32 @vaapi_encode_add_ref(%struct.TYPE_20__* %321, %struct.TYPE_18__* %322, %struct.TYPE_18__* %325, i32 0, i32 0, i32 1)
  br label %327

327:                                              ; preds = %307, %293
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 7
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %329, align 8
  %331 = icmp ne %struct.TYPE_18__* %330, null
  br i1 %331, label %332, label %341

332:                                              ; preds = %327
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 7
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %338, align 4
  br label %341

341:                                              ; preds = %332, %327
  %342 = load i32, i32* %11, align 4
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %341
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 7
  %351 = call i32 @vaapi_encode_set_b_pictures(%struct.TYPE_20__* %345, %struct.TYPE_18__* %346, %struct.TYPE_18__* %347, %struct.TYPE_18__* %348, i32 1, %struct.TYPE_18__** %350)
  br label %356

352:                                              ; preds = %341
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 7
  store %struct.TYPE_18__* %353, %struct.TYPE_18__** %355, align 8
  br label %356

356:                                              ; preds = %352, %344
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 7
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 3
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %362, align 4
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %356, %197, %178, %172, %73
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(%struct.TYPE_18__*) #1

declare dso_local i32 @vaapi_encode_add_ref(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @vaapi_encode_set_b_pictures(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, %struct.TYPE_18__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
