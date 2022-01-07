; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_writer.c_rawvideo_write_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_writer.c_rawvideo_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"YUV4MPEG2 W%i H%i\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" F%i:%i\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" A%i:%i\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" C%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" C%4.4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @rawvideo_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawvideo_write_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %16, i64 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %28, i64 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp uge i64 %40, 128
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 4
  store i32 %43, i32* %2, align 4
  br label %225

44:                                               ; preds = %1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @WRITE_BYTES(%struct.TYPE_17__* %45, i8* %46, i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %51, i64 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %44
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %65, i64 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %62
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %80, i64 0
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %92, i64 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %77, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = icmp uge i64 %104, 128
  br i1 %105, label %106, label %108

106:                                              ; preds = %76
  %107 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 4
  store i32 %107, i32* %2, align 4
  br label %225

108:                                              ; preds = %76
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @WRITE_BYTES(%struct.TYPE_17__* %109, i8* %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %62, %44
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %116, i64 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %178

127:                                              ; preds = %113
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %130, i64 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %178

141:                                              ; preds = %127
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %145, i64 0
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %157, i64 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %142, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = zext i32 %168 to i64
  %170 = icmp uge i64 %169, 128
  br i1 %170, label %171, label %173

171:                                              ; preds = %141
  %172 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 4
  store i32 %172, i32* %2, align 4
  br label %225

173:                                              ; preds = %141
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @WRITE_BYTES(%struct.TYPE_17__* %174, i8* %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %127, %113
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %181, i64 0
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @to_yuv4mpeg2(i32 %187, i8** %7, i32 0, i32 0)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %178
  %191 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %192 = load i8*, i8** %7, align 8
  %193 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %191, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %192)
  store i32 %193, i32* %5, align 4
  br label %208

194:                                              ; preds = %178
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 4
  %197 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %200, i64 0
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = bitcast i32* %205 to i8*
  %207 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %197, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %206)
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %194, %190
  %209 = load i32, i32* %5, align 4
  %210 = zext i32 %209 to i64
  %211 = icmp uge i64 %210, 128
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 4
  store i32 %213, i32* %2, align 4
  br label %225

214:                                              ; preds = %208
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %216 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @WRITE_BYTES(%struct.TYPE_17__* %215, i8* %216, i32 %217)
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %220 = call i32 @_WRITE_U8(%struct.TYPE_17__* %219, i32 10)
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  store i32 1, i32* %222, align 4
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %224 = call i32 @STREAM_STATUS(%struct.TYPE_17__* %223)
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %214, %212, %171, %106, %42
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i64 @to_yuv4mpeg2(i32, i8**, i32, i32) #1

declare dso_local i32 @_WRITE_U8(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
