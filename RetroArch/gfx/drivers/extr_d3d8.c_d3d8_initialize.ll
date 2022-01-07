; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_initialize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }

@g_pD3D8 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"[D3D8]: Recovered from dead state.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"[D3D8]: Failed to initialize render chain.\0A\00", align 1
@FONT_DRIVER_RENDER_D3D8_API = common dso_local global i32 0, align 4
@D3DUSAGE_WRITEONLY = common dso_local global i32 0, align 4
@D3DFVF_XYZ = common dso_local global i32 0, align 4
@D3DFVF_TEX1 = common dso_local global i32 0, align 4
@D3DFVF_DIFFUSE = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@D3DRS_CULLMODE = common dso_local global i32 0, align 4
@D3DCULL_NONE = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_DEINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @d3d8_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_initialize(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 1, i32* %8, align 4
  %11 = call i32* (...) @config_get_ptr()
  store i32* %11, i32** %9, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = icmp ne %struct.TYPE_17__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

15:                                               ; preds = %2
  %16 = load i32*, i32** @g_pD3D8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @d3d8_init_base(%struct.TYPE_17__* %19, %struct.TYPE_16__* %20)
  store i32 %21, i32* %8, align 4
  br label %51

22:                                               ; preds = %15
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = call i32 @d3d8_make_d3dpp(%struct.TYPE_17__* %28, %struct.TYPE_16__* %29, i32* %10)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @d3d8_reset(i32 %33, i32* %10)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = call i32 @d3d8_deinitialize(%struct.TYPE_17__* %37)
  %39 = load i32*, i32** @g_pD3D8, align 8
  %40 = call i32 @d3d8_device_free(i32* null, i32* %39)
  store i32* null, i32** @g_pD3D8, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = call i32 @d3d8_init_base(%struct.TYPE_17__* %41, %struct.TYPE_16__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %36
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %22
  br label %51

51:                                               ; preds = %50, %18
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %123

56:                                               ; preds = %51
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = call i32 @d3d8_init_chain(%struct.TYPE_17__* %57, %struct.TYPE_16__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

63:                                               ; preds = %56
  %64 = call i32 @video_driver_get_size(i32* %6, i32* %7)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @d3d8_set_viewport(%struct.TYPE_17__* %65, i32 %66, i32 %67, i32 0, i32 1)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FONT_DRIVER_RENDER_D3D8_API, align 4
  %74 = call i32 @font_driver_init_osd(%struct.TYPE_17__* %69, i32 0, i32 %72, i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 1024, i32* %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @D3DUSAGE_WRITEONLY, align 4
  %92 = load i32, i32* @D3DFVF_XYZ, align 4
  %93 = load i32, i32* @D3DFVF_TEX1, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @D3DFVF_DIFFUSE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %98 = call i32 @d3d8_vertex_buffer_new(i32 %83, i32 %90, i32 %91, i32 %96, i32 %97, i32* null)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %123

108:                                              ; preds = %63
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = call i32 @d3d_matrix_ortho_off_center_lh(i32* %110, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = call i32 @d3d_matrix_transpose(i32* %113, i32* %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @D3DRS_CULLMODE, align 4
  %121 = load i32, i32* @D3DCULL_NONE, align 4
  %122 = call i32 @d3d8_set_render_state(i32 %119, i32 %120, i32 %121)
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %108, %107, %61, %54, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32* @config_get_ptr(...) #1

declare dso_local i32 @d3d8_init_base(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @d3d8_make_d3dpp(%struct.TYPE_17__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @d3d8_reset(i32, i32*) #1

declare dso_local i32 @d3d8_deinitialize(%struct.TYPE_17__*) #1

declare dso_local i32 @d3d8_device_free(i32*, i32*) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @d3d8_init_chain(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @d3d8_set_viewport(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @font_driver_init_osd(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @d3d8_vertex_buffer_new(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @d3d_matrix_ortho_off_center_lh(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d_matrix_transpose(i32*, i32*) #1

declare dso_local i32 @d3d8_set_render_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
