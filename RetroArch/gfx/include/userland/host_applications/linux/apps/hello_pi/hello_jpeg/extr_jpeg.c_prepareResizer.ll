; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_jpeg/extr_jpeg.c_prepareResizer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_jpeg/extr_jpeg.c_prepareResizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"malloc image resizer\00", align 1
@OMXJPEG_ERROR_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@ILCLIENT_DISABLE_ALL_PORTS = common dso_local global i32 0, align 4
@ILCLIENT_ENABLE_INPUT_BUFFERS = common dso_local global i32 0, align 4
@ILCLIENT_ENABLE_OUTPUT_BUFFERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"image resizer\00", align 1
@OMXJPEG_ERROR_CREATING_COMP = common dso_local global i32 0, align 4
@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_IndexParamImageInit = common dso_local global i32 0, align 4
@OMXJPEG_ERROR_WRONG_NO_PORTS = common dso_local global i32 0, align 4
@OMXJPEG_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepareResizer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = call %struct.TYPE_10__* @malloc(i32 4)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %8, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @OMXJPEG_ERROR_MEMORY, align 4
  store i32 %15, i32* %2, align 4
  br label %80

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* @ILCLIENT_DISABLE_ALL_PORTS, align 4
  %25 = load i32, i32* @ILCLIENT_ENABLE_INPUT_BUFFERS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ILCLIENT_ENABLE_OUTPUT_BUFFERS, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ilclient_create_component(i32 %19, i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @OMXJPEG_ERROR_CREATING_COMP, align 4
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %16
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ILC_GET_HANDLE(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  store i32 %41, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 24, i32* %46, align 8
  %47 = load i32, i32* @OMX_VERSION, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ILC_GET_HANDLE(i32 %54)
  %56 = load i32, i32* @OMX_IndexParamImageInit, align 4
  %57 = call i32 @OMX_GetParameter(i32 %55, i32 %56, %struct.TYPE_9__* %5)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %35
  %62 = load i32, i32* @OMXJPEG_ERROR_WRONG_NO_PORTS, align 4
  store i32 %62, i32* %2, align 4
  br label %80

63:                                               ; preds = %35
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i64 %65, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* @OMXJPEG_OK, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %63, %61, %32, %13
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ilclient_create_component(i32, i32*, i8*, i32) #1

declare dso_local i32 @ILC_GET_HANDLE(i32) #1

declare dso_local i32 @OMX_GetParameter(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
