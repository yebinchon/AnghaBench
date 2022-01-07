; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_compile_shader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_compile_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@RETRO_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to compile.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @fft_compile_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fft_compile_shader(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8192 x i8], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @glCreateShader(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = bitcast i8** %7 to i32**
  %16 = call i32 @glShaderSource(i32 %14, i32 1, i32** %15, i32* null)
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @glCompileShader(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %21 = call i32 @glGetShaderiv(i32 %19, i32 %20, i64* %8)
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @RETRO_LOG_ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @log_cb(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %29 = call i32 @glGetShaderInfoLog(i32 %27, i32 8192, i32* %11, i8* %28)
  %30 = load i32, i32* @RETRO_LOG_ERROR, align 4
  %31 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %32 = call i32 (i32, i8*, ...) @log_cb(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 0, i32* %4, align 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @glShaderSource(i32, i32, i32**, i32*) #1

declare dso_local i32 @glCompileShader(i32) #1

declare dso_local i32 @glGetShaderiv(i32, i32, i64*) #1

declare dso_local i32 @log_cb(i32, i8*, ...) #1

declare dso_local i32 @glGetShaderInfoLog(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
