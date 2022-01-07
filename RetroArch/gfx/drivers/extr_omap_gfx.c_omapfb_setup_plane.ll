; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_setup_plane.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_setup_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.omapfb_plane_info, %struct.TYPE_6__ }
%struct.omapfb_plane_info = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"omap_video: scaling %dx%d to %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"omap_video: fb dimensions too large for allocated buffer\0A\00", align 1
@OMAPFB_QUERY_PLANE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"[video_omap]: setup plane (query) failed\0A\00", align 1
@OMAPFB_SETUP_PLANE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"[video_omap]: setup plane (param = %d %d %d %d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @omapfb_setup_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_setup_plane(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omapfb_plane_info, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.omapfb_plane_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call float @omapfb_scaling(%struct.TYPE_8__* %15, i32 %16, i32 %17)
  store float %18, float* %11, align 4
  %19 = load float, float* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sitofp i32 %20 to float
  %22 = fmul float %19, %21
  %23 = fptosi float %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load float, float* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sitofp i32 %25 to float
  %27 = fmul float %24, %26
  %28 = fptosi float %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 2
  %38 = load i32, i32* %12, align 4
  %39 = sdiv i32 %38, 2
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 2
  %45 = load i32, i32* %13, align 4
  %46 = sdiv i32 %45, 2
  %47 = sub nsw i32 %44, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %58, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %3
  %67 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %106

68:                                               ; preds = %3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OMAPFB_QUERY_PLANE, align 4
  %73 = call i64 @ioctl(i32 %71, i32 %72, %struct.omapfb_plane_info* %10)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %106

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %10, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %10, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %10, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %10, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %10, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @OMAPFB_SETUP_PLANE, align 4
  %91 = call i64 @ioctl(i32 %89, i32 %90, %struct.omapfb_plane_info* %10)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %77
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 -1, i32* %4, align 4
  br label %106

99:                                               ; preds = %77
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = bitcast %struct.omapfb_plane_info* %103 to i8*
  %105 = bitcast %struct.omapfb_plane_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 32, i1 false)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %99, %93, %75, %66
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local float @omapfb_scaling(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i64 @ioctl(i32, i32, %struct.omapfb_plane_info*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
