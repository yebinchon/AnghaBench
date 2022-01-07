; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_screenshot.c_take_screenshot_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_screenshot.c_take_screenshot_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_viewport = type { i32, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32, i32)* @take_screenshot_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @take_screenshot_viewport(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.video_viewport, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %18)
  %27 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %8
  store i32 0, i32* %9, align 4
  br label %79

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = mul nsw i32 %40, 3
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %19, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %79

47:                                               ; preds = %35
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @video_driver_read_viewport(i32* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %19, align 8
  %54 = call i32 @free(i32* %53)
  store i32 0, i32* %9, align 4
  br label %79

55:                                               ; preds = %47
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 3
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @screenshot_dump(i8* %56, i8* %57, i32* %58, i32 %60, i32 %62, i32 %65, i32 1, i32* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %55
  %76 = load i32*, i32** %19, align 8
  %77 = call i32 @free(i32* %76)
  store i32 0, i32* %9, align 4
  br label %79

78:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %75, %52, %46, %34
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @video_driver_read_viewport(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @screenshot_dump(i8*, i8*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
