; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d12.c_d3d12_set_menu_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d12.c_d3d12_set_menu_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32**, %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { float, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { float* }

@DXGI_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@DXGI_FORMAT_EX_A4R4G4B4_UNORM = common dso_local global i64 0, align 8
@RARCH_FILTER_LINEAR = common dso_local global i64 0, align 8
@RARCH_WRAP_DEFAULT = common dso_local global i64 0, align 8
@RARCH_FILTER_NEAREST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @d3d12_set_menu_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d12_set_menu_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 4
  %18 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %13, align 8
  %21 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i64 4, i64 4
  %28 = mul i64 %23, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @DXGI_FORMAT_B8G8R8A8_UNORM, align 4
  br label %37

34:                                               ; preds = %6
  %35 = load i64, i64* @DXGI_FORMAT_EX_A4R4G4B4_UNORM, align 8
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %33, %32 ], [ %36, %34 ]
  store i32 %38, i32* %16, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %47, %37
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 %69, i32* %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  store i32* %77, i32** %81, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = call i32 @d3d12_init_texture(i32 %84, %struct.TYPE_21__* %87)
  br label %89

89:                                               ; preds = %56, %47
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = call i32 @d3d12_update_texture(i32 %90, i32 %91, i32 %92, i32 %93, i8* %94, %struct.TYPE_21__* %97)
  %99 = load float, float* %12, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store float %99, float* %102, align 8
  %103 = bitcast %struct.TYPE_20__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %103, i8 0, i64 8, i1 false)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %18, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = bitcast %struct.TYPE_19__** %18 to i8**
  %109 = call i32 @D3D12Map(i32 %107, i32 0, %struct.TYPE_20__* %17, i8** %108)
  %110 = load float, float* %12, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 3
  store float %110, float* %115, align 4
  %116 = load float, float* %12, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load float*, float** %119, align 8
  %121 = getelementptr inbounds float, float* %120, i64 3
  store float %116, float* %121, align 4
  %122 = load float, float* %12, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i64 2
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 3
  store float %122, float* %127, align 4
  %128 = load float, float* %12, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i64 3
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load float*, float** %131, align 8
  %133 = getelementptr inbounds float, float* %132, i64 3
  store float %128, float* %133, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @D3D12Unmap(i32 %137, i32 0, i32* null)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %89
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = load i64, i64* @RARCH_FILTER_LINEAR, align 8
  %149 = getelementptr inbounds i32*, i32** %147, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @RARCH_WRAP_DEFAULT, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  br label %164

154:                                              ; preds = %89
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32**, i32*** %156, align 8
  %158 = load i64, i64* @RARCH_FILTER_NEAREST, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @RARCH_WRAP_DEFAULT, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  br label %164

164:                                              ; preds = %154, %144
  %165 = phi i32 [ %153, %144 ], [ %163, %154 ]
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  ret void
}

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local i32 @d3d12_init_texture(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @d3d12_update_texture(i32, i32, i32, i32, i8*, %struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @D3D12Map(i32, i32, %struct.TYPE_20__*, i8**) #1

declare dso_local i32 @D3D12Unmap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
