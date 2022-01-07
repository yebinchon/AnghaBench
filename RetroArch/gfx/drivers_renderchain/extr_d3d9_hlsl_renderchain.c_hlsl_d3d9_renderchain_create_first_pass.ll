; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_create_first_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_create_first_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32**, i64*, i64*, i64*, i64 }
%struct.LinkInfo = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.shader_pass = type { %struct.unsigned_vector_list*, i64, i64, %struct.LinkInfo }
%struct.unsigned_vector_list = type { i32 }

@RETRO_PIXEL_FORMAT_RGB565 = common dso_local global i32 0, align 4
@TEXTURES = common dso_local global i32 0, align 4
@D3DUSAGE_WRITEONLY = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@D3DPOOL_MANAGED = common dso_local global i32 0, align 4
@D3DTADDRESS_BORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*, %struct.LinkInfo*, i32)* @hlsl_d3d9_renderchain_create_first_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hlsl_d3d9_renderchain_create_first_pass(i32 %0, %struct.TYPE_10__* %1, %struct.LinkInfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.LinkInfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.shader_pass, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.LinkInfo* %2, %struct.LinkInfo** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @RETRO_PIXEL_FORMAT_RGB565, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 (...) @d3d9_get_rgb565_format()
  br label %20

18:                                               ; preds = %4
  %19 = call i32 (...) @d3d9_get_xrgb8888_format()
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %12, align 4
  %22 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %11, i32 0, i32 3
  %23 = load %struct.LinkInfo*, %struct.LinkInfo** %8, align 8
  %24 = bitcast %struct.LinkInfo* %22 to i8*
  %25 = bitcast %struct.LinkInfo* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %11, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %11, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = call i64 (...) @unsigned_vector_list_new()
  %29 = inttoptr i64 %28 to %struct.unsigned_vector_list*
  %30 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %11, i32 0, i32 0
  store %struct.unsigned_vector_list* %29, %struct.unsigned_vector_list** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %146, %20
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @TEXTURES, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %149

38:                                               ; preds = %34
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @D3DUSAGE_WRITEONLY, align 4
  %57 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %58 = call i64 @d3d9_vertex_buffer_new(i32 %55, i32 16, i32 %56, i32 0, i32 %57, i32* null)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %58, i64* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %169

76:                                               ; preds = %38
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.LinkInfo*, %struct.LinkInfo** %8, align 8
  %81 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.LinkInfo*, %struct.LinkInfo** %8, align 8
  %84 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @D3DPOOL_MANAGED, align 4
  %88 = call i64 @d3d9_texture_new(i32 %79, i32* null, i32 %82, i32 %85, i32 1, i32 0, i32 %86, i32 %87, i32 0, i32 0, i32 0, i32* null, i32* null, i32 0)
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  store i32* %89, i32** %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %76
  store i32 0, i32* %5, align 4
  br label %169

107:                                              ; preds = %76
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @d3d9_set_texture(i32 %110, i32 0, i32* %118)
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.LinkInfo*, %struct.LinkInfo** %8, align 8
  %122 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @d3d_translate_filter(i32 %125)
  %127 = call i32 @d3d9_set_sampler_minfilter(i32 %120, i32 0, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.LinkInfo*, %struct.LinkInfo** %8, align 8
  %130 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @d3d_translate_filter(i32 %133)
  %135 = call i32 @d3d9_set_sampler_magfilter(i32 %128, i32 0, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @D3DTADDRESS_BORDER, align 4
  %138 = call i32 @d3d9_set_sampler_address_u(i32 %136, i32 0, i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @D3DTADDRESS_BORDER, align 4
  %141 = call i32 @d3d9_set_sampler_address_v(i32 %139, i32 0, i32 %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @d3d9_set_texture(i32 %144, i32 0, i32* null)
  br label %146

146:                                              ; preds = %107
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %34

149:                                              ; preds = %34
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.LinkInfo*, %struct.LinkInfo** %8, align 8
  %154 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @d3d9_hlsl_load_program_from_file(i32 %152, %struct.shader_pass* %11, i32 %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = call i32 @hlsl_d3d9_renderchain_init_shader_fvf(%struct.TYPE_10__* %160, %struct.shader_pass* %11)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %149
  store i32 0, i32* %5, align 4
  br label %169

164:                                              ; preds = %149
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @shader_pass_vector_list_append(i32 %167, %struct.shader_pass* byval(%struct.shader_pass) align 8 %11)
  store i32 1, i32* %5, align 4
  br label %169

169:                                              ; preds = %164, %163, %106, %75
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @d3d9_get_rgb565_format(...) #1

declare dso_local i32 @d3d9_get_xrgb8888_format(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unsigned_vector_list_new(...) #1

declare dso_local i64 @d3d9_vertex_buffer_new(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @d3d9_texture_new(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @d3d9_set_texture(i32, i32, i32*) #1

declare dso_local i32 @d3d9_set_sampler_minfilter(i32, i32, i32) #1

declare dso_local i32 @d3d_translate_filter(i32) #1

declare dso_local i32 @d3d9_set_sampler_magfilter(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_address_u(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_address_v(i32, i32, i32) #1

declare dso_local i32 @d3d9_hlsl_load_program_from_file(i32, %struct.shader_pass*, i32) #1

declare dso_local i32 @hlsl_d3d9_renderchain_init_shader_fvf(%struct.TYPE_10__*, %struct.shader_pass*) #1

declare dso_local i32 @shader_pass_vector_list_append(i32, %struct.shader_pass* byval(%struct.shader_pass) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
