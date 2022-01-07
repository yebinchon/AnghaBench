; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d11_common.c_d3d11_update_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d11_common.c_d3d11_update_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@D3D11_MAP_WRITE = common dso_local global i32 0, align 4
@D3D11_RESOURCE_MISC_GENERATE_MIPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d3d11_update_texture(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, %struct.TYPE_9__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %14, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %7
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %7
  br label %80

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @D3D11_MAP_WRITE, align 4
  %39 = call i32 @D3D11MapTexture2D(i32 %34, i32 %37, i32 0, i32 %38, i32 0, %struct.TYPE_10__* %15)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dxgi_copy(i32 %40, i32 %41, i32 %42, i32 %43, i8* %44, i32 %48, i32 %50, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @D3D11UnmapTexture2D(i32 %54, i32 %57, i32 0)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @D3D11CopyTexture2DSubresourceRegion(i32 %59, i32 %62, i32 0, i32 0, i32 0, i32 0, i32 %65, i32 0, %struct.TYPE_11__* %16)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @D3D11_RESOURCE_MISC_GENERATE_MIPS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %33
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @D3D11GenerateMips(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %32, %74, %33
  ret void
}

declare dso_local i32 @D3D11MapTexture2D(i32, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dxgi_copy(i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @D3D11UnmapTexture2D(i32, i32, i32) #1

declare dso_local i32 @D3D11CopyTexture2DSubresourceRegion(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @D3D11GenerateMips(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
