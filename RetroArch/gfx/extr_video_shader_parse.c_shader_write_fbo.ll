; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_shader_write_fbo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_shader_write_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfx_fbo_scale = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"float_framebuffer%u\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"srgb_framebuffer%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.gfx_fbo_scale*, i32)* @shader_write_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_write_fbo(i32* %0, %struct.gfx_fbo_scale* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gfx_fbo_scale*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.gfx_fbo_scale* %1, %struct.gfx_fbo_scale** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %8, align 16
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @snprintf(i8* %9, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %14 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %15 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @config_set_bool(i32* %12, i8* %13, i32 %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @snprintf(i8* %18, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %23 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %24 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @config_set_bool(i32* %21, i8* %22, i32 %25)
  %27 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %28 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %57

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %35 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %38 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %41 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @shader_write_scale_dim(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %47 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %50 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %5, align 8
  %53 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @shader_write_scale_dim(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @config_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @shader_write_scale_dim(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
