; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }

@DM_320x240 = common dso_local global i32 0, align 4
@PM_RGB565 = common dso_local global i32 0, align 4
@pvr_params = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"VIDDCInit() - error initializing PVR\0A\00", align 1
@PVR_LIST_OP_POLY = common dso_local global i32 0, align 4
@vbuf_opaque = common dso_local global i32 0, align 4
@PVR_LIST_TR_POLY = common dso_local global i32 0, align 4
@vbuf_translucent = common dso_local global i32 0, align 4
@PVR_LIST_PT_POLY = common dso_local global i32 0, align 4
@vbuf_punchthru = common dso_local global i32 0, align 4
@tex_space = common dso_local global i8* null, align 8
@vdp2_tex = common dso_local global i8* null, align 8
@cur_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"PVR Memory Available: %lu\0A\00", align 1
@PVR_CULLING_NONE = common dso_local global i8* null, align 8
@op_poly_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@tr_poly_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@PVR_TXRFMT_ARGB1555 = common dso_local global i32 0, align 4
@PVR_TXRFMT_NONTWIDDLED = common dso_local global i32 0, align 4
@PVR_FILTER_NONE = common dso_local global i32 0, align 4
@tr_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@pt_sprite_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@priority_levels = common dso_local global float* null, align 8
@framecount = common dso_local global i64 0, align 8
@lastup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @VIDDCInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VIDDCInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = load i32, i32* @DM_320x240, align 4
  %7 = load i32, i32* @PM_RGB565, align 4
  %8 = call i32 @vid_set_mode(i32 %6, i32 %7)
  %9 = call i64 @pvr_init(i32* @pvr_params)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %84

14:                                               ; preds = %0
  %15 = load i32, i32* @PVR_LIST_OP_POLY, align 4
  %16 = load i32, i32* @vbuf_opaque, align 4
  %17 = call i32 @pvr_set_vertbuf(i32 %15, i32 %16, i32 262144)
  %18 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  %19 = load i32, i32* @vbuf_translucent, align 4
  %20 = call i32 @pvr_set_vertbuf(i32 %18, i32 %19, i32 262144)
  %21 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %22 = load i32, i32* @vbuf_punchthru, align 4
  %23 = call i32 @pvr_set_vertbuf(i32 %21, i32 %22, i32 262144)
  %24 = call i8* @pvr_mem_malloc(i32 2097152)
  store i8* %24, i8** @tex_space, align 8
  %25 = call i8* @pvr_mem_malloc(i32 1048576)
  store i8* %25, i8** @vdp2_tex, align 8
  %26 = load i8*, i8** @tex_space, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* @cur_addr, align 8
  %28 = call i32 (...) @pvr_mem_available()
  %29 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** @tex_space, align 8
  %31 = call i32 @sq_set(i8* %30, i32 255, i32 2097152)
  %32 = load i32, i32* @PVR_LIST_OP_POLY, align 4
  %33 = call i32 @pvr_sprite_cxt_col(%struct.TYPE_12__* %2, i32 %32)
  %34 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  %35 = call i32 @pvr_sprite_cxt_col(%struct.TYPE_12__* %3, i32 %34)
  %36 = load i8*, i8** @PVR_CULLING_NONE, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @PVR_CULLING_NONE, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = call i32 @pvr_sprite_compile(%struct.TYPE_13__* @op_poly_hdr, %struct.TYPE_12__* %2)
  %43 = call i32 @pvr_sprite_compile(%struct.TYPE_13__* @tr_poly_hdr, %struct.TYPE_12__* %3)
  %44 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  %45 = load i32, i32* @PVR_TXRFMT_ARGB1555, align 4
  %46 = load i32, i32* @PVR_TXRFMT_NONTWIDDLED, align 4
  %47 = or i32 %45, %46
  %48 = load i8*, i8** @tex_space, align 8
  %49 = load i32, i32* @PVR_FILTER_NONE, align 4
  %50 = call i32 @pvr_sprite_cxt_txr(%struct.TYPE_12__* %5, i32 %44, i32 %47, i32 1024, i32 1024, i8* %48, i32 %49)
  %51 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %52 = load i32, i32* @PVR_TXRFMT_ARGB1555, align 4
  %53 = load i32, i32* @PVR_TXRFMT_NONTWIDDLED, align 4
  %54 = or i32 %52, %53
  %55 = load i8*, i8** @tex_space, align 8
  %56 = load i32, i32* @PVR_FILTER_NONE, align 4
  %57 = call i32 @pvr_sprite_cxt_txr(%struct.TYPE_12__* %4, i32 %51, i32 %54, i32 1024, i32 1024, i8* %55, i32 %56)
  %58 = load i8*, i8** @PVR_CULLING_NONE, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @PVR_CULLING_NONE, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = call i32 @pvr_sprite_compile(%struct.TYPE_13__* @tr_sprite_hdr, %struct.TYPE_12__* %5)
  %65 = call i32 @pvr_sprite_compile(%struct.TYPE_13__* @pt_sprite_hdr, %struct.TYPE_12__* %4)
  %66 = call i32 @PVR_PACK_COLOR(float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr_sprite_hdr, i32 0, i32 0), align 4
  %67 = load float*, float** @priority_levels, align 8
  %68 = getelementptr inbounds float, float* %67, i64 0
  store float 0.000000e+00, float* %68, align 4
  %69 = load float*, float** @priority_levels, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  store float 1.000000e+00, float* %70, align 4
  %71 = load float*, float** @priority_levels, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  store float 2.000000e+00, float* %72, align 4
  %73 = load float*, float** @priority_levels, align 8
  %74 = getelementptr inbounds float, float* %73, i64 3
  store float 3.000000e+00, float* %74, align 4
  %75 = load float*, float** @priority_levels, align 8
  %76 = getelementptr inbounds float, float* %75, i64 4
  store float 4.000000e+00, float* %76, align 4
  %77 = load float*, float** @priority_levels, align 8
  %78 = getelementptr inbounds float, float* %77, i64 5
  store float 5.000000e+00, float* %78, align 4
  %79 = load float*, float** @priority_levels, align 8
  %80 = getelementptr inbounds float, float* %79, i64 6
  store float 6.000000e+00, float* %80, align 4
  %81 = load float*, float** @priority_levels, align 8
  %82 = getelementptr inbounds float, float* %81, i64 7
  store float 7.000000e+00, float* %82, align 4
  store i64 0, i64* @framecount, align 8
  %83 = call i32 @time(i32* null)
  store i32 %83, i32* @lastup, align 4
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %14, %11
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @vid_set_mode(i32, i32) #1

declare dso_local i64 @pvr_init(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @pvr_set_vertbuf(i32, i32, i32) #1

declare dso_local i8* @pvr_mem_malloc(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @pvr_mem_available(...) #1

declare dso_local i32 @sq_set(i8*, i32, i32) #1

declare dso_local i32 @pvr_sprite_cxt_col(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pvr_sprite_compile(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @pvr_sprite_cxt_txr(%struct.TYPE_12__*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @PVR_PACK_COLOR(float, float, float, float) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
