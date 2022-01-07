; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_vcsm_square.c_vcsm_square_draw_pattern.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_vcsm_square.c_vcsm_square_draw_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vcsm_square_draw_pattern.x_offset = internal global i32 0, align 4
@fb_width = common dso_local global i32 0, align 4
@fb_height = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vcsm_square_draw_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcsm_square_draw_pattern(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* @fb_width, align 4
  %9 = icmp sgt i32 %8, 32
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @fb_width, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ 32, %10 ], [ %12, %11 ]
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @fb_width, align 4
  %16 = shl i32 %15, 2
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @vcsm_square_draw_pattern.x_offset, align 4
  %19 = add i32 %18, 1
  %20 = load i32, i32* @fb_width, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub i32 %20, %21
  %23 = urem i32 %19, %22
  store i32 %23, i32* @vcsm_square_draw_pattern.x_offset, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %40, %13
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @fb_height, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @vcsm_square_draw_pattern.x_offset, align 4
  %31 = shl i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 2
  %36 = call i32 @memset(i8* %33, i32 -1, i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %24

43:                                               ; preds = %24
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
