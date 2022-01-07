; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_create_native_window.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_create_native_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_9__, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: %d,%d,%d,%d %d,%d,0x%x,0x%x\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@DISPMANX_NO_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to open display handle\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to open update handle\00", align 1
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@DISPMANX_NO_ROTATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to create element handle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspitexutil_create_native_window(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %12 = load i32, i32* @DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 255, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %16 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 20, i1 false)
  %17 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 20, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @VCOS_FUNCTION, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @vc_dispmanx_display_open(i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DISPMANX_NO_HANDLE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %1
  %74 = call i32 @vcos_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %120

75:                                               ; preds = %1
  %76 = call i64 @vc_dispmanx_update_start(i32 0)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @DISPMANX_NO_HANDLE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @vcos_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %120

82:                                               ; preds = %75
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %89 = load i32, i32* @DISPMANX_NO_ROTATE, align 4
  %90 = call i64 @vc_dispmanx_element_add(i64 %83, i64 %86, i32 %87, %struct.TYPE_10__* %6, i32 0, %struct.TYPE_10__* %5, i32 %88, %struct.TYPE_11__* %4, i32* null, i32 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @DISPMANX_NO_HANDLE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = call i32 @vcos_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %120

96:                                               ; preds = %82
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i64 %97, i64* %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @vc_dispmanx_update_submit_sync(i64 %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = bitcast %struct.TYPE_9__* %116 to i32*
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  store i32* %117, i32** %119, align 8
  store i32 0, i32* %2, align 4
  br label %121

120:                                              ; preds = %94, %80, %73
  store i32 -1, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %96
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @vc_dispmanx_display_open(i32) #2

declare dso_local i32 @vcos_log_error(i8*) #2

declare dso_local i64 @vc_dispmanx_update_start(i32) #2

declare dso_local i64 @vc_dispmanx_element_add(i64, i64, i32, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @vc_dispmanx_update_submit_sync(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
