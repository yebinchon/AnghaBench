; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_int_image.c_khrn_image_get_bpp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_int_image.c_khrn_image_get_bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMAGE_FORMAT_INVALID = common dso_local global i32 0, align 4
@IMAGE_FORMAT_COMP_MASK = common dso_local global i32 0, align 4
@IMAGE_FORMAT_PIXEL_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @khrn_image_get_bpp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @IMAGE_FORMAT_INVALID, align 4
  %6 = icmp ne i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @vcos_assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IMAGE_FORMAT_COMP_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %27 [
    i32 129, label %12
    i32 130, label %25
    i32 128, label %26
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IMAGE_FORMAT_PIXEL_SIZE_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %23 [
    i32 137, label %16
    i32 133, label %17
    i32 131, label %18
    i32 136, label %19
    i32 135, label %20
    i32 134, label %21
    i32 132, label %22
  ]

16:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %29

17:                                               ; preds = %12
  store i32 4, i32* %2, align 4
  br label %29

18:                                               ; preds = %12
  store i32 8, i32* %2, align 4
  br label %29

19:                                               ; preds = %12
  store i32 16, i32* %2, align 4
  br label %29

20:                                               ; preds = %12
  store i32 24, i32* %2, align 4
  br label %29

21:                                               ; preds = %12
  store i32 32, i32* %2, align 4
  br label %29

22:                                               ; preds = %12
  store i32 64, i32* %2, align 4
  br label %29

23:                                               ; preds = %12
  %24 = call i32 (...) @UNREACHABLE()
  store i32 0, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  store i32 16, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = call i32 (...) @UNREACHABLE()
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %26, %25, %23, %22, %21, %20, %19, %18, %17, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
