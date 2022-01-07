; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_vfwcap.c_dump_bih.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_vfwcap.c_dump_bih.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"BITMAPINFOHEADER\0A\00", align 1
@biSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@biWidth = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@biHeight = common dso_local global i32 0, align 4
@biPlanes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@biBitCount = common dso_local global i32 0, align 4
@biCompression = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"    biCompression:\09\22%.4s\22\0A\00", align 1
@biSizeImage = common dso_local global i32 0, align 4
@biXPelsPerMeter = common dso_local global i32 0, align 4
@biYPelsPerMeter = common dso_local global i32 0, align 4
@biClrUsed = common dso_local global i32 0, align 4
@biClrImportant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @dump_bih to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bih(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @AV_LOG_DEBUG, align 4
  %7 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %5, i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = load i32, i32* @biSize, align 4
  %11 = call i32 @dstruct(i32* %8, %struct.TYPE_4__* %9, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load i32, i32* @biWidth, align 4
  %15 = call i32 @dstruct(i32* %12, %struct.TYPE_4__* %13, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load i32, i32* @biHeight, align 4
  %19 = call i32 @dstruct(i32* %16, %struct.TYPE_4__* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i32, i32* @biPlanes, align 4
  %23 = call i32 @dstruct(i32* %20, %struct.TYPE_4__* %21, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i32, i32* @biBitCount, align 4
  %27 = call i32 @dstruct(i32* %24, %struct.TYPE_4__* %25, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i32, i32* @biCompression, align 4
  %31 = call i32 @dstruct(i32* %28, %struct.TYPE_4__* %29, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @AV_LOG_DEBUG, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to i8*
  %37 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %32, i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = load i32, i32* @biSizeImage, align 4
  %41 = call i32 @dstruct(i32* %38, %struct.TYPE_4__* %39, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = load i32, i32* @biXPelsPerMeter, align 4
  %45 = call i32 @dstruct(i32* %42, %struct.TYPE_4__* %43, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = load i32, i32* @biYPelsPerMeter, align 4
  %49 = call i32 @dstruct(i32* %46, %struct.TYPE_4__* %47, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i32, i32* @biClrUsed, align 4
  %53 = call i32 @dstruct(i32* %50, %struct.TYPE_4__* %51, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = load i32, i32* @biClrImportant, align 4
  %57 = call i32 @dstruct(i32* %54, %struct.TYPE_4__* %55, i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @dstruct(i32*, %struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
