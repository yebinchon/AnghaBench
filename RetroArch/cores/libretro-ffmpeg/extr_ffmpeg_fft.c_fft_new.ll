; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_EXTENSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ARB_ES3_compatibility\00", align 1
@GL_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fft_new(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* @GL_EXTENSIONS, align 4
  %9 = call i64 @glGetString(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strstr(i8* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %2
  store i32* null, i32** %3, align 8
  br label %40

18:                                               ; preds = %13
  %19 = call i64 @calloc(i32 1, i32 4)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %40

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @fft_context_reset(i32* %25, i32 %26, i32 %27, i32 256)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %33

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %3, align 8
  br label %40

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @free(i32* %37)
  br label %39

39:                                               ; preds = %36, %33
  store i32* null, i32** %3, align 8
  br label %40

40:                                               ; preds = %39, %31, %23, %17
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i64 @glGetString(i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fft_context_reset(i32*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
