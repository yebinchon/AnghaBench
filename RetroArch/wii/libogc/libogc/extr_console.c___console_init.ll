; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@stdcon = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FONT_XSIZE = common dso_local global i32 0, align 4
@FONT_YSIZE = common dso_local global i32 0, align 4
@console_font_8x16 = common dso_local global i32 0, align 4
@COLOR_WHITE = common dso_local global i32 0, align 4
@COLOR_BLACK = common dso_local global i32 0, align 4
@curr_con = common dso_local global %struct.TYPE_4__* null, align 8
@dotab_stdout = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global i32** null, align 8
@STD_OUT = common dso_local global i64 0, align 8
@STD_ERR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__console_init(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.TYPE_4__* @stdcon, %struct.TYPE_4__** %14, align 8
  %15 = load i32, i32* %13, align 4
  %16 = call i32 @_CPU_ISR_Disable(i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 11
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @FONT_XSIZE, align 4
  %28 = sdiv i32 %26, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @FONT_YSIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @console_font_8x16, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @COLOR_WHITE, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @COLOR_BLACK, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** @curr_con, align 8
  %57 = call i32 (...) @__console_clear()
  %58 = load i32**, i32*** @devoptab_list, align 8
  %59 = load i64, i64* @STD_OUT, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  store i32* @dotab_stdout, i32** %60, align 8
  %61 = load i32**, i32*** @devoptab_list, align 8
  %62 = load i64, i64* @STD_ERR, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  store i32* @dotab_stdout, i32** %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @_CPU_ISR_Restore(i32 %64)
  %66 = load i32, i32* @stdout, align 4
  %67 = load i32, i32* @_IONBF, align 4
  %68 = call i32 @setvbuf(i32 %66, i32* null, i32 %67, i32 0)
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* @_IONBF, align 4
  %71 = call i32 @setvbuf(i32 %69, i32* null, i32 %70, i32 0)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__console_clear(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
