; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_add_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_add_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LinkInfo = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.shader_pass = type { i32, %struct.unsigned_vector_list*, i64, i64, %struct.LinkInfo }
%struct.unsigned_vector_list = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.LinkInfo*)* @hlsl_d3d9_renderchain_add_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hlsl_d3d9_renderchain_add_pass(i8* %0, %struct.LinkInfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.LinkInfo*, align 8
  %6 = alloca %struct.shader_pass, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.LinkInfo* %1, %struct.LinkInfo** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %7, align 8
  %10 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %6, i32 0, i32 4
  %11 = load %struct.LinkInfo*, %struct.LinkInfo** %5, align 8
  %12 = bitcast %struct.LinkInfo* %10 to i8*
  %13 = bitcast %struct.LinkInfo* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %6, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %6, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = call i64 (...) @unsigned_vector_list_new()
  %17 = inttoptr i64 %16 to %struct.unsigned_vector_list*
  %18 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %6, i32 0, i32 1
  store %struct.unsigned_vector_list* %17, %struct.unsigned_vector_list** %18, align 8
  %19 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %20 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.LinkInfo*, %struct.LinkInfo** %5, align 8
  %26 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @d3d9_hlsl_load_program_from_file(i32 %24, %struct.shader_pass* %6, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @hlsl_d3d9_renderchain_init_shader_fvf(%struct.TYPE_9__* %33, %struct.shader_pass* %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.LinkInfo*, %struct.LinkInfo** %5, align 8
  %41 = call i32 @d3d9_renderchain_add_pass(%struct.TYPE_9__* %39, %struct.shader_pass* %6, %struct.LinkInfo* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unsigned_vector_list_new(...) #2

declare dso_local i32 @d3d9_hlsl_load_program_from_file(i32, %struct.shader_pass*, i32) #2

declare dso_local i32 @hlsl_d3d9_renderchain_init_shader_fvf(%struct.TYPE_9__*, %struct.shader_pass*) #2

declare dso_local i32 @d3d9_renderchain_add_pass(%struct.TYPE_9__*, %struct.shader_pass*, %struct.LinkInfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
