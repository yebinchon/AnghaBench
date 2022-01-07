; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_jpeg/extr_jpeg.c_setupOpenMaxJpegDecoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_jpeg/extr_jpeg.c_setupOpenMaxJpegDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"malloc decoder\00", align 1
@OMXJPEG_ERROR_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ilclient_init\00", align 1
@OMXJPEG_ERROR_ILCLIENT_INIT = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"OMX_Init\00", align 1
@OMXJPEG_ERROR_OMX_INIT = common dso_local global i32 0, align 4
@OMXJPEG_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setupOpenMaxJpegDecoder(%struct.TYPE_8__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %3, align 8
  %5 = call %struct.TYPE_8__* @malloc(i32 8)
  %6 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %6, align 8
  %7 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %7, i64 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @OMXJPEG_ERROR_MEMORY, align 4
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call i32 @memset(%struct.TYPE_8__* %16, i32 0, i32 8)
  %18 = call i32* (...) @ilclient_init()
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32* %18, i32** %22, align 8
  %23 = icmp eq i32* %18, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @OMXJPEG_ERROR_ILCLIENT_INIT, align 4
  store i32 %26, i32* %2, align 4
  br label %72

27:                                               ; preds = %14
  %28 = call i64 (...) @OMX_Init()
  %29 = load i64, i64* @OMX_ErrorNone, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %32, i64 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ilclient_destroy(i32* %36)
  %38 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @OMXJPEG_ERROR_OMX_INIT, align 4
  store i32 %39, i32* %2, align 4
  br label %72

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @prepareImageDecoder(%struct.TYPE_8__* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @OMXJPEG_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %72

50:                                               ; preds = %40
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @prepareResizer(%struct.TYPE_8__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @OMXJPEG_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %72

60:                                               ; preds = %50
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %61, i64 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @startupImageDecoder(%struct.TYPE_8__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @OMXJPEG_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @OMXJPEG_OK, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %68, %58, %48, %31, %24, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @ilclient_init(...) #1

declare dso_local i64 @OMX_Init(...) #1

declare dso_local i32 @ilclient_destroy(i32*) #1

declare dso_local i32 @prepareImageDecoder(%struct.TYPE_8__*) #1

declare dso_local i32 @prepareResizer(%struct.TYPE_8__*) #1

declare dso_local i32 @startupImageDecoder(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
