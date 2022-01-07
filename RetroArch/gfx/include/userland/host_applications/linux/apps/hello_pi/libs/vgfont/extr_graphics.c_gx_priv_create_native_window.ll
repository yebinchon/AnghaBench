; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_priv_create_native_window.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_priv_create_native_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Could not open display %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not start update on screen %d\00", align 1
@DISPMANX_FLAGS_ALPHA_FROM_SOURCE = common dso_local global i32 0, align 4
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not add element %dx%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_priv_create_native_window(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_15__* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__, align 4
  %20 = alloca %struct.TYPE_14__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %12, align 8
  store i8** %5, i8*** %13, align 8
  %21 = load i8**, i8*** %13, align 8
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @gx_priv_open_screen(i32 %22, i32* %15)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, i32, ...) @GX_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %86

29:                                               ; preds = %6
  %30 = call i64 @vc_dispmanx_update_start(i32 0)
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* %18, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i8*, i32, ...) @GX_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %83

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 16
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 16
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = call i32 @memset(%struct.TYPE_14__* %19, i32 0, i32 4)
  %58 = load i32, i32* @DISPMANX_FLAGS_ALPHA_FROM_SOURCE, align 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = call i32 @memset(%struct.TYPE_14__* %20, i32 0, i32 4)
  %61 = load i64, i64* %18, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %64 = call i32 @vc_dispmanx_element_add(i64 %61, i32 %62, i32 0, %struct.TYPE_13__* %16, i32 0, %struct.TYPE_13__* %17, i32 %63, %struct.TYPE_14__* %19, %struct.TYPE_14__* %20, i32 0)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %36
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i8*, i32, ...) @GX_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i64, i64* %18, align 8
  %78 = call i32 @vc_dispmanx_update_submit_sync(i64 %77)
  store i32 -1, i32* %14, align 4
  br label %79

79:                                               ; preds = %73, %36
  %80 = load i64, i64* %18, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8**, i8*** %13, align 8
  store i8* %81, i8** %82, align 8
  store i32 0, i32* %7, align 4
  br label %88

83:                                               ; preds = %33
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @gx_priv_release_screen(i32 %84)
  br label %86

86:                                               ; preds = %83, %26
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %79
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @gx_priv_open_screen(i32, i32*) #1

declare dso_local i32 @GX_LOG(i8*, i32, ...) #1

declare dso_local i64 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @vc_dispmanx_element_add(i64, i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i64) #1

declare dso_local i32 @gx_priv_release_screen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
