; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, i32, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@GX2_SCAN_TARGET_DRC = common dso_local global i32 0, align 4
@GX2_SCAN_TARGET_TV = common dso_local global i32 0, align 4
@GX2_DISABLE = common dso_local global i32 0, align 4
@frame_shader = common dso_local global i32 0, align 4
@tex_shader = common dso_local global i32 0, align 4
@sprite_shader = common dso_local global i32 0, align 4
@ribbon_simple_shader = common dso_local global i32 0, align 4
@ribbon_shader = common dso_local global i32 0, align 4
@bokeh_shader = common dso_local global i32 0, align 4
@snow_shader = common dso_local global i32 0, align 4
@snow_simple_shader = common dso_local global i32 0, align 4
@snowflake_shader = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wiiu_gfx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_gfx_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %5, %struct.TYPE_24__** %3, align 8
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %7 = icmp ne %struct.TYPE_24__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %125

9:                                                ; preds = %1
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 7
  %12 = call i32 @GX2ClearColor(%struct.TYPE_15__* %11, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 7
  %15 = load i32, i32* @GX2_SCAN_TARGET_DRC, align 4
  %16 = call i32 @GX2CopyColorBufferToScanBuffer(%struct.TYPE_15__* %14, i32 %15)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 7
  %19 = load i32, i32* @GX2_SCAN_TARGET_TV, align 4
  %20 = call i32 @GX2CopyColorBufferToScanBuffer(%struct.TYPE_15__* %18, i32 %19)
  %21 = call i32 (...) @GX2SwapScanBuffers()
  %22 = call i32 (...) @GX2Flush()
  %23 = call i32 (...) @GX2DrawDone()
  %24 = call i32 (...) @GX2WaitForVsync()
  %25 = call i32 (...) @GX2Shutdown()
  %26 = load i32, i32* @GX2_DISABLE, align 4
  %27 = call i32 @GX2SetTVEnable(i32 %26)
  %28 = load i32, i32* @GX2_DISABLE, align 4
  %29 = call i32 @GX2SetDRCEnable(i32 %28)
  %30 = call i32 @GX2DestroyShader(i32* @frame_shader)
  %31 = call i32 @GX2DestroyShader(i32* @tex_shader)
  %32 = call i32 @GX2DestroyShader(i32* @sprite_shader)
  %33 = call i32 @GX2DestroyShader(i32* @ribbon_simple_shader)
  %34 = call i32 @GX2DestroyShader(i32* @ribbon_shader)
  %35 = call i32 @GX2DestroyShader(i32* @bokeh_shader)
  %36 = call i32 @GX2DestroyShader(i32* @snow_shader)
  %37 = call i32 @GX2DestroyShader(i32* @snow_simple_shader)
  %38 = call i32 @GX2DestroyShader(i32* @snowflake_shader)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %40 = call i32 @wiiu_free_shader_preset(%struct.TYPE_24__* %39)
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MEM2_free(i32 %43)
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MEM2_free(i32 %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 14
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MEM2_free(i32 %53)
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 12
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MEM2_free(i32 %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MEM2_free(i32 %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @MEM2_free(i32 %69)
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 11
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MEM2_free(i32 %74)
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MEM2_free(i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MEM2_free(i32 %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MEM2_free(i32 %87)
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MEM1_free(i32 %93)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MEM1_free(i32 %97)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MEM1_free(i32 %101)
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @MEM1_free(i32 %105)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MEM1_free(i32 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MEM1_free(i32 %113)
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MEMBucket_free(i32 %117)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MEMBucket_free(i32 %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %124 = call i32 @free(%struct.TYPE_24__* %123)
  br label %125

125:                                              ; preds = %9, %8
  ret void
}

declare dso_local i32 @GX2ClearColor(%struct.TYPE_15__*, float, float, float, float) #1

declare dso_local i32 @GX2CopyColorBufferToScanBuffer(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @GX2SwapScanBuffers(...) #1

declare dso_local i32 @GX2Flush(...) #1

declare dso_local i32 @GX2DrawDone(...) #1

declare dso_local i32 @GX2WaitForVsync(...) #1

declare dso_local i32 @GX2Shutdown(...) #1

declare dso_local i32 @GX2SetTVEnable(i32) #1

declare dso_local i32 @GX2SetDRCEnable(i32) #1

declare dso_local i32 @GX2DestroyShader(i32*) #1

declare dso_local i32 @wiiu_free_shader_preset(%struct.TYPE_24__*) #1

declare dso_local i32 @MEM2_free(i32) #1

declare dso_local i32 @MEM1_free(i32) #1

declare dso_local i32 @MEMBucket_free(i32) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
