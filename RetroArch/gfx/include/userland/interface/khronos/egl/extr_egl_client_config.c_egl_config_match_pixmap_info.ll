; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config.c_egl_config_match_pixmap_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config.c_egl_config_match_pixmap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@formats = common dso_local global %struct.TYPE_5__* null, align 8
@EGL_MAX_CONFIGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_config_match_pixmap_info(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @formats, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @EGL_MAX_CONFIGS, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i1 [ false, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @vcos_assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @khrn_image_get_red_size(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @FEATURES_UNPACK_RED(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @khrn_image_get_green_size(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @FEATURES_UNPACK_GREEN(i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @khrn_image_get_blue_size(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @FEATURES_UNPACK_BLUE(i32 %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @khrn_image_get_alpha_size(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @FEATURES_UNPACK_ALPHA(i32 %46)
  %48 = icmp eq i64 %45, %47
  br label %49

49:                                               ; preds = %43, %37, %31, %22
  %50 = phi i1 [ false, %37 ], [ false, %31 ], [ false, %22 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @khrn_image_get_red_size(i32) #1

declare dso_local i64 @FEATURES_UNPACK_RED(i32) #1

declare dso_local i64 @khrn_image_get_green_size(i32) #1

declare dso_local i64 @FEATURES_UNPACK_GREEN(i32) #1

declare dso_local i64 @khrn_image_get_blue_size(i32) #1

declare dso_local i64 @FEATURES_UNPACK_BLUE(i32) #1

declare dso_local i64 @khrn_image_get_alpha_size(i32) #1

declare dso_local i64 @FEATURES_UNPACK_ALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
