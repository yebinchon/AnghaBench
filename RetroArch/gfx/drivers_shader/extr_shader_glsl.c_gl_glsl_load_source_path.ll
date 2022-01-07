; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_load_source_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_load_source_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader_pass = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"#pragma parameter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_shader_pass*, i8*)* @gl_glsl_load_source_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_glsl_load_source_path(%struct.video_shader_pass* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.video_shader_pass*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.video_shader_pass* %0, %struct.video_shader_pass** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %9 = icmp ne %struct.video_shader_pass* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %13 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast i64* %15 to i8**
  %17 = call i64 @filestream_read_file(i8* %11, i8** %16, i64* %6)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi i64 [ %17, %10 ], [ 0, %18 ]
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %19
  store i32 0, i32* %3, align 4
  br label %60

27:                                               ; preds = %23
  %28 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %29 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gl_glsl_strip_parameter_pragmas(i64 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %35 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @strdup(i64 %38)
  %40 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %41 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 %39, i64* %43, align 8
  %44 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %45 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %27
  %51 = load %struct.video_shader_pass*, %struct.video_shader_pass** %4, align 8
  %52 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %50, %27
  %58 = phi i1 [ false, %27 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @filestream_read_file(i8*, i8**, i64*) #1

declare dso_local i32 @gl_glsl_strip_parameter_pragmas(i64, i8*) #1

declare dso_local i64 @strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
