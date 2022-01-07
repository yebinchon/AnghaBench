; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_init_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_36__, i32, %struct.TYPE_31__, %struct.TYPE_38__* }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_38__ = type { i32*, i32* }
%struct.TYPE_37__ = type { %struct.TYPE_34__, %struct.TYPE_33__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_35__, i32 }
%struct.TYPE_35__ = type { i32, i32 }

@d3d9_get_flags = common dso_local global i32 0, align 4
@d3d9_fake_context = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@g_pD3D9 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"[D3D9]: Using GPU: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"[D3D9]: GPU API Version: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[D3D9]: Init complete.\0A\00", align 1
@WndProcD3D = common dso_local global i32 0, align 4
@g_win32_resize_height = common dso_local global i32 0, align 4
@g_win32_resize_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_39__*, %struct.TYPE_36__*, i32**, i8**)* @d3d9_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_init_internal(%struct.TYPE_39__* %0, %struct.TYPE_36__* %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
  %17 = alloca %struct.TYPE_30__, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %6, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = call %struct.TYPE_37__* (...) @config_get_ptr()
  store %struct.TYPE_37__* %18, %struct.TYPE_37__** %12, align 8
  %19 = call i64 @calloc(i32 1, i32 16)
  %20 = inttoptr i64 %19 to %struct.TYPE_38__*
  store %struct.TYPE_38__* %20, %struct.TYPE_38__** %13, align 8
  %21 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %22 = icmp ne %struct.TYPE_38__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %163

24:                                               ; preds = %4
  %25 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %26 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 3
  store %struct.TYPE_38__* %25, %struct.TYPE_38__** %27, align 8
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_38__*, %struct.TYPE_38__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_38__*, %struct.TYPE_38__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 1, i32* %71, align 4
  %72 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_38__*, %struct.TYPE_38__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 -1, i32* %77, align 4
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %79 = call i32 @d3d9_get_video_size(%struct.TYPE_39__* %78, i32* %10, i32* %11)
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %24
  %85 = load i32, i32* %10, align 4
  br label %90

86:                                               ; preds = %24
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi i32 [ %85, %84 ], [ %89, %86 ]
  store i32 %91, i32* %14, align 4
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  br label %102

98:                                               ; preds = %90
  %99 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi i32 [ %97, %96 ], [ %101, %98 ]
  store i32 %103, i32* %15, align 4
  %104 = call i32 @video_driver_set_size(i32* %14, i32* %15)
  %105 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %108 = bitcast %struct.TYPE_36__* %106 to i8*
  %109 = bitcast %struct.TYPE_36__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 4 %109, i64 12, i1 false)
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %111 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %111, i32 0, i32 0
  %113 = call i32 @d3d9_initialize(%struct.TYPE_39__* %110, %struct.TYPE_36__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %163

116:                                              ; preds = %102
  %117 = load i32, i32* @d3d9_get_flags, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @d3d9_fake_context, i32 0, i32 0), align 4
  %118 = call i32 @video_context_driver_set(%struct.TYPE_32__* @d3d9_fake_context)
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32**, i32*** %8, align 8
  %128 = load i8**, i8*** %9, align 8
  %129 = call i32 @d3d_input_driver(i32 %122, i32 %126, i32** %127, i8** %128)
  %130 = bitcast %struct.TYPE_30__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %130, i8 0, i64 16, i1 false)
  %131 = load i32, i32* @g_pD3D9, align 4
  %132 = call i32 @IDirect3D9_GetAdapterIdentifier(i32 %131, i32 0, i32 0, %struct.TYPE_30__* %17)
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %133, align 16
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @HIWORD(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @LOWORD(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @HIWORD(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @LOWORD(i32 %149)
  %151 = call i32 @snprintf(i8* %134, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %142, i32 %146, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %156 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %155)
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @video_driver_set_gpu_device_string(i32 %158)
  %160 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %161 = call i32 @video_driver_set_gpu_api_version_string(i8* %160)
  %162 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %163

163:                                              ; preds = %116, %115, %23
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local %struct.TYPE_37__* @config_get_ptr(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @d3d9_get_video_size(%struct.TYPE_39__*, i32*, i32*) #1

declare dso_local i32 @video_driver_set_size(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @d3d9_initialize(%struct.TYPE_39__*, %struct.TYPE_36__*) #1

declare dso_local i32 @video_context_driver_set(%struct.TYPE_32__*) #1

declare dso_local i32 @d3d_input_driver(i32, i32, i32**, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @IDirect3D9_GetAdapterIdentifier(i32, i32, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @video_driver_set_gpu_device_string(i32) #1

declare dso_local i32 @video_driver_set_gpu_api_version_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
