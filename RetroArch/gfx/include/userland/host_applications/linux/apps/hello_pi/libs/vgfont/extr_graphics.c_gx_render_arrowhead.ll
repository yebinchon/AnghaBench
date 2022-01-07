; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_render_arrowhead.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_render_arrowhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VCOS_SUCCESS = common dso_local global i32 0, align 4
@VCOS_EINVAL = common dso_local global i32 0, align 4
@VG_PAINT_LINEAR_GRADIENT = common dso_local global i32 0, align 4
@VG_FILL_PATH = common dso_local global i32 0, align 4
@VG_PATH_FORMAT_STANDARD = common dso_local global i32 0, align 4
@VG_PATH_DATATYPE_S_32 = common dso_local global i32 0, align 4
@VG_PATH_CAPABILITY_ALL = common dso_local global i32 0, align 4
@VCOS_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_render_arrowhead(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [6 x i32], align 16
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = ptrtoint i32* %19 to i32
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @gx_priv_save(i32* %17, i32 %22)
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = call i32 @vcos_assert(i32 0)
  %28 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %28, i32* %16, align 4
  br label %85

29:                                               ; preds = %6
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %30, align 16
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @VG_PAINT_LINEAR_GRADIENT, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %38 = call i32 @vgSetParameterfv(i32 %35, i32 %36, i32 4, i32* %37)
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @VG_FILL_PATH, align 4
  %41 = call i32 @vgSetPaint(i32 %39, i32 %40)
  %42 = load i32, i32* @VG_PATH_FORMAT_STANDARD, align 4
  %43 = load i32, i32* @VG_PATH_DATATYPE_S_32, align 4
  %44 = load i32, i32* @VG_PATH_CAPABILITY_ALL, align 4
  %45 = call i32 @vgCreatePath(i32 %42, i32 %43, double 1.000000e+00, double 0.000000e+00, i32 8, i32 8, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %29
  %49 = load i32, i32* @VCOS_ENOMEM, align 4
  store i32 %49, i32* %16, align 4
  br label %85

50:                                               ; preds = %29
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %51, i64 1
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds i32, i32* %53, i64 1
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %55, align 4
  %59 = getelementptr inbounds i32, i32* %55, i64 1
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sdiv i32 %61, 2
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %59, align 4
  %64 = getelementptr inbounds i32, i32* %59, i64 1
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %64, align 4
  %68 = getelementptr inbounds i32, i32* %64, i64 1
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 2
  %72 = sub nsw i32 %69, %71
  store i32 %72, i32* %68, align 4
  %73 = load i32, i32* %15, align 4
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %75 = call i32 @vguPolygon(i32 %73, i32* %74, i32 3, i32 1)
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @VG_FILL_PATH, align 4
  %78 = call i32 @vgDrawPath(i32 %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @vgDestroyPath(i32 %79)
  %81 = call i64 (...) @vgGetError()
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @vcos_assert(i32 %83)
  br label %85

85:                                               ; preds = %50, %48, %26
  %86 = call i32 @gx_priv_restore(i32* %17)
  %87 = load i32, i32* %16, align 4
  ret i32 %87
}

declare dso_local i32 @gx_priv_save(i32*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vgSetParameterfv(i32, i32, i32, i32*) #1

declare dso_local i32 @vgSetPaint(i32, i32) #1

declare dso_local i32 @vgCreatePath(i32, i32, double, double, i32, i32, i32) #1

declare dso_local i32 @vguPolygon(i32, i32*, i32, i32) #1

declare dso_local i32 @vgDrawPath(i32, i32) #1

declare dso_local i32 @vgDestroyPath(i32) #1

declare dso_local i64 @vgGetError(...) #1

declare dso_local i32 @gx_priv_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
