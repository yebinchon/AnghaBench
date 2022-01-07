; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_init_singlepass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_init_singlepass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.video_shader_pass = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, double, double, i32, i32 }

@RARCH_SCALE_VIEWPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @d3d8_init_singlepass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_init_singlepass(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.video_shader_pass*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.video_shader_pass* null, %struct.video_shader_pass** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = call i32 @memset(%struct.TYPE_9__* %10, i32 0, i32 16)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = bitcast i32* %19 to %struct.video_shader_pass*
  store %struct.video_shader_pass* %20, %struct.video_shader_pass** %4, align 8
  %21 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %22 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %25 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store double 1.000000e+00, double* %26, align 8
  %27 = load i32, i32* @RARCH_SCALE_VIEWPORT, align 4
  %28 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %29 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %32 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %36 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store double %34, double* %37, align 8
  %38 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %39 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %43 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @string_is_empty(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %8
  %51 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %52 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strlcpy(i32 %54, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %50, %8
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %7
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
