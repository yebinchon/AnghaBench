; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d10.c_d3d10_gfx_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d10.c_d3d10_gfx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32*, i32*, i32*, i32***, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i32* }

@GFX_MAX_SHADERS = common dso_local global i32 0, align 4
@RARCH_WRAP_MAX = common dso_local global i32 0, align 4
@RARCH_FILTER_LINEAR = common dso_local global i64 0, align 8
@RARCH_FILTER_NEAREST = common dso_local global i64 0, align 8
@D3D10_MAX_GPU_COUNT = common dso_local global i32 0, align 4
@d3d10_adapters = common dso_local global i32** null, align 8
@cached_context = common dso_local global i32 0, align 4
@cached_device_d3d10 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @d3d10_gfx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d10_gfx_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %164

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call i32 @d3d10_free_shader_preset(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 14
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @d3d10_release_texture(i32* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 14
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @Release(i32* %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 14
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @Release(i32* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 13
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = call i32 @d3d10_release_texture(i32* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @Release(i32* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 12
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = call i32 @d3d10_release_shader(i32* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 12
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = call i32 @d3d10_release_shader(i32* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @Release(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %63, %10
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 11
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @d3d10_release_shader(i32* %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @Release(i32* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 9
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @Release(i32* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @Release(i32* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @Release(i32* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @Release(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %114, %66
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @RARCH_WRAP_MAX, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 5
  %94 = load i32***, i32**** %93, align 8
  %95 = load i64, i64* @RARCH_FILTER_LINEAR, align 8
  %96 = getelementptr inbounds i32**, i32*** %94, i64 %95
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @Release(i32* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 5
  %105 = load i32***, i32**** %104, align 8
  %106 = load i64, i64* @RARCH_FILTER_NEAREST, align 8
  %107 = getelementptr inbounds i32**, i32*** %105, i64 %106
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @Release(i32* %112)
  br label %114

114:                                              ; preds = %91
  %115 = load i32, i32* %3, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %87

117:                                              ; preds = %87
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @Release(i32* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @Release(i32* %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @Release(i32* %128)
  %130 = call i32 (...) @font_driver_free_osd()
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @Release(i32* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %158, %117
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @D3D10_MAX_GPU_COUNT, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = load i32**, i32*** @d3d10_adapters, align 8
  %141 = load i32, i32* %3, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load i32**, i32*** @d3d10_adapters, align 8
  %148 = load i32, i32* %3, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @Release(i32* %151)
  %153 = load i32**, i32*** @d3d10_adapters, align 8
  %154 = load i32, i32* %3, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  store i32* null, i32** %156, align 8
  br label %157

157:                                              ; preds = %146, %139
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %3, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %135

161:                                              ; preds = %135
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = call i32 @free(%struct.TYPE_11__* %162)
  br label %164

164:                                              ; preds = %161, %9
  ret void
}

declare dso_local i32 @d3d10_free_shader_preset(%struct.TYPE_11__*) #1

declare dso_local i32 @d3d10_release_texture(i32*) #1

declare dso_local i32 @Release(i32*) #1

declare dso_local i32 @d3d10_release_shader(i32*) #1

declare dso_local i32 @font_driver_free_osd(...) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
