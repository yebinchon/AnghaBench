; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_vc_container_io_cache.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_vc_container_io_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 (%struct.TYPE_7__*, i64, i64)*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_7__*, i64 }

@MAX_NUM_CACHED_AREAS = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_CAPS_CANT_SEEK = common dso_local global i32 0, align 4
@MEM_CACHE_AREA_READ_MAX_SIZE = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_CAPS_SEEK_SLOW = common dso_local global i32 0, align 4
@MEM_CACHE_READ_MAX_SIZE = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_io_cache(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_NUM_CACHED_AREAS, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %263

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %26
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %7, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 10
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 7
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 8
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 9
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VC_CONTAINER_IO_CAPS_CANT_SEEK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %20
  %59 = load i64, i64* @MEM_CACHE_AREA_READ_MAX_SIZE, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %82

62:                                               ; preds = %20
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @VC_CONTAINER_IO_CAPS_SEEK_SLOW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @MEM_CACHE_AREA_READ_MAX_SIZE, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* @MEM_CACHE_AREA_READ_MAX_SIZE, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %81

77:                                               ; preds = %69, %62
  %78 = load i64, i64* @MEM_CACHE_READ_MAX_SIZE, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %82
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %82
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @malloc(i64 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 5
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %113, %116
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 6
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %99
  store i64 0, i64* %3, align 8
  br label %263

125:                                              ; preds = %99
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %8, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = icmp ne %struct.TYPE_9__* %135, null
  br i1 %136, label %137, label %190

137:                                              ; preds = %125
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %140, %143
  br i1 %144, label %145, label %190

145:                                              ; preds = %137
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ugt i64 %157, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %145
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %162, %145
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @memcpy(i64 %171, i64 %178, i64 %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %185
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %168, %137, %125
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ugt i64 %193, %196
  br i1 %197, label %198, label %240

198:                                              ; preds = %190
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 9
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i64 (%struct.TYPE_7__*, i64, i64)*, i64 (%struct.TYPE_7__*, i64, i64)** %202, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 9
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = sub i64 %216, %219
  %221 = call i64 %203(%struct.TYPE_7__* %206, i64 %213, i64 %220)
  store i64 %221, i64* %10, align 8
  %222 = load i64, i64* %10, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %229, %232
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 9
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store i64 %233, i64* %239, align 8
  br label %240

240:                                              ; preds = %198, %190
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = call i64 @vc_container_io_seek(%struct.TYPE_7__* %241, i64 %244)
  store i64 %245, i64* %9, align 8
  %246 = load i64, i64* %9, align 8
  %247 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %240
  store i64 0, i64* %3, align 8
  br label %263

250:                                              ; preds = %240
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @VC_CONTAINER_IO_CAPS_CANT_SEEK, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %250
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %3, align 8
  br label %263

261:                                              ; preds = %250
  %262 = load i64, i64* %5, align 8
  store i64 %262, i64* %3, align 8
  br label %263

263:                                              ; preds = %261, %257, %249, %124, %19
  %264 = load i64, i64* %3, align 8
  ret i64 %264
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i64 @vc_container_io_seek(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
