; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_convert_outline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_convert_outline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@segments_count = common dso_local global i64 0, align 8
@coords_count = common dso_local global i64 0, align 8
@SEGMENTS_COUNT_MAX = common dso_local global i64 0, align 8
@COORDS_COUNT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i16*, i16, i16)* @convert_outline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_outline(i32* %0, i8* %1, i16* %2, i16 signext %3, i16 signext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i16* %2, i16** %8, align 8
  store i16 %3, i16* %9, align 2
  store i16 %4, i16* %10, align 2
  store i64 0, i64* @segments_count, align 8
  store i64 0, i64* @coords_count, align 8
  store i16 0, i16* %11, align 2
  br label %13

13:                                               ; preds = %41, %5
  %14 = load i16, i16* %9, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load i16*, i16** %8, align 8
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %20, 1
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %12, align 2
  %23 = load i32*, i32** %6, align 8
  %24 = load i16, i16* %11, align 2
  %25 = sext i16 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i8*, i8** %7, align 8
  %29 = load i16, i16* %11, align 2
  %30 = sext i16 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i16, i16* %12, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16, i16* %11, align 2
  %36 = sext i16 %35 to i32
  %37 = sub nsw i32 %34, %36
  %38 = trunc i32 %37 to i16
  %39 = call i32 @convert_contour(i32* %27, i8* %32, i16 signext %38)
  %40 = load i16, i16* %12, align 2
  store i16 %40, i16* %11, align 2
  br label %41

41:                                               ; preds = %17
  %42 = load i16*, i16** %8, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %43, i16** %8, align 8
  %44 = load i16, i16* %9, align 2
  %45 = add i16 %44, -1
  store i16 %45, i16* %9, align 2
  br label %13

46:                                               ; preds = %13
  %47 = load i16, i16* %11, align 2
  %48 = sext i16 %47 to i32
  %49 = load i16, i16* %10, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* @segments_count, align 8
  %55 = load i64, i64* @SEGMENTS_COUNT_MAX, align 8
  %56 = icmp sle i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i64, i64* @coords_count, align 8
  %60 = load i64, i64* @COORDS_COUNT_MAX, align 8
  %61 = icmp sle i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  ret void
}

declare dso_local i32 @convert_contour(i32*, i8*, i16 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
