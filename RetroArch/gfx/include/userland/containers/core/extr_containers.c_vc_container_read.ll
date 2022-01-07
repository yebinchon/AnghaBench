; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers.c_vc_container_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__*, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32* }

@VC_CONTAINER_ERROR_CONTINUE = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_FORCE_TRACK = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_INFO = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@PACKETIZER_BUFFER_SIZE = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_read(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* @VC_CONTAINER_ERROR_CONTINUE, align 8
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @VC_CONTAINER_READ_FLAG_FORCE_TRACK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 8
  store i64 %27, i64* %4, align 8
  br label %331

28:                                               ; preds = %21, %3
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 8
  store i64 %37, i64* %4, align 8
  br label %331

38:                                               ; preds = %31, %28
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %49 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 8
  store i64 %54, i64* %4, align 8
  br label %331

55:                                               ; preds = %46, %41, %38
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @VC_CONTAINER_READ_FLAG_FORCE_TRACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %66, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %74, i64 %77
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %71, %63, %60
  %84 = load i64, i64* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 8
  store i64 %84, i64* %4, align 8
  br label %331

85:                                               ; preds = %71, %55
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = icmp ne %struct.TYPE_17__* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %6, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @container_read_packet(%struct.TYPE_16__* %101, %struct.TYPE_17__* %102, i32 %103)
  store i64 %104, i64* %8, align 8
  br label %289

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @VC_PACKETIZER_FLAG_INFO, align 4
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @VC_PACKETIZER_FLAG_SKIP, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %114
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %181, %123
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ult i64 %126, %129
  br i1 %130, label %131, label %184

131:                                              ; preds = %124
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %134, i64 %136
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %13, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %145, i64 %147
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %131
  %154 = load i32*, i32** %13, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = zext i32 %160 to i64
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159, %153, %131
  br label %181

167:                                              ; preds = %159, %156
  %168 = load i32*, i32** %13, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i64 @vc_packetizer_read(i32* %168, %struct.TYPE_17__* %169, i32 %170)
  store i64 %171, i64* %8, align 8
  %172 = load i32, i32* %12, align 4
  %173 = zext i32 %172 to i64
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %184

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180, %166
  %182 = load i32, i32* %12, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %124

184:                                              ; preds = %179, %124
  %185 = load i32, i32* %12, align 4
  %186 = zext i32 %185 to i64
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ult i64 %186, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %289

192:                                              ; preds = %184
  br label %193

193:                                              ; preds = %192, %287
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  store %struct.TYPE_17__* %197, %struct.TYPE_17__** %14, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @VC_PACKETIZER_FLAG_INFO, align 4
  %207 = or i32 %205, %206
  %208 = call i64 @container_read_packet(%struct.TYPE_16__* %203, %struct.TYPE_17__* %204, i32 %207)
  store i64 %208, i64* %8, align 8
  %209 = load i64, i64* %8, align 8
  %210 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %193
  %213 = load i64, i64* %8, align 8
  store i64 %213, i64* %4, align 8
  br label %331

214:                                              ; preds = %193
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %216, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %217, i64 %220
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %214
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i64 @container_read_packet(%struct.TYPE_16__* %229, %struct.TYPE_17__* %230, i32 %231)
  store i64 %232, i64* %8, align 8
  br label %288

233:                                              ; preds = %214
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %235, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %236, i64 %239
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  store i32* %245, i32** %10, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* @PACKETIZER_BUFFER_SIZE, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 3
  store i64 0, i64* %257, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %260 = load i32, i32* %11, align 4
  %261 = call i64 @container_read_packet(%struct.TYPE_16__* %258, %struct.TYPE_17__* %259, i32 %260)
  store i64 %261, i64* %8, align 8
  %262 = load i64, i64* %8, align 8
  %263 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %233
  %266 = load i64, i64* %8, align 8
  store i64 %266, i64* %4, align 8
  br label %331

267:                                              ; preds = %233
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  store i64 %270, i64* %272, align 8
  %273 = load i32*, i32** %10, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %275 = call i32 @vc_packetizer_push(i32* %273, %struct.TYPE_17__* %274)
  %276 = load i32*, i32** %10, align 8
  %277 = load i32, i32* @VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT, align 4
  %278 = call i32 @vc_packetizer_pop(i32* %276, %struct.TYPE_17__** %14, i32 %277)
  %279 = load i32*, i32** %10, align 8
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %281 = load i32, i32* %9, align 4
  %282 = call i64 @vc_packetizer_read(i32* %279, %struct.TYPE_17__* %280, i32 %281)
  store i64 %282, i64* %8, align 8
  %283 = load i64, i64* %8, align 8
  %284 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %267
  br label %288

287:                                              ; preds = %267
  br label %193

288:                                              ; preds = %286, %228
  br label %289

289:                                              ; preds = %288, %191, %100
  %290 = load i64, i64* %8, align 8
  %291 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i64, i64* %8, align 8
  store i64 %294, i64* %4, align 8
  br label %331

295:                                              ; preds = %289
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %297 = icmp ne %struct.TYPE_17__* %296, null
  br i1 %297, label %298, label %312

298:                                              ; preds = %295
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp sgt i64 %301, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %298
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 1
  store i64 %309, i64* %311, align 8
  br label %312

312:                                              ; preds = %306, %298, %295
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %314 = icmp ne %struct.TYPE_17__* %313, null
  br i1 %314, label %315, label %329

315:                                              ; preds = %312
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp sgt i64 %318, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %315
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 1
  store i64 %326, i64* %328, align 8
  br label %329

329:                                              ; preds = %323, %315, %312
  %330 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %330, i64* %4, align 8
  br label %331

331:                                              ; preds = %329, %293, %265, %212, %83, %53, %36, %26
  %332 = load i64, i64* %4, align 8
  ret i64 %332
}

declare dso_local i64 @container_read_packet(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @vc_packetizer_read(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vc_packetizer_push(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @vc_packetizer_pop(i32*, %struct.TYPE_17__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
