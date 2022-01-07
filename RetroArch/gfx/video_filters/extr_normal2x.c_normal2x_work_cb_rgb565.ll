; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_normal2x.c_normal2x_work_cb_rgb565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_normal2x.c_normal2x_work_cb_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_thread_data = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @normal2x_work_cb_rgb565 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normal2x_work_cb_rgb565(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.softfilter_thread_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.softfilter_thread_data*
  store %struct.softfilter_thread_data* %16, %struct.softfilter_thread_data** %5, align 8
  %17 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %18 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %22 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %26 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %30 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %81, %2
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %36 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  store i32* %40, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %68, %39
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %44 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %59 = call i32 @memcpy(i32* %57, i32* %58, i32 8)
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %65 = call i32 @memcpy(i32* %63, i32* %64, i32 8)
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %12, align 8
  br label %68

68:                                               ; preds = %47
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %41

71:                                               ; preds = %41
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 1
  %78 = load i32*, i32** %7, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %7, align 8
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %33

84:                                               ; preds = %33
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
