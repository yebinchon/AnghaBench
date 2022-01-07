; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_upload_palette.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_upload_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vga_upload_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_upload_palette() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 0, i8* %2, align 1
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  %5 = call i32 @outp(i32 968, i8 zeroext 0)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %51, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp ult i32 %7, 256
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = urem i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  store i8 0, i8* %2, align 1
  store i8 0, i8* %3, align 1
  %17 = load i8, i8* %4, align 1
  %18 = add i8 %17, 1
  store i8 %18, i8* %4, align 1
  br label %30

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %1, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = urem i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  store i8 0, i8* %2, align 1
  %27 = load i8, i8* %3, align 1
  %28 = add i8 %27, 1
  store i8 %28, i8* %3, align 1
  br label %29

29:                                               ; preds = %26, %22, %19
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i8, i8* %2, align 1
  %32 = zext i8 %31 to i32
  %33 = sitofp i32 %32 to float
  %34 = fmul float %33, 9.000000e+00
  %35 = fptoui float %34 to i8
  %36 = call i32 @outp(i32 969, i8 zeroext %35)
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = sitofp i32 %38 to float
  %40 = fmul float %39, 9.000000e+00
  %41 = fptoui float %40 to i8
  %42 = call i32 @outp(i32 969, i8 zeroext %41)
  %43 = load i8, i8* %4, align 1
  %44 = zext i8 %43 to i32
  %45 = sitofp i32 %44 to float
  %46 = fmul float %45, 2.100000e+01
  %47 = fptoui float %46 to i8
  %48 = call i32 @outp(i32 969, i8 zeroext %47)
  %49 = load i8, i8* %2, align 1
  %50 = add i8 %49, 1
  store i8 %50, i8* %2, align 1
  br label %51

51:                                               ; preds = %30
  %52 = load i32, i32* %1, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %6

54:                                               ; preds = %6
  ret void
}

declare dso_local i32 @outp(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
