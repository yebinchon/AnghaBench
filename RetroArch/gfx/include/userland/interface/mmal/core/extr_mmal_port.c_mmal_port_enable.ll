; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_27__*, %struct.TYPE_26__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__* }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s port %p, cb %p, buffers (%i/%i/%i,%i/%i/%i)\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s(%p) already enabled\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"callback (%p) not allowed for connected port (%s)%p\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@mmal_port_connected_output_cb = common dso_local global %struct.TYPE_27__* null, align 8
@mmal_port_connected_input_cb = common dso_local global %struct.TYPE_27__* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to enable connected port (%s)%p (%s)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to enable port %s(%p) (%s)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to start connection (%s)%p (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_port_enable(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %10 = icmp ne %struct.TYPE_27__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %15 = icmp ne %struct.TYPE_26__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %2
  %17 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %17, i64* %3, align 8
  br label %262

18:                                               ; preds = %11
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.TYPE_27__* %21, %struct.TYPE_27__* %22, %struct.TYPE_27__* %23, i32 %27, i32 %31, i32 %35, i32 %39, i32 %43, i32 %47)
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %18
  %56 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %56, i64* %3, align 8
  br label %262

57:                                               ; preds = %18
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  store %struct.TYPE_28__* %62, %struct.TYPE_28__** %8, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %64 = call i32 @LOCK_CONNECTION(%struct.TYPE_27__* %63)
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  store %struct.TYPE_27__* %67, %struct.TYPE_27__** %7, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %57
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %74 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %73)
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %76, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %79 = call i32 (i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_27__* %77, %struct.TYPE_27__* %78)
  %80 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %80, i64* %3, align 8
  br label %262

81:                                               ; preds = %57
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %83 = icmp ne %struct.TYPE_27__* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %86 = icmp ne %struct.TYPE_27__* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %89 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %88)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %95 = call i32 (i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_27__* %90, %struct.TYPE_27__* %93, %struct.TYPE_27__* %94)
  %96 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %96, i64* %3, align 8
  br label %262

97:                                               ; preds = %84, %81
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %99 = icmp ne %struct.TYPE_27__* %98, null
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %102 = call i32 @LOCK_CONNECTION(%struct.TYPE_27__* %101)
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %105 = call i64 @mmal_port_connection_enable(%struct.TYPE_27__* %103, %struct.TYPE_27__* %104)
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @MMAL_SUCCESS, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %111 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %110)
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %113 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %112)
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  br label %262

115:                                              ; preds = %100
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** @mmal_port_connected_output_cb, align 8
  br label %125

123:                                              ; preds = %115
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** @mmal_port_connected_input_cb, align 8
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi %struct.TYPE_27__* [ %122, %121 ], [ %124, %123 ]
  store %struct.TYPE_27__* %126, %struct.TYPE_27__** %5, align 8
  br label %127

127:                                              ; preds = %125, %97
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %129 = icmp ne %struct.TYPE_27__* %128, null
  br i1 %129, label %130, label %152

130:                                              ; preds = %127
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %130
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** @mmal_port_connected_input_cb, align 8
  %139 = call i64 @mmal_port_enable_internal(%struct.TYPE_27__* %137, %struct.TYPE_27__* %138)
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @MMAL_SUCCESS, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %145, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %148 = load i64, i64* %6, align 8
  %149 = call %struct.TYPE_27__* @mmal_status_to_string(i64 %148)
  %150 = call i32 (i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_27__* %146, %struct.TYPE_27__* %147, %struct.TYPE_27__* %149)
  br label %226

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151, %130, %127
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %155 = call i64 @mmal_port_enable_internal(%struct.TYPE_27__* %153, %struct.TYPE_27__* %154)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @MMAL_SUCCESS, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %161, align 8
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %164 = load i64, i64* %6, align 8
  %165 = call %struct.TYPE_27__* @mmal_status_to_string(i64 %164)
  %166 = call i32 (i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_27__* %162, %struct.TYPE_27__* %163, %struct.TYPE_27__* %165)
  br label %226

167:                                              ; preds = %152
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %169 = icmp ne %struct.TYPE_27__* %168, null
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** @mmal_port_connected_output_cb, align 8
  %179 = call i64 @mmal_port_enable_internal(%struct.TYPE_27__* %177, %struct.TYPE_27__* %178)
  store i64 %179, i64* %6, align 8
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* @MMAL_SUCCESS, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %185, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %188 = load i64, i64* %6, align 8
  %189 = call %struct.TYPE_27__* @mmal_status_to_string(i64 %188)
  %190 = call i32 (i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_27__* %186, %struct.TYPE_27__* %187, %struct.TYPE_27__* %189)
  br label %226

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %170, %167
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %194 = icmp ne %struct.TYPE_27__* %193, null
  br i1 %194, label %195, label %216

195:                                              ; preds = %192
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %195
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %203 = call i64 @mmal_port_connection_start(%struct.TYPE_27__* %201, %struct.TYPE_27__* %202)
  store i64 %203, i64* %6, align 8
  %204 = load i64, i64* %6, align 8
  %205 = load i64, i64* @MMAL_SUCCESS, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %200
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %212 = load i64, i64* %6, align 8
  %213 = call %struct.TYPE_27__* @mmal_status_to_string(i64 %212)
  %214 = call i32 (i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_27__* %210, %struct.TYPE_27__* %211, %struct.TYPE_27__* %213)
  br label %226

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %195, %192
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %218 = icmp ne %struct.TYPE_27__* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %221 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %224 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %223)
  %225 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %225, i64* %3, align 8
  br label %262

226:                                              ; preds = %207, %183, %159, %143
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %228 = icmp ne %struct.TYPE_27__* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %236 = call i32 @mmal_port_disable_internal(%struct.TYPE_27__* %235)
  br label %237

237:                                              ; preds = %234, %229, %226
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %244 = call i32 @mmal_port_disable_internal(%struct.TYPE_27__* %243)
  br label %245

245:                                              ; preds = %242, %237
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %247 = icmp ne %struct.TYPE_27__* %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %251 = call i32 @mmal_port_connection_disable(%struct.TYPE_27__* %249, %struct.TYPE_27__* %250)
  br label %252

252:                                              ; preds = %248, %245
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %254 = icmp ne %struct.TYPE_27__* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %257 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %256)
  br label %258

258:                                              ; preds = %255, %252
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %260 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_27__* %259)
  %261 = load i64, i64* %6, align 8
  store i64 %261, i64* %3, align 8
  br label %262

262:                                              ; preds = %258, %222, %109, %87, %72, %55, %16
  %263 = load i64, i64* %3, align 8
  ret i64 %263
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LOCK_CONNECTION(%struct.TYPE_27__*) #1

declare dso_local i32 @UNLOCK_CONNECTION(%struct.TYPE_27__*) #1

declare dso_local i32 @LOG_ERROR(i8*, %struct.TYPE_27__*, %struct.TYPE_27__*, ...) #1

declare dso_local i64 @mmal_port_connection_enable(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i64 @mmal_port_enable_internal(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @mmal_status_to_string(i64) #1

declare dso_local i64 @mmal_port_connection_start(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mmal_port_disable_internal(%struct.TYPE_27__*) #1

declare dso_local i32 @mmal_port_connection_disable(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
