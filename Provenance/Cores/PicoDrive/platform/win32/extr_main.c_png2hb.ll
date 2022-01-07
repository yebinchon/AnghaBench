; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/win32/extr_main.c_png2hb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/win32/extr_main.c_png2hb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@READPNG_24 = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@FrameWnd = common dso_local global i32 0, align 4
@CBM_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CreateDIBitmap failed with %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @png2hb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @png2hb(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 345600, i32 230400
  %14 = call i8* @calloc(i32 1, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %60

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @READPNG_24, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 480, i32 320
  %26 = call i32 @readpng(i8* %19, i8* %20, i32 %21, i32 %25, i32 240)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @free(i8* %30)
  store i32* null, i32** %3, align 8
  br label %60

32:                                               ; preds = %18
  %33 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 24)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 24, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 480, i32 320
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 -240, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i32 24, i32* %42, align 4
  %43 = load i32, i32* @BI_RGB, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @FrameWnd, align 4
  %46 = call i32 @GetDC(i32 %45)
  %47 = load i32, i32* @CBM_INIT, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast %struct.TYPE_4__* %6 to i32*
  %50 = call i32* @CreateDIBitmap(i32 %46, %struct.TYPE_4__* %6, i32 %47, i8* %48, i32* %49, i32 0)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = call i32 (...) @GetLastError()
  %55 = call i32 @lprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %32
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %3, align 8
  br label %60

60:                                               ; preds = %56, %29, %17
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @readpng(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @CreateDIBitmap(i32, %struct.TYPE_4__*, i32, i8*, i32*, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @lprintf(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
