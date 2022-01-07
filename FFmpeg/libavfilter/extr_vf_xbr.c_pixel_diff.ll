; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xbr.c_pixel_diff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xbr.c_pixel_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UMASK = common dso_local global i32 0, align 4
@VMASK = common dso_local global i32 0, align 4
@YMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @pixel_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pixel_diff(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 16777215
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 16777215
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 16711680
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 16711680
  %25 = sub nsw i32 %22, %24
  %26 = call i32 @abs(i32 %25) #2
  %27 = ashr i32 %26, 16
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 65280
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 65280
  %32 = sub nsw i32 %29, %31
  %33 = call i32 @abs(i32 %32) #2
  %34 = ashr i32 %33, 8
  %35 = add nsw i32 %27, %34
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 255
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = sub nsw i32 %37, %39
  %41 = call i32 @abs(i32 %40) #2
  %42 = add nsw i32 %35, %41
  ret i32 %42
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
