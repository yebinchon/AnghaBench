; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_compile_program.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_compile_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@GL_LINK_STATUS = common dso_local global i32 0, align 4
@RETRO_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Failed to link.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @fft_compile_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fft_compile_program(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8192 x i8], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = call i32 (...) @glCreateProgram()
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @fft_compile_shader(i32* %14, i32 %15, i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @fft_compile_shader(i32* %18, i32 %19, i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @glAttachShader(i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @glAttachShader(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @glLinkProgram(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GL_LINK_STATUS, align 4
  %32 = call i32 @glGetProgramiv(i32 %30, i32 %31, i64* %7)
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @RETRO_LOG_ERROR, align 4
  %37 = call i32 (i32, i8*, ...) @log_cb(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0
  %40 = call i32 @glGetProgramInfoLog(i32 %38, i32 8192, i32* %12, i8* %39)
  %41 = load i32, i32* @RETRO_LOG_ERROR, align 4
  %42 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0
  %43 = call i32 (i32, i8*, ...) @log_cb(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %35, %3
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @glDeleteShader(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @glDeleteShader(i32 %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @glCreateProgram(...) #1

declare dso_local i32 @fft_compile_shader(i32*, i32, i8*) #1

declare dso_local i32 @glAttachShader(i32, i32) #1

declare dso_local i32 @glLinkProgram(i32) #1

declare dso_local i32 @glGetProgramiv(i32, i32, i64*) #1

declare dso_local i32 @log_cb(i32, i8*, ...) #1

declare dso_local i32 @glGetProgramInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @glDeleteShader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
