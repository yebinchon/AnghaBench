; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/Glide64/extr_osal_dynamiclib_win32.c_osal_dynlib_open.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/Glide64/extr_osal_dynamiclib_win32.c_osal_dynlib_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M64ERR_INPUT_ASSERT = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LoadLibrary('%s') error: %s\0A\00", align 1
@M64ERR_INPUT_NOT_FOUND = common dso_local global i32 0, align 4
@M64ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osal_dynlib_open(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = icmp eq i32** %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @M64ERR_INPUT_ASSERT, align 4
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @LoadLibrary(i8* %16)
  %18 = load i32**, i32*** %4, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32**, i32*** %4, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = call i32 (...) @GetLastError()
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %25 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LANG_NEUTRAL, align 4
  %29 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %30 = call i32 @MAKELANGID(i32 %28, i32 %29)
  %31 = ptrtoint i8** %6 to i32
  %32 = call i32 @FormatMessage(i32 %26, i32* null, i32 %27, i32 %30, i32 %31, i32 0, i32* null)
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @LocalFree(i8* %37)
  %39 = load i32, i32* @M64ERR_INPUT_NOT_FOUND, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %15
  %41 = load i32, i32* @M64ERR_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %22, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @LoadLibrary(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FormatMessage(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
