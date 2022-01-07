; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_xdk1_xfonts.c_xfonts_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_xdk1_xfonts.c_xfonts_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float }
%struct.font_params = type { float, float }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 (i32, i32*, i32, float, float)* }
%struct.TYPE_6__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@D3DBACKBUFFER_TYPE_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i8*, %struct.font_params*)* @xfonts_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfonts_render_msg(%struct.TYPE_8__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %14 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %13, align 8
  %20 = load %struct.font_params*, %struct.font_params** %8, align 8
  %21 = icmp ne %struct.font_params* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.font_params*, %struct.font_params** %8, align 8
  %24 = getelementptr inbounds %struct.font_params, %struct.font_params* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  store float %25, float* %11, align 4
  %26 = load %struct.font_params*, %struct.font_params** %8, align 8
  %27 = getelementptr inbounds %struct.font_params, %struct.font_params* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  store float %28, float* %12, align 4
  br label %36

29:                                               ; preds = %4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 4
  store float %32, float* %11, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load float, float* %34, align 4
  store float %35, float* %12, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @D3DBACKBUFFER_TYPE_MONO, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @d3d8_device_get_backbuffer(i32 %41, i32 -1, i32 0, i32 %42, i32* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = mul nuw i64 4, %15
  %48 = udiv i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @mbstowcs(i32* %17, i8* %46, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load float, float* %11, align 4
  %58 = load float, float* %12, align 4
  %59 = call i32 @XFONT_TextOut(%struct.TYPE_9__* %53, i32 %56, i32* %17, i32 -1, float %57, float %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @d3d8_surface_free(i32 %62)
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @d3d8_device_get_backbuffer(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @mbstowcs(i32*, i8*, i32) #2

declare dso_local i32 @XFONT_TextOut(%struct.TYPE_9__*, i32, i32*, i32, float, float) #2

declare dso_local i32 @d3d8_surface_free(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
