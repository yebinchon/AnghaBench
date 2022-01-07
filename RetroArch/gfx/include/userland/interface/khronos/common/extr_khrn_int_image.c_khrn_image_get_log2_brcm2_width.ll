; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_int_image.c_khrn_image_get_log2_brcm2_width.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_int_image.c_khrn_image_get_log2_brcm2_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMAGE_FORMAT_COMP_MASK = common dso_local global i32 0, align 4
@IMAGE_FORMAT_PIXEL_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @khrn_image_get_log2_brcm2_width(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @khrn_image_is_brcm1(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @khrn_image_is_brcm2(i32 %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @vcos_assert(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IMAGE_FORMAT_COMP_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %31 [
    i32 129, label %18
    i32 130, label %29
    i32 128, label %30
  ]

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IMAGE_FORMAT_PIXEL_SIZE_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %27 [
    i32 135, label %22
    i32 132, label %23
    i32 131, label %24
    i32 134, label %25
    i32 133, label %26
  ]

22:                                               ; preds = %18
  store i32 6, i32* %2, align 4
  br label %33

23:                                               ; preds = %18
  store i32 4, i32* %2, align 4
  br label %33

24:                                               ; preds = %18
  store i32 3, i32* %2, align 4
  br label %33

25:                                               ; preds = %18
  store i32 3, i32* %2, align 4
  br label %33

26:                                               ; preds = %18
  store i32 2, i32* %2, align 4
  br label %33

27:                                               ; preds = %18
  %28 = call i32 (...) @UNREACHABLE()
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %33

30:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %33

31:                                               ; preds = %11
  %32 = call i32 (...) @UNREACHABLE()
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %30, %29, %27, %26, %25, %24, %23, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @khrn_image_is_brcm1(i32) #1

declare dso_local i64 @khrn_image_is_brcm2(i32) #1

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
