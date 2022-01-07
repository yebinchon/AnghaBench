; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_userblt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_graphics_userblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VCOS_SUCCESS = common dso_local global i64 0, align 8
@GX_PBUFFER = common dso_local global i64 0, align 8
@GX_WINDOW = common dso_local global i64 0, align 8
@VCOS_EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @graphics_userblt(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_6__* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @convert_image_type(i32 %26, i32* %23, i32* %24)
  store i64 %27, i64* %22, align 8
  %28 = load i64, i64* %22, align 8
  %29 = load i64, i64* @VCOS_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %10
  %32 = load i64, i64* %22, align 8
  store i64 %32, i64* %11, align 8
  br label %97

33:                                               ; preds = %10
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %35 = call i32 @gx_priv_save(i32* %25, %struct.TYPE_6__* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GX_PBUFFER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @vgImageSubData(i32 %45, i8* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %86

54:                                               ; preds = %33
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GX_WINDOW, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load i8*, i8** %13, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %64, 1
  %66 = mul nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 0, %69
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %21, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %17, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @vgWritePixels(i32* %68, i32 %70, i32 %71, i32 %72, i32 %79, i32 %80, i32 %81)
  br label %85

83:                                               ; preds = %54
  %84 = call i32 @vcos_assert(i32 0)
  br label %85

85:                                               ; preds = %83, %60
  br label %86

86:                                               ; preds = %85, %41
  %87 = call i64 (...) @vgGetError()
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* @VCOS_SUCCESS, align 8
  store i64 %90, i64* %22, align 8
  br label %94

91:                                               ; preds = %86
  %92 = call i32 @vcos_assert(i32 0)
  %93 = load i64, i64* @VCOS_EINVAL, align 8
  store i64 %93, i64* %22, align 8
  br label %94

94:                                               ; preds = %91, %89
  %95 = call i32 @gx_priv_restore(i32* %25)
  %96 = load i64, i64* %22, align 8
  store i64 %96, i64* %11, align 8
  br label %97

97:                                               ; preds = %94, %31
  %98 = load i64, i64* %11, align 8
  ret i64 %98
}

declare dso_local i64 @convert_image_type(i32, i32*, i32*) #1

declare dso_local i32 @gx_priv_save(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @vgImageSubData(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vgWritePixels(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @vgGetError(...) #1

declare dso_local i32 @gx_priv_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
