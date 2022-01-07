; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_vc_container_io_open_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_vc_container_io_open_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_13__* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MAX_NUM_MEMORY_AREAS = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_CAPS_CANT_SEEK = common dso_local global i32 0, align 4
@io_seek_not_seekable = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_CAPS_NO_CACHING = common dso_local global i32 0, align 4
@VC_CONTAINER_IO_MODE_WRITE = common dso_local global i32 0, align 4
@MEM_CACHE_WRITE_MAX_SIZE = common dso_local global i32 0, align 4
@MEM_CACHE_READ_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@MEM_CACHE_TMP_MAX_SIZE = common dso_local global i32 0, align 4
@NUM_TMP_MEMORY_AREAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i8*, i32, i32, i32, i64*)* @vc_container_io_open_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @vc_container_io_open_core(i8* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %19 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %19, i64* %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* @MAX_NUM_MEMORY_AREAS, align 4
  store i32 %20, i32* %17, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 88, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @malloc(i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %12, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %33, i64* %11, align 8
  br label %269

34:                                               ; preds = %5
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %36 = load i32, i32* %14, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 88, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(%struct.TYPE_13__* %35, i32 0, i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 1
  %43 = bitcast %struct.TYPE_13__* %42 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %13, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 1
  %48 = bitcast %struct.TYPE_14__* %47 to i8*
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @memcpy(i8* %53, i8* %54, i32 %55)
  %57 = call i32 (...) @vc_uri_create()
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %34
  %65 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %65, i64* %11, align 8
  br label %269

66:                                               ; preds = %34
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @vc_uri_parse(i32 %69, i8* %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %129

74:                                               ; preds = %66
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @vc_container_io_null_open(%struct.TYPE_13__* %75, i8* %76, i32 %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @vc_container_io_net_open(%struct.TYPE_13__* %82, i8* %83, i32 %84)
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @vc_container_io_pktfile_open(%struct.TYPE_13__* %90, i8* %91, i32 %92)
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @vc_container_io_file_open(%struct.TYPE_13__* %98, i8* %99, i32 %100)
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %97, %94
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %269

107:                                              ; preds = %102
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @VC_CONTAINER_IO_CAPS_CANT_SEEK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112, %107
  %120 = load i32, i32* @VC_CONTAINER_IO_CAPS_CANT_SEEK, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i64, i64* @io_seek_not_seekable, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %112
  br label %133

129:                                              ; preds = %66
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %128
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @VC_CONTAINER_IO_CAPS_NO_CACHING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 1, i32* %15, align 4
  br label %141

141:                                              ; preds = %140, %133
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @VC_CONTAINER_IO_MODE_WRITE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @MEM_CACHE_WRITE_MAX_SIZE, align 4
  store i32 %146, i32* %16, align 4
  br label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @MEM_CACHE_READ_MAX_SIZE, align 4
  store i32 %148, i32* %16, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @VC_CONTAINER_IO_MODE_WRITE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %149
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @vc_uri_path_extension(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @vc_uri_path_extension(i32 %162)
  %164 = call i32 @strcasecmp(i64 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %159
  store i32 1, i32* %15, align 4
  %167 = load i32, i32* @MEM_CACHE_TMP_MAX_SIZE, align 4
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* @NUM_TMP_MEMORY_AREAS, align 4
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %166, %159, %153, %149
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %222

172:                                              ; preds = %169
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  store %struct.TYPE_15__* %176, %struct.TYPE_15__** %18, align 8
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 5
  store %struct.TYPE_13__* %185, %struct.TYPE_13__** %187, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @malloc(i32 %193)
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %221

201:                                              ; preds = %172
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 4
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr i8, i8* %209, i64 %213
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  br label %221

221:                                              ; preds = %201, %172
  br label %222

222:                                              ; preds = %221, %169
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %222
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  store %struct.TYPE_15__* %233, %struct.TYPE_15__** %237, align 8
  br label %238

238:                                              ; preds = %229, %222
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @VC_CONTAINER_IO_MODE_WRITE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %260

242:                                              ; preds = %238
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = icmp ne %struct.TYPE_15__* %247, null
  br i1 %248, label %249, label %260

249:                                              ; preds = %242
  %250 = load i32, i32* %17, align 4
  %251 = icmp uge i32 %250, 2
  br i1 %251, label %252, label %260

252:                                              ; preds = %249
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %254 = load i32, i32* %17, align 4
  %255 = call i32 @async_io_start(%struct.TYPE_13__* %253, i32 %254, i32 0)
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  store i32 %255, i32* %259, align 4
  br label %260

260:                                              ; preds = %252, %249, %242, %238
  br label %261

261:                                              ; preds = %283, %260
  %262 = load i64*, i64** %10, align 8
  %263 = icmp ne i64* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i64, i64* %11, align 8
  %266 = load i64*, i64** %10, align 8
  store i64 %265, i64* %266, align 8
  br label %267

267:                                              ; preds = %264, %261
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  ret %struct.TYPE_13__* %268

269:                                              ; preds = %106, %64, %32
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %271 = icmp ne %struct.TYPE_13__* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @vc_uri_release(i32 %275)
  br label %277

277:                                              ; preds = %272, %269
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %279 = icmp ne %struct.TYPE_13__* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %282 = call i32 @free(%struct.TYPE_13__* %281)
  br label %283

283:                                              ; preds = %280, %277
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  br label %261
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vc_uri_create(...) #1

declare dso_local i32 @vc_uri_parse(i32, i8*) #1

declare dso_local i64 @vc_container_io_null_open(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @vc_container_io_net_open(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @vc_container_io_pktfile_open(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @vc_container_io_file_open(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @vc_uri_path_extension(i32) #1

declare dso_local i32 @strcasecmp(i64, i8*) #1

declare dso_local i32 @async_io_start(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @vc_uri_release(i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
