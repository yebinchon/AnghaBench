; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.LinkInfo = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i32* }

@RETRO_PIXEL_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@RETRO_PIXEL_FORMAT_RGB565 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[D3D9 HLSL]: Failed to initialize shader subsystem.\0A\00", align 1
@stock_hlsl_program = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32*, %struct.LinkInfo*, i32)* @hlsl_d3d9_renderchain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hlsl_d3d9_renderchain_init(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, %struct.LinkInfo* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.LinkInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.LinkInfo* %4, %struct.LinkInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @RETRO_PIXEL_FORMAT_XRGB8888, align 4
  br label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @RETRO_PIXEL_FORMAT_RGB565, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %15, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %82

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = call i32 @hlsl_d3d9_renderchain_init_shader(%struct.TYPE_8__* %32, %struct.TYPE_7__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i32* %43, i32** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @RETRO_PIXEL_FORMAT_RGB565, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.LinkInfo*, %struct.LinkInfo** %12, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @hlsl_d3d9_renderchain_create_first_pass(i32 %58, %struct.TYPE_9__* %60, %struct.LinkInfo* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %82

66:                                               ; preds = %38
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* @stock_hlsl_program, align 4
  %74 = call i32 @d3d9_hlsl_load_program(i32 %70, i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %82

77:                                               ; preds = %66
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @d3d9_hlsl_bind_program(i32* %79, i32 %80)
  store i32 1, i32* %7, align 4
  br label %82

82:                                               ; preds = %77, %76, %65, %36, %30
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @hlsl_d3d9_renderchain_init_shader(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @hlsl_d3d9_renderchain_create_first_pass(i32, %struct.TYPE_9__*, %struct.LinkInfo*, i32) #1

declare dso_local i32 @d3d9_hlsl_load_program(i32, i32*, i32) #1

declare dso_local i32 @d3d9_hlsl_bind_program(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
