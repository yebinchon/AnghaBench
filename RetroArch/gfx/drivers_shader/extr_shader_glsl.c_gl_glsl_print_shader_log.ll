; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_print_shader_log.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_print_shader_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Shader log: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gl_glsl_print_shader_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_glsl_print_shader_log(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %8 = call i32 @glGetShaderiv(i32 %6, i32 %7, i64* %4)
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @malloc(i64 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %32

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @glGetShaderInfoLog(i32 %20, i64 %21, i64* %5, i8* %22)
  %24 = load i64, i64* %5, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @free(i8* %30)
  br label %32

32:                                               ; preds = %29, %18, %11
  ret void
}

declare dso_local i32 @glGetShaderiv(i32, i32, i64*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @glGetShaderInfoLog(i32, i64, i64*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
