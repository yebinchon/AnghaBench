; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stsc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"track[%u].stsc.entries = %u\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Duplicated STSC atom\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"STSC entry %d is invalid (first=%d count=%d id=%d)\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"reached eof, corrupted STSC atom\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_21__*, i32)* @mov_read_stsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_stsc(%struct.TYPE_18__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %453

21:                                               ; preds = %3
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %26, i64 %33
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %8, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %9, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = call i32 @avio_r8(%struct.TYPE_21__* %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = call i32 @avio_rb24(%struct.TYPE_21__* %41)
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = call i8* @avio_rb32(%struct.TYPE_21__* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %46, 12
  %48 = add nsw i32 %47, 4
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %21
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %4, align 4
  br label %453

54:                                               ; preds = %21
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = load i32, i32* @AV_LOG_TRACE, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %57, i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %453

70:                                               ; preds = %54
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = icmp ne %struct.TYPE_15__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = load i32, i32* @AV_LOG_WARNING, align 4
  %80 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %78, i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = call i32 @av_free(%struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call %struct.TYPE_15__* @av_malloc_array(i32 %88, i32 16)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = icmp ne %struct.TYPE_15__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %81
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %4, align 4
  br label %453

99:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %143, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %104, %100
  %111 = phi i1 [ false, %100 ], [ %109, %104 ]
  br i1 %111, label %112, label %146

112:                                              ; preds = %110
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %114 = call i8* @avio_rb32(%struct.TYPE_21__* %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store i64 %115, i64* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = call i8* @avio_rb32(%struct.TYPE_21__* %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %134 = call i8* @avio_rb32(%struct.TYPE_21__* %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  store i32 %135, i32* %142, align 4
  br label %143

143:                                              ; preds = %112
  %144 = load i32, i32* %10, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %100

146:                                              ; preds = %110
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %437, %146
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @UINT_MAX, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %440

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %159, 1
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %12, align 8
  %162 = load i32, i32* %10, align 4
  %163 = add i32 %162, 1
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ult i32 %163, %166
  br i1 %167, label %168, label %187

168:                                              ; preds = %158
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = add i32 %180, 1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp sge i64 %176, %185
  br i1 %186, label %240, label %187

187:                                              ; preds = %168, %158
  %188 = load i32, i32* %10, align 4
  %189 = icmp ugt i32 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %187
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sub i32 %202, 1
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp sle i64 %198, %207
  br i1 %208, label %240, label %209

209:                                              ; preds = %190, %187
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %12, align 8
  %219 = icmp slt i64 %217, %218
  br i1 %219, label %240, label %220

220:                                              ; preds = %209
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %228, 1
  br i1 %229, label %240, label %230

230:                                              ; preds = %220
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %238, 1
  br i1 %239, label %240, label %436

240:                                              ; preds = %230, %220, %209, %190, %168
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %242, align 8
  %244 = load i32, i32* @AV_LOG_WARNING, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %255, align 8
  %257 = load i32, i32* %10, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %243, i32 %244, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %245, i64 %253, i32 %261, i32 %269)
  %271 = load i32, i32* %10, align 4
  %272 = add i32 %271, 1
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp uge i32 %272, %275
  br i1 %276, label %277, label %374

277:                                              ; preds = %240
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = load i64, i64* %12, align 8
  %288 = trunc i64 %287 to i32
  %289 = call i8* @FFMAX(i32 %286, i32 %288)
  %290 = ptrtoint i8* %289 to i64
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  store i64 %290, i64* %297, align 8
  %298 = load i32, i32* %10, align 4
  %299 = icmp ugt i32 %298, 0
  br i1 %299, label %300, label %339

300:                                              ; preds = %277
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %310, align 8
  %312 = load i32, i32* %10, align 4
  %313 = sub i32 %312, 1
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp sle i64 %308, %317
  br i1 %318, label %319, label %339

319:                                              ; preds = %300
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sub i32 %323, 1
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = add nsw i64 %328, 1
  %330 = load i32, i32* @INT_MAX, align 4
  %331 = call i64 @FFMIN(i64 %329, i32 %330)
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 0
  store i64 %331, i64* %338, align 8
  br label %339

339:                                              ; preds = %319, %300, %277
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i8* @FFMAX(i32 %347, i32 1)
  %349 = ptrtoint i8* %348 to i32
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %351, align 8
  %353 = load i32, i32* %10, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 1
  store i32 %349, i32* %356, align 8
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 1
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %358, align 8
  %360 = load i32, i32* %10, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = call i8* @FFMAX(i32 %364, i32 1)
  %366 = ptrtoint i8* %365 to i32
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %368, align 8
  %370 = load i32, i32* %10, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 2
  store i32 %366, i32* %373, align 4
  br label %437

374:                                              ; preds = %240
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %376, align 8
  %378 = load i32, i32* %10, align 4
  %379 = add i32 %378, 1
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = icmp sge i64 %383, 2
  %385 = zext i1 %384 to i32
  %386 = call i32 @av_assert0(i32 %385)
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %388, align 8
  %390 = load i32, i32* %10, align 4
  %391 = add i32 %390, 1
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = sub nsw i64 %395, 1
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 1
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %398, align 8
  %400 = load i32, i32* %10, align 4
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 0
  store i64 %396, i64* %403, align 8
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_15__*, %struct.TYPE_15__** %405, align 8
  %407 = load i32, i32* %10, align 4
  %408 = add i32 %407, 1
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 1
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %414, align 8
  %416 = load i32, i32* %10, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 1
  store i32 %412, i32* %419, align 8
  %420 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %421 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %420, i32 0, i32 1
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %421, align 8
  %423 = load i32, i32* %10, align 4
  %424 = add i32 %423, 1
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %430, align 8
  %432 = load i32, i32* %10, align 4
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 2
  store i32 %428, i32* %435, align 4
  br label %436

436:                                              ; preds = %374, %230
  br label %437

437:                                              ; preds = %436, %339
  %438 = load i32, i32* %10, align 4
  %439 = add i32 %438, -1
  store i32 %439, i32* %10, align 4
  br label %154

440:                                              ; preds = %154
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %440
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %447, align 8
  %449 = load i32, i32* @AV_LOG_WARNING, align 4
  %450 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %448, i32 %449, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %451 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %451, i32* %4, align 4
  br label %453

452:                                              ; preds = %440
  store i32 0, i32* %4, align 4
  br label %453

453:                                              ; preds = %452, %445, %96, %69, %52, %20
  %454 = load i32, i32* %4, align 4
  ret i32 %454
}

declare dso_local i32 @avio_r8(%struct.TYPE_21__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_21__*) #1

declare dso_local i8* @avio_rb32(%struct.TYPE_21__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @av_free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i64 @FFMIN(i64, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
