; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_psp2.c_co_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_psp2.c_co_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@co_swap = common dso_local global i32 0, align 4
@co_active_handle = common dso_local global i32* null, align 8
@co_active_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @co_create(i32 %0, void ()* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store void ()* %1, void ()** %4, align 8
  store i64* null, i64** %5, align 8
  %7 = load i32, i32* @co_swap, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @co_init()
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32*, i32** @co_active_handle, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32* @co_active_buffer, i32** @co_active_handle, align 8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 256
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, -16
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %5, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load i64*, i64** %5, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %6, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = ptrtoint i64* %31 to i64
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 8
  store i64 %32, i64* %34, align 8
  %35 = load void ()*, void ()** %4, align 8
  %36 = ptrtoint void ()* %35 to i64
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 9
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %24, %15
  %40 = load i64*, i64** %5, align 8
  ret i64* %40
}

declare dso_local i32 @co_init(...) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
