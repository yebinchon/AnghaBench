; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_read_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_read_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@D3DPOOL_SYSTEMMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @d3d9_read_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_read_viewport(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 1, i32* %12, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %13, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = call i32 @video_driver_get_size(i32* %7, i32* %8)
  %25 = load i32, i32* %14, align 4
  %26 = bitcast i32** %10 to i8**
  %27 = call i32 @d3d9_device_get_render_target(i32 %25, i32 0, i8** %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %3
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (...) @d3d9_get_xrgb8888_format()
  %34 = load i32, i32* @D3DPOOL_SYSTEMMEM, align 4
  %35 = bitcast i32** %11 to i8**
  %36 = call i32 @d3d9_device_create_offscreen_plain_surface(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i8** %35, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @d3d9_device_get_render_target_data(i32 %39, i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %29, %3
  store i32 0, i32* %12, align 4
  br label %143

45:                                               ; preds = %38
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @d3d9_surface_lock_rect(i32* %46, %struct.TYPE_7__* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %141

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 4
  store i32 %52, i32* %17, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %18, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %18, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %17, align 4
  %69 = mul i32 %67, %68
  %70 = load i32*, i32** %18, align 8
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %18, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %17, align 4
  %78 = mul i32 %76, %77
  %79 = load i32*, i32** %18, align 8
  %80 = zext i32 %78 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32* %82, i32** %18, align 8
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %130, %49
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ult i32 %84, %88
  br i1 %89, label %90, label %138

90:                                               ; preds = %83
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %126, %90
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %92, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %91
  %99 = load i32*, i32** %18, align 8
  %100 = load i32, i32* %15, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 0
  %105 = and i32 %104, 255
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %15, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = and i32 %113, 255
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* %15, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %5, align 8
  store i32 %123, i32* %124, align 4
  br label %126

126:                                              ; preds = %98
  %127 = load i32, i32* %15, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %91

129:                                              ; preds = %91
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %16, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = zext i32 %133 to i64
  %136 = sub i64 0, %135
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32* %137, i32** %18, align 8
  br label %83

138:                                              ; preds = %83
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @d3d9_surface_unlock_rect(i32* %139)
  br label %142

141:                                              ; preds = %45
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %138
  br label %143

143:                                              ; preds = %142, %44
  %144 = load i32*, i32** %10, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @d3d9_surface_free(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %11, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @d3d9_surface_free(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %12, align 4
  ret i32 %156
}

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @d3d9_device_get_render_target(i32, i32, i8**) #1

declare dso_local i32 @d3d9_device_create_offscreen_plain_surface(i32, i32, i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @d3d9_get_xrgb8888_format(...) #1

declare dso_local i32 @d3d9_device_get_render_target_data(i32, i32*, i32*) #1

declare dso_local i64 @d3d9_surface_lock_rect(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @d3d9_surface_unlock_rect(i32*) #1

declare dso_local i32 @d3d9_surface_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
