; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_screenshot.c_take_screenshot_raw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_screenshot.c_take_screenshot_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32, i32, i32)* @take_screenshot_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @take_screenshot_raw(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i8* null, i8** %23, align 8
  %24 = call i32 @video_driver_cached_frame_get(i8** %23, i32* %21, i32* %22, i64* %20)
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %23, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %22, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %20, align 8
  %33 = mul i64 %31, %32
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %22, align 4
  %37 = load i64, i64* %20, align 8
  %38 = sub i64 0, %37
  %39 = trunc i64 %38 to i32
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @screenshot_dump(i8* %25, i8* %26, i32* %34, i32 %35, i32 %36, i32 %39, i32 0, i8* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %51

50:                                               ; preds = %9
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @video_driver_cached_frame_get(i8**, i32*, i32*, i64*) #1

declare dso_local i32 @screenshot_dump(i8*, i8*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
