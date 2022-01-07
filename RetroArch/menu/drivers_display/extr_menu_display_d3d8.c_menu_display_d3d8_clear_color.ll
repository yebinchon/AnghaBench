; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d8.c_menu_display_d3d8_clear_color.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d8.c_menu_display_d3d8_clear_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float, float, float }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@D3D_COMM_CLEAR_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*)* @menu_display_d3d8_clear_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_d3d8_clear_color(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  br label %45

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = fmul float %20, 2.550000e+02
  %22 = call i32 @BYTE_CLAMP(float %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = fmul float %25, 2.550000e+02
  %27 = call i32 @BYTE_CLAMP(float %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load float, float* %29, align 4
  %31 = fmul float %30, 2.550000e+02
  %32 = call i32 @BYTE_CLAMP(float %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load float, float* %34, align 4
  %36 = fmul float %35, 2.550000e+02
  %37 = call i32 @BYTE_CLAMP(float %36)
  %38 = call i32 @D3DCOLOR_ARGB(i32 %22, i32 %27, i32 %32, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @D3D_COMM_CLEAR_TARGET, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @d3d8_clear(i32 %41, i32 0, i32* null, i32 %42, i32 %43, i32 0, i32 0)
  br label %45

45:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @D3DCOLOR_ARGB(i32, i32, i32, i32) #1

declare dso_local i32 @BYTE_CLAMP(float) #1

declare dso_local i32 @d3d8_clear(i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
