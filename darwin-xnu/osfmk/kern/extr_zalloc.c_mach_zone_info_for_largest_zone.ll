; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_mach_zone_info_for_largest_zone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_mach_zone_info_for_largest_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_HOST = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_zone_info_for_largest_zone(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @HOST_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @KERN_INVALID_HOST, align 4
  store i32 %12, i32* %4, align 4
  br label %31

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %4, align 4
  br label %31

21:                                               ; preds = %16
  %22 = call i32 (...) @zone_find_largest()
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @get_zone_info(i32 %22, i32* %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %27, %19, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @get_zone_info(i32, i32*, i32*) #1

declare dso_local i32 @zone_find_largest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
