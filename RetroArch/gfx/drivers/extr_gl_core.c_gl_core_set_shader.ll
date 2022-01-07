; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_set_shader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_set_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@RARCH_SHADER_SLANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"[GLCore]: Only Slang shaders are supported. Falling back to stock.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"[GLCore]: Failed to create filter chain: \22%s\22. Falling back to stock.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @gl_core_set_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_core_set_shader(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__* %15, i32 0)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @gl_core_filter_chain_free(i32* %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @string_is_empty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RARCH_SHADER_SLANG, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %7, align 8
  br label %38

38:                                               ; preds = %36, %32, %26
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @string_is_empty(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = call i32 @gl_core_init_default_filter_chain(%struct.TYPE_5__* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__* %45, i32 1)
  store i32 1, i32* %4, align 4
  br label %62

47:                                               ; preds = %38
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @gl_core_init_filter_chain_preset(%struct.TYPE_5__* %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = call i32 @gl_core_init_default_filter_chain(%struct.TYPE_5__* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__* %57, i32 1)
  store i32 0, i32* %4, align 4
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__* %60, i32 1)
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %52, %42, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gl_core_filter_chain_free(i32*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @gl_core_init_default_filter_chain(%struct.TYPE_5__*) #1

declare dso_local i32 @gl_core_init_filter_chain_preset(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
