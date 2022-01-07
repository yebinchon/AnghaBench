; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_load_plain.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_load_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.video_shader*, i32* }
%struct.video_shader = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.shader_program_info = type { i8*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"[CG]: Loading stock Cg file.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[CG]: Loading Cg file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @gl_cg_load_plain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_cg_load_plain(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.shader_program_info, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = call i32 @gl_cg_load_stock(%struct.TYPE_7__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

14:                                               ; preds = %2
  %15 = call i64 @calloc(i32 1, i32 16)
  %16 = inttoptr i64 %15 to %struct.video_shader*
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.video_shader* %16, %struct.video_shader** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.video_shader*, %struct.video_shader** %20, align 8
  %22 = icmp ne %struct.video_shader* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %74

24:                                               ; preds = %14
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.video_shader*, %struct.video_shader** %26, align 8
  %28 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @string_is_empty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  br label %69

43:                                               ; preds = %24
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %7, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %7, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.video_shader*, %struct.video_shader** %50, align 8
  %52 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strlcpy(i32 %57, i8* %58, i32 4)
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i32 @gl_cg_compile_program(i8* %60, i32 1, i32* %64, %struct.shader_program_info* %7)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %74

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %32
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.video_shader*, %struct.video_shader** %71, align 8
  %73 = call i32 @video_shader_resolve_parameters(i32* null, %struct.video_shader* %72)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %67, %23, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @gl_cg_load_stock(%struct.TYPE_7__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @gl_cg_compile_program(i8*, i32, i32*, %struct.shader_program_info*) #1

declare dso_local i32 @video_shader_resolve_parameters(i32*, %struct.video_shader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
