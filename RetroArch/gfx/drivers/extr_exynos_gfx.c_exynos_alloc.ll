; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.exynos_data = type { i32, i32, %struct.exynos_device*, %struct.exynos_page*, i32, i32, i64, i32, %struct.exynos_bo** }
%struct.exynos_device = type { i32 }
%struct.exynos_page = type { i32, i32, i32, %struct.exynos_bo*, %struct.exynos_data* }
%struct.exynos_bo = type { i64 }

@g_drm_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"[video_exynos]: failed to create device from fd\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[video_exynos]: failed to allocate pages\0A\00", align 1
@EXYNOS_BUFFER_COUNT = common dso_local global i32 0, align 4
@defaults = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"[video_exynos]: failed to create buffer object\0A\00", align 1
@DRM_FORMAT_RGB565 = common dso_local global i64 0, align 8
@DRM_FORMAT_XRGB8888 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"[video_exynos]: failed to add bo %u to fb\0A\00", align 1
@g_crtc_id = common dso_local global i32 0, align 4
@g_drm_connector_id = common dso_local global i32 0, align 4
@g_drm_mode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"[video_exynos]: initial CRTC setup failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*)* @exynos_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_alloc(%struct.exynos_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_data*, align 8
  %4 = alloca %struct.exynos_bo*, align 8
  %5 = alloca %struct.exynos_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i64], align 16
  %10 = alloca [4 x i64], align 16
  %11 = alloca [4 x i64], align 16
  %12 = alloca %struct.exynos_device*, align 8
  %13 = alloca i32, align 4
  store %struct.exynos_data* %0, %struct.exynos_data** %3, align 8
  store i32 0, i32* %8, align 4
  %14 = bitcast [4 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = bitcast [4 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false)
  %16 = bitcast [4 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 32, i1 false)
  %17 = load i32, i32* @g_drm_fd, align 4
  %18 = call %struct.exynos_device* @exynos_device_create(i32 %17)
  store %struct.exynos_device* %18, %struct.exynos_device** %12, align 8
  %19 = load %struct.exynos_device*, %struct.exynos_device** %12, align 8
  %20 = icmp ne %struct.exynos_device* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %234

23:                                               ; preds = %1
  %24 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @calloc(i32 %26, i32 32)
  %28 = inttoptr i64 %27 to %struct.exynos_page*
  store %struct.exynos_page* %28, %struct.exynos_page** %5, align 8
  %29 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %30 = icmp ne %struct.exynos_page* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %231

33:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %73, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EXYNOS_BUFFER_COUNT, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @defaults, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @defaults, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul i32 %44, %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @defaults, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %51, %57
  store i32 %58, i32* %13, align 4
  %59 = load %struct.exynos_device*, %struct.exynos_device** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call %struct.exynos_bo* @exynos_create_mapped_buffer(%struct.exynos_device* %59, i32 %60)
  store %struct.exynos_bo* %61, %struct.exynos_bo** %4, align 8
  %62 = load %struct.exynos_bo*, %struct.exynos_bo** %4, align 8
  %63 = icmp ne %struct.exynos_bo* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %38
  br label %76

65:                                               ; preds = %38
  %66 = load %struct.exynos_bo*, %struct.exynos_bo** %4, align 8
  %67 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %68 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %67, i32 0, i32 8
  %69 = load %struct.exynos_bo**, %struct.exynos_bo*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.exynos_bo*, %struct.exynos_bo** %69, i64 %71
  store %struct.exynos_bo* %66, %struct.exynos_bo** %72, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %34

76:                                               ; preds = %64, %34
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @EXYNOS_BUFFER_COUNT, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %85, %80
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %6, align 4
  %84 = icmp ugt i32 %82, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %87 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %86, i32 0, i32 8
  %88 = load %struct.exynos_bo**, %struct.exynos_bo*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.exynos_bo*, %struct.exynos_bo** %88, i64 %90
  %92 = load %struct.exynos_bo*, %struct.exynos_bo** %91, align 8
  %93 = call i32 @exynos_bo_destroy(%struct.exynos_bo* %92)
  %94 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %95 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %94, i32 0, i32 8
  %96 = load %struct.exynos_bo**, %struct.exynos_bo*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.exynos_bo*, %struct.exynos_bo** %96, i64 %98
  store %struct.exynos_bo* null, %struct.exynos_bo** %99, align 8
  br label %81

100:                                              ; preds = %81
  br label %225

101:                                              ; preds = %76
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %141, %101
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %105 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %102
  %109 = load %struct.exynos_device*, %struct.exynos_device** %12, align 8
  %110 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %111 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.exynos_bo* @exynos_bo_create(%struct.exynos_device* %109, i32 %112, i32 0)
  store %struct.exynos_bo* %113, %struct.exynos_bo** %4, align 8
  %114 = load %struct.exynos_bo*, %struct.exynos_bo** %4, align 8
  %115 = icmp ne %struct.exynos_bo* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %225

118:                                              ; preds = %108
  %119 = load %struct.exynos_bo*, %struct.exynos_bo** %4, align 8
  %120 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %120, i64 %122
  %124 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %123, i32 0, i32 3
  store %struct.exynos_bo* %119, %struct.exynos_bo** %124, align 8
  %125 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %126 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %126, i64 %128
  %130 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %129, i32 0, i32 4
  store %struct.exynos_data* %125, %struct.exynos_data** %130, align 8
  %131 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %131, i64 %133
  %135 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %136, i64 %138
  %140 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %118
  %142 = load i32, i32* %6, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %102

144:                                              ; preds = %102
  %145 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %146 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i64, i64* @DRM_FORMAT_RGB565, align 8
  br label %153

151:                                              ; preds = %144
  %152 = load i64, i64* @DRM_FORMAT_XRGB8888, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i64 [ %150, %149 ], [ %152, %151 ]
  store i64 %154, i64* %7, align 8
  %155 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %156 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %157, i64* %158, align 16
  %159 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 0, i64* %159, align 16
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %198, %153
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %163 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ult i32 %161, %164
  br i1 %165, label %166, label %201

166:                                              ; preds = %160
  %167 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %167, i64 %169
  %171 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %170, i32 0, i32 3
  %172 = load %struct.exynos_bo*, %struct.exynos_bo** %171, align 8
  %173 = getelementptr inbounds %struct.exynos_bo, %struct.exynos_bo* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  store i64 %174, i64* %175, align 16
  %176 = load i32, i32* @g_drm_fd, align 4
  %177 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %178 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %181 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i64, i64* %7, align 8
  %184 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %185 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %186 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %187 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %188 = load i32, i32* %6, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %187, i64 %189
  %191 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %190, i32 0, i32 2
  %192 = call i64 @drmModeAddFB2(i32 %176, i32 %179, i32 %182, i64 %183, i64* %184, i64* %185, i64* %186, i32* %191, i32 0)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %166
  %195 = load i32, i32* %6, align 4
  %196 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %195)
  br label %225

197:                                              ; preds = %166
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %160

201:                                              ; preds = %160
  %202 = load i32, i32* @g_drm_fd, align 4
  %203 = load i32, i32* @g_crtc_id, align 4
  %204 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %205 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %206 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub i32 %207, 1
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %204, i64 %209
  %211 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @g_drm_mode, align 4
  %214 = call i64 @drmModeSetCrtc(i32 %202, i32 %203, i32 %212, i32 0, i32 0, i32* @g_drm_connector_id, i32 1, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %201
  %217 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %225

218:                                              ; preds = %201
  %219 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %220 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %221 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %220, i32 0, i32 3
  store %struct.exynos_page* %219, %struct.exynos_page** %221, align 8
  %222 = load %struct.exynos_device*, %struct.exynos_device** %12, align 8
  %223 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %224 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %223, i32 0, i32 2
  store %struct.exynos_device* %222, %struct.exynos_device** %224, align 8
  store i32 0, i32* %2, align 4
  br label %234

225:                                              ; preds = %216, %194, %116, %100
  %226 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %227 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %228 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @exynos_clean_up_pages(%struct.exynos_page* %226, i32 %229)
  br label %231

231:                                              ; preds = %225, %31
  %232 = load %struct.exynos_device*, %struct.exynos_device** %12, align 8
  %233 = call i32 @exynos_device_destroy(%struct.exynos_device* %232)
  store i32 -1, i32* %2, align 4
  br label %234

234:                                              ; preds = %231, %218, %21
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.exynos_device* @exynos_device_create(i32) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local %struct.exynos_bo* @exynos_create_mapped_buffer(%struct.exynos_device*, i32) #2

declare dso_local i32 @exynos_bo_destroy(%struct.exynos_bo*) #2

declare dso_local %struct.exynos_bo* @exynos_bo_create(%struct.exynos_device*, i32, i32) #2

declare dso_local i64 @drmModeAddFB2(i32, i32, i32, i64, i64*, i64*, i64*, i32*, i32) #2

declare dso_local i64 @drmModeSetCrtc(i32, i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @exynos_clean_up_pages(%struct.exynos_page*, i32) #2

declare dso_local i32 @exynos_device_destroy(%struct.exynos_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
