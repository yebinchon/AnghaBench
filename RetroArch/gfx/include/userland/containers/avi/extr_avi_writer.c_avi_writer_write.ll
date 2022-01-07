; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_writer_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_writer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_33__**, %struct.TYPE_31__* }
%struct.TYPE_33__ = type { %struct.TYPE_30__*, %struct.TYPE_32__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64, i8*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64, i32, i64, i64, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LIST Size\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@AVI_FRAME_BUFFER_SIZE = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVI_AUDIO_CHUNK_SIZE_LIMIT = common dso_local global i64 0, align 8
@VC_CONTAINER_CONTROL_IO_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_35__*, %struct.TYPE_36__*)* @avi_writer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_writer_write(%struct.TYPE_35__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  %12 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %6, align 8
  %17 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %17, i64* %7, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %9, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %24 = call i64 @avi_write_headers(%struct.TYPE_35__* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %3, align 8
  br label %511

29:                                               ; preds = %22
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %39 = call i64 @STREAM_POSITION(%struct.TYPE_35__* %38)
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @INT64_C(i32 0)
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @vc_container_assert(i32 %47)
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %50 = call i32 @VC_FOURCC(i8 signext 76, i8 signext 73, i8 signext 83, i8 signext 84)
  %51 = call i32 @WRITE_FOURCC(%struct.TYPE_35__* %49, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %53 = call i32 @WRITE_U32(%struct.TYPE_35__* %52, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %55 = call i32 @VC_FOURCC(i8 signext 109, i8 signext 111, i8 signext 118, i8 signext 105)
  %56 = call i32 @WRITE_FOURCC(%struct.TYPE_35__* %54, i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %58 = call i64 @STREAM_STATUS(%struct.TYPE_35__* %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %3, align 8
  br label %511

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %32
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %64
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %131

77:                                               ; preds = %69
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %79, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %80, i64 %83
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %88, align 8
  store %struct.TYPE_34__* %89, %struct.TYPE_34__** %9, align 8
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @avi_finish_data_chunk(%struct.TYPE_35__* %90, i64 %93)
  store i64 %94, i64* %7, align 8
  %95 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @avi_write_index_entry(%struct.TYPE_35__* %95, i64 %98, i64 %101, i32 0)
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @MAX(i8* %116, i64 %119)
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %77
  %129 = load i64, i64* %7, align 8
  store i64 %129, i64* %3, align 8
  br label %511

130:                                              ; preds = %77
  br label %131

131:                                              ; preds = %130, %69, %64
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %133 = call i64 @avi_num_chunks(%struct.TYPE_35__* %132)
  %134 = load i64, i64* @ULONG_MAX, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %137, i64* %3, align 8
  br label %511

138:                                              ; preds = %131
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %140 = call i64 @STREAM_SEEKABLE(%struct.TYPE_35__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %145 = call i64 @avi_calculate_file_size(%struct.TYPE_35__* %143, %struct.TYPE_36__* %144)
  %146 = load i64, i64* @ULONG_MAX, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %149, i64* %3, align 8
  br label %511

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %138
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %156, %151
  %164 = phi i1 [ false, %151 ], [ %162, %156 ]
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 @vc_container_assert(i32 %166)
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %169, align 8
  %171 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %170, i64 %173
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %174, align 8
  store %struct.TYPE_33__* %175, %struct.TYPE_33__** %8, align 8
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %177, align 8
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %178, i64 %181
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %186, align 8
  store %struct.TYPE_34__* %187, %struct.TYPE_34__** %9, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 3
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %287

197:                                              ; preds = %163
  %198 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @avi_chunk_id_from_track_num(%struct.TYPE_35__* %198, i32* %10, i64 %201)
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %197
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 4
  store i64 %210, i64* %212, align 8
  store i64 %210, i64* %11, align 8
  br label %219

213:                                              ; preds = %197
  %214 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %11, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 4
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %213, %207
  %220 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @WRITE_FOURCC(%struct.TYPE_35__* %220, i32 %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %224 = call i64 @STREAM_SEEKABLE(%struct.TYPE_35__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %219
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %226, %219
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %235 = load i64, i64* %11, align 8
  %236 = call i32 @WRITE_U32(%struct.TYPE_35__* %234, i64 %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %237 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @WRITE_BYTES(%struct.TYPE_35__* %237, i32 %240, i64 %243)
  br label %281

245:                                              ; preds = %226
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @vc_container_assert(i32 %248)
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @AVI_FRAME_BUFFER_SIZE, align 8
  %254 = icmp sgt i64 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %245
  %256 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %256, i64* %3, align 8
  br label %511

257:                                              ; preds = %245
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 6
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %261 = bitcast %struct.TYPE_36__* %259 to i8*
  %262 = bitcast %struct.TYPE_36__* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 40, i1 false)
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 6
  %268 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %267, i32 0, i32 4
  store i32 %265, i32* %268, align 8
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 6
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @memcpy(i32 %272, i32 %275, i64 %279)
  br label %281

281:                                              ; preds = %257, %233
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 2
  store i64 %284, i64* %286, align 8
  br label %362

287:                                              ; preds = %163
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 6
  %290 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %345

293:                                              ; preds = %287
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %345

298:                                              ; preds = %293
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 6
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %302, 0
  br i1 %303, label %304, label %344

304:                                              ; preds = %298
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %308, %311
  %313 = load i64, i64* @AVI_FRAME_BUFFER_SIZE, align 8
  %314 = icmp sgt i64 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %304
  %316 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %316, i64* %3, align 8
  br label %511

317:                                              ; preds = %304
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 6
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 6
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %322, %326
  %328 = trunc i64 %327 to i32
  %329 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = call i32 @memcpy(i32 %328, i32 %331, i64 %334)
  %336 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 6
  %341 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, %338
  store i64 %343, i64* %341, align 8
  br label %344

344:                                              ; preds = %317, %298
  br label %354

345:                                              ; preds = %293, %287
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %347 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = call i32 @WRITE_BYTES(%struct.TYPE_35__* %346, i32 %349, i64 %352)
  br label %354

354:                                              ; preds = %345, %344
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = add nsw i64 %360, %357
  store i64 %361, i64* %359, align 8
  br label %362

362:                                              ; preds = %354, %281
  %363 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %364 = call i64 @STREAM_STATUS(%struct.TYPE_35__* %363)
  store i64 %364, i64* %7, align 8
  %365 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %366 = icmp ne i64 %364, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = load i64, i64* %7, align 8
  store i64 %368, i64* %3, align 8
  br label %511

369:                                              ; preds = %362
  %370 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %400, label %376

376:                                              ; preds = %369
  %377 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_30__*, %struct.TYPE_30__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %508

384:                                              ; preds = %376
  %385 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %508

394:                                              ; preds = %384
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @AVI_AUDIO_CHUNK_SIZE_LIMIT, align 8
  %399 = icmp sgt i64 %397, %398
  br i1 %399, label %400, label %508

400:                                              ; preds = %394, %369
  %401 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %401, i32 0, i32 6
  %403 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %402, i32 0, i32 3
  %404 = load i64, i64* %403, align 8
  %405 = icmp sgt i64 %404, 0
  br i1 %405, label %406, label %432

406:                                              ; preds = %400
  %407 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 6
  %410 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %409, i32 0, i32 3
  %411 = load i64, i64* %410, align 8
  %412 = call i32 @WRITE_U32(%struct.TYPE_35__* %407, i64 %411, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %413 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %414, i32 0, i32 6
  %416 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %418, i32 0, i32 6
  %420 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = call i32 @WRITE_BYTES(%struct.TYPE_35__* %413, i32 %417, i64 %421)
  %423 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %423, i32 0, i32 6
  %425 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %424, i32 0, i32 3
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %427, i32 0, i32 3
  store i64 %426, i64* %428, align 8
  %429 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %429, i32 0, i32 6
  %431 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %430, i32 0, i32 3
  store i64 0, i64* %431, align 8
  br label %432

432:                                              ; preds = %406, %400
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 4
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %451, label %437

437:                                              ; preds = %432
  %438 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = icmp sgt i64 %440, %443
  br i1 %444, label %445, label %451

445:                                              ; preds = %437
  %446 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = call i64 @avi_finish_data_chunk(%struct.TYPE_35__* %446, i64 %449)
  store i64 %450, i64* %7, align 8
  br label %454

451:                                              ; preds = %437, %432
  %452 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %453 = call i64 @avi_finish_data_chunk(%struct.TYPE_35__* %452, i64 0)
  store i64 %453, i64* %7, align 8
  br label %454

454:                                              ; preds = %451, %445
  %455 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %456 = call i64 @STREAM_SEEKABLE(%struct.TYPE_35__* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %462, label %458

458:                                              ; preds = %454
  %459 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %460 = load i32, i32* @VC_CONTAINER_CONTROL_IO_FLUSH, align 4
  %461 = call i32 @vc_container_control(%struct.TYPE_35__* %459, i32 %460)
  br label %462

462:                                              ; preds = %458, %454
  %463 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %464 = call i64 @STREAM_SEEKABLE(%struct.TYPE_35__* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %479

466:                                              ; preds = %462
  %467 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %468 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 2
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @AVI_PACKET_IS_KEYFRAME(i32 %476)
  %478 = call i32 @avi_write_index_entry(%struct.TYPE_35__* %467, i64 %470, i64 %473, i32 %477)
  br label %479

479:                                              ; preds = %466, %462
  %480 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %481 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %481, align 8
  %484 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %488 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = add nsw i64 %489, %486
  store i64 %490, i64* %488, align 8
  %491 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %492 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %491, i32 0, i32 1
  %493 = load i8*, i8** %492, align 8
  %494 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %494, i32 0, i32 2
  %496 = load i64, i64* %495, align 8
  %497 = call i8* @MAX(i8* %493, i64 %496)
  %498 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %499 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %498, i32 0, i32 1
  store i8* %497, i8** %499, align 8
  %500 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %500, i32 0, i32 2
  store i64 0, i64* %501, align 8
  %502 = load i64, i64* %7, align 8
  %503 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %504 = icmp ne i64 %502, %503
  br i1 %504, label %505, label %507

505:                                              ; preds = %479
  %506 = load i64, i64* %7, align 8
  store i64 %506, i64* %3, align 8
  br label %511

507:                                              ; preds = %479
  br label %508

508:                                              ; preds = %507, %394, %384, %376
  %509 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %510 = call i64 @STREAM_STATUS(%struct.TYPE_35__* %509)
  store i64 %510, i64* %3, align 8
  br label %511

511:                                              ; preds = %508, %505, %367, %315, %255, %148, %136, %128, %61, %27
  %512 = load i64, i64* %3, align 8
  ret i64 %512
}

declare dso_local i64 @avi_write_headers(%struct.TYPE_35__*) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_35__*) #1

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i64 @INT64_C(i32) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_35__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_35__*, i64, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_35__*) #1

declare dso_local i64 @avi_finish_data_chunk(%struct.TYPE_35__*, i64) #1

declare dso_local i32 @avi_write_index_entry(%struct.TYPE_35__*, i64, i64, i32) #1

declare dso_local i8* @MAX(i8*, i64) #1

declare dso_local i64 @avi_num_chunks(%struct.TYPE_35__*) #1

declare dso_local i64 @STREAM_SEEKABLE(%struct.TYPE_35__*) #1

declare dso_local i64 @avi_calculate_file_size(%struct.TYPE_35__*, %struct.TYPE_36__*) #1

declare dso_local i32 @avi_chunk_id_from_track_num(%struct.TYPE_35__*, i32*, i64) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_35__*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @vc_container_control(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @AVI_PACKET_IS_KEYFRAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
