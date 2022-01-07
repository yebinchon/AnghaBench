; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_spdif.c_spdif_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_spdif.c_spdif_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_33__**, %struct.TYPE_33__**, %struct.TYPE_30__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.TYPE_27__*, i32 }
%struct.TYPE_32__ = type { i64 (%struct.TYPE_33__*)*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i64 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i32*, i32, i32, i64, i64 }
%struct.TYPE_34__ = type { i32 }

@spdif_do_processing.ac3_spdif_header = internal constant [6 x i32] [i32 114, i32 248, i32 31, i32 78, i32 1, i32 0], align 16
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"format not set on port %s %p (%i)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to send an error event buffer\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"discarding event %i on port %s %p\00", align 1
@MMAL_BUFFER_HEADER_FLAG_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"config buffer %ibytes\00", align 1
@SPDIF_AC3_FRAME_SIZE = common dso_local global i32 0, align 4
@MMAL_ENCODING_EAC3 = common dso_local global i64 0, align 8
@SPDIF_EAC3_FRAME_SIZE = common dso_local global i32 0, align 4
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"frame: %lld, size %i\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"invalid data size (%i bytes)\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"invalid data (%i bytes): %2.2x,%2.2x,%2.2x,%2.2x\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"format change: %i->%i\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"frame too big, truncating (%i/%i bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*)* @spdif_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_do_processing(%struct.TYPE_35__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  %15 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  store %struct.TYPE_36__* %19, %struct.TYPE_36__** %4, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %22, i64 0
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  store %struct.TYPE_33__* %24, %struct.TYPE_33__** %5, align 8
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %27, i64 0
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  store %struct.TYPE_33__* %29, %struct.TYPE_33__** %6, align 8
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %574

39:                                               ; preds = %1
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_26__* @mmal_queue_get(i32 %46)
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %7, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %49 = icmp ne %struct.TYPE_26__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %574

51:                                               ; preds = %39
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %128

56:                                               ; preds = %51
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %58 = call %struct.TYPE_34__* @mmal_event_format_changed_get(%struct.TYPE_26__* %57)
  store %struct.TYPE_34__* %58, %struct.TYPE_34__** %14, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %60 = icmp ne %struct.TYPE_34__* %59, null
  br i1 %60, label %61, label %112

61:                                               ; preds = %56
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @mmal_format_full_copy(%struct.TYPE_27__* %64, i32 %67)
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MMAL_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %61
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 0
  %81 = load i64 (%struct.TYPE_33__*)*, i64 (%struct.TYPE_33__*)** %80, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %83 = call i64 %81(%struct.TYPE_33__* %82)
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %76, %61
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MMAL_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %95, %struct.TYPE_33__* %96, i64 %99)
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @mmal_event_error_send(%struct.TYPE_35__* %101, i64 %104)
  %106 = load i64, i64* @MMAL_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %92
  br label %111

111:                                              ; preds = %110, %86
  br label %122

112:                                              ; preds = %56
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %121 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %119, %struct.TYPE_33__* %120)
  br label %122

122:                                              ; preds = %112, %111
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %127 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_33__* %125, %struct.TYPE_26__* %126)
  store i32 1, i32* %2, align 4
  br label %574

128:                                              ; preds = %51
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MMAL_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %143 = call i32 @mmal_queue_put_back(i32 %141, %struct.TYPE_26__* %142)
  store i32 0, i32* %2, align 4
  br label %574

144:                                              ; preds = %128
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %144
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_33__* %155, %struct.TYPE_26__* %156)
  store i32 1, i32* %2, align 4
  br label %574

158:                                              ; preds = %149, %144
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_CONFIG, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, i32, ...) @LOG_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_33__* %172, %struct.TYPE_26__* %173)
  store i32 1, i32* %2, align 4
  br label %574

175:                                              ; preds = %158
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call %struct.TYPE_26__* @mmal_queue_get(i32 %182)
  store %struct.TYPE_26__* %183, %struct.TYPE_26__** %8, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %185 = icmp ne %struct.TYPE_26__* %184, null
  br i1 %185, label %196, label %186

186:                                              ; preds = %175
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %195 = call i32 @mmal_queue_put_back(i32 %193, %struct.TYPE_26__* %194)
  store i32 0, i32* %2, align 4
  br label %574

196:                                              ; preds = %175
  %197 = load i32, i32* @SPDIF_AC3_FRAME_SIZE, align 4
  store i32 %197, i32* %12, align 4
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MMAL_ENCODING_EAC3, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = load i32, i32* @SPDIF_EAC3_FRAME_SIZE, align 4
  store i32 %206, i32* %12, align 4
  br label %207

207:                                              ; preds = %205, %196
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = icmp ult i32 %210, %211
  br i1 %212, label %213, label %245

213:                                              ; preds = %207
  %214 = load i64, i64* @MMAL_EINVAL, align 8
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i64 @mmal_event_error_send(%struct.TYPE_35__* %217, i64 %220)
  %222 = load i64, i64* @MMAL_SUCCESS, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %213
  %225 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %213
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %235 = call i32 @mmal_queue_put_back(i32 %233, %struct.TYPE_26__* %234)
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %244 = call i32 @mmal_queue_put_back(i32 %242, %struct.TYPE_26__* %243)
  store i32 0, i32* %2, align 4
  br label %574

245:                                              ; preds = %207
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %258, label %250

250:                                              ; preds = %245
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  store i32 0, i32* %257, align 8
  br label %529

258:                                              ; preds = %250, %245
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 6
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (i8*, i32, ...) @LOG_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %262, i32 %265)
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %268 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_26__* %267)
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %270 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_26__* %269)
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %273, i64 %277
  store i32* %278, i32** %13, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %281, 5
  br i1 %282, label %283, label %288

283:                                              ; preds = %258
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %286)
  br label %555

288:                                              ; preds = %258
  %289 = load i32*, i32** %13, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 11
  br i1 %292, label %325, label %293

293:                                              ; preds = %288
  %294 = load i32*, i32** %13, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 119
  br i1 %297, label %325, label %298

298:                                              ; preds = %293
  %299 = load i32*, i32** %13, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 119
  br i1 %302, label %325, label %303

303:                                              ; preds = %298
  %304 = load i32*, i32** %13, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 11
  br i1 %307, label %325, label %308

308:                                              ; preds = %303
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32*, i32** %13, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %13, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %13, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %13, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 3
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %311, i32 %314, i32 %317, i32 %320, i32 %323)
  br label %555

325:                                              ; preds = %303, %298, %293, %288
  %326 = load i32*, i32** %13, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 4
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, 192
  %330 = icmp eq i32 %329, 64
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  store i32 44100, i32* %10, align 4
  br label %341

332:                                              ; preds = %325
  %333 = load i32*, i32** %13, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 4
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, 192
  %337 = icmp eq i32 %336, 128
  br i1 %337, label %338, label %339

338:                                              ; preds = %332
  store i32 32000, i32* %10, align 4
  br label %340

339:                                              ; preds = %332
  store i32 48000, i32* %10, align 4
  br label %340

340:                                              ; preds = %339, %338
  br label %341

341:                                              ; preds = %340, %331
  %342 = load i32, i32* %10, align 4
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %342, %350
  br i1 %351, label %352, label %399

352:                                              ; preds = %341
  %353 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %10, align 4
  %362 = call i32 @LOG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %360, i32 %361)
  %363 = load i32, i32* %10, align 4
  %364 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_27__*, %struct.TYPE_27__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 0
  store i32 %363, i32* %370, align 4
  %371 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %372 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_27__*, %struct.TYPE_27__** %374, align 8
  %376 = call i32 @spdif_send_event_format_changed(%struct.TYPE_35__* %371, %struct.TYPE_33__* %372, %struct.TYPE_27__* %375)
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %378 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_26__* %377)
  %379 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %380 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_26__* %379)
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_32__*, %struct.TYPE_32__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %389 = call i32 @mmal_queue_put_back(i32 %387, %struct.TYPE_26__* %388)
  %390 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_32__*, %struct.TYPE_32__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %398 = call i32 @mmal_queue_put_back(i32 %396, %struct.TYPE_26__* %397)
  store i32 0, i32* %2, align 4
  br label %574

399:                                              ; preds = %341
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* %12, align 4
  %404 = sub i32 %403, 8
  %405 = icmp ugt i32 %402, %404
  br i1 %405, label %406, label %413

406:                                              ; preds = %399
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* %12, align 4
  %411 = sub i32 %410, 8
  %412 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %409, i32 %411)
  br label %413

413:                                              ; preds = %406, %399
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %12, align 4
  %418 = sub i32 %417, 8
  %419 = call i32 @MMAL_MIN(i32 %416, i32 %418)
  %420 = sdiv i32 %419, 2
  store i32 %420, i32* %11, align 4
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 3
  %423 = load i32*, i32** %422, align 8
  %424 = call i32 @memcpy(i32* %423, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @spdif_do_processing.ac3_spdif_header, i64 0, i64 0), i32 24)
  %425 = load i32*, i32** %13, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 5
  %427 = load i32, i32* %426, align 4
  %428 = and i32 %427, 7
  %429 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %429, i32 0, i32 3
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 5
  store i32 %428, i32* %432, align 4
  %433 = load i32, i32* %11, align 4
  %434 = and i32 %433, 255
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %435, i32 0, i32 3
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 6
  store i32 %434, i32* %438, align 4
  %439 = load i32, i32* %11, align 4
  %440 = lshr i32 %439, 8
  %441 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %441, i32 0, i32 3
  %443 = load i32*, i32** %442, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 7
  store i32 %440, i32* %444, align 4
  %445 = load i32*, i32** %13, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = icmp eq i32 %447, 11
  br i1 %448, label %449, label %497

449:                                              ; preds = %413
  store i32 0, i32* %9, align 4
  br label %450

450:                                              ; preds = %493, %449
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %11, align 4
  %453 = icmp ult i32 %451, %452
  br i1 %453, label %454, label %496

454:                                              ; preds = %450
  %455 = load i32*, i32** %13, align 8
  %456 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* %9, align 4
  %460 = mul i32 %459, 2
  %461 = add i32 %458, %460
  %462 = add i32 %461, 1
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %455, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %466, i32 0, i32 3
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %9, align 4
  %470 = mul i32 %469, 2
  %471 = add i32 8, %470
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %468, i64 %472
  store i32 %465, i32* %473, align 4
  %474 = load i32*, i32** %13, align 8
  %475 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* %9, align 4
  %479 = mul i32 %478, 2
  %480 = add i32 %477, %479
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %474, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %485 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %484, i32 0, i32 3
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* %9, align 4
  %488 = mul i32 %487, 2
  %489 = add i32 8, %488
  %490 = add i32 %489, 1
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %486, i64 %491
  store i32 %483, i32* %492, align 4
  br label %493

493:                                              ; preds = %454
  %494 = load i32, i32* %9, align 4
  %495 = add i32 %494, 1
  store i32 %495, i32* %9, align 4
  br label %450

496:                                              ; preds = %450
  br label %507

497:                                              ; preds = %413
  %498 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %499 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %498, i32 0, i32 3
  %500 = load i32*, i32** %499, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 8
  %502 = load i32*, i32** %13, align 8
  %503 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @memcpy(i32* %501, i32* %502, i32 %505)
  br label %507

507:                                              ; preds = %497, %496
  %508 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %508, i32 0, i32 3
  %510 = load i32*, i32** %509, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 8
  %512 = load i32, i32* %11, align 4
  %513 = mul i32 %512, 2
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %511, i64 %514
  %516 = load i32, i32* %12, align 4
  %517 = load i32, i32* %11, align 4
  %518 = mul i32 %517, 2
  %519 = sub i32 %516, %518
  %520 = sub i32 %519, 8
  %521 = call i32 @memset(i32* %515, i32 0, i32 %520)
  %522 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %523 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_26__* %522)
  %524 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %525 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_26__* %524)
  %526 = load i32, i32* %12, align 4
  %527 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %528 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %527, i32 0, i32 0
  store i32 %526, i32* %528, align 8
  br label %529

529:                                              ; preds = %507, %255
  %530 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %531 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %530, i32 0, i32 4
  store i32 0, i32* %531, align 8
  %532 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %536 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %535, i32 0, i32 1
  store i32 %534, i32* %536, align 4
  %537 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %537, i32 0, i32 6
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %540, i32 0, i32 6
  store i64 %539, i64* %541, align 8
  %542 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %543 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %542, i32 0, i32 5
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %545, i32 0, i32 5
  store i32 %544, i32* %546, align 4
  %547 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %548 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %547, i32 0, i32 0
  store i32 0, i32* %548, align 8
  %549 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %550 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %551 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_33__* %549, %struct.TYPE_26__* %550)
  %552 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %553 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %554 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_33__* %552, %struct.TYPE_26__* %553)
  store i32 1, i32* %2, align 4
  br label %574

555:                                              ; preds = %308, %283
  %556 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %557 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_26__* %556)
  %558 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %559 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_26__* %558)
  %560 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %561 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %560, i32 0, i32 0
  store i32 0, i32* %561, align 8
  %562 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %563 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_32__*, %struct.TYPE_32__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %564, i32 0, i32 1
  %566 = load %struct.TYPE_31__*, %struct.TYPE_31__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %570 = call i32 @mmal_queue_put_back(i32 %568, %struct.TYPE_26__* %569)
  %571 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %572 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %573 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_33__* %571, %struct.TYPE_26__* %572)
  store i32 1, i32* %2, align 4
  br label %574

574:                                              ; preds = %555, %529, %352, %226, %186, %165, %154, %134, %122, %50, %38
  %575 = load i32, i32* %2, align 4
  ret i32 %575
}

declare dso_local %struct.TYPE_26__* @mmal_queue_get(i32) #1

declare dso_local %struct.TYPE_34__* @mmal_event_format_changed_get(%struct.TYPE_26__*) #1

declare dso_local i64 @mmal_format_full_copy(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64 @mmal_event_error_send(%struct.TYPE_35__*, i64) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_33__*, %struct.TYPE_26__*) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_26__*) #1

declare dso_local i32 @LOG_INFO(i8*, i32, i32) #1

declare dso_local i32 @spdif_send_event_format_changed(%struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_26__*) #1

declare dso_local i32 @MMAL_MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
