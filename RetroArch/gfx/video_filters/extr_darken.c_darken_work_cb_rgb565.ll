; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_darken.c_darken_work_cb_rgb565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_darken.c_darken_work_cb_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_thread_data = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @darken_work_cb_rgb565 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darken_work_cb_rgb565(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.softfilter_thread_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.softfilter_thread_data*
  store %struct.softfilter_thread_data* %13, %struct.softfilter_thread_data** %5, align 8
  %14 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %15 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %19 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %23 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %26 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %53, %2
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 2
  %44 = and i32 %43, 14823
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %33

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %57 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 1
  %60 = load i32*, i32** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %6, align 8
  %63 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %64 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 1
  %67 = load i32*, i32** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %7, align 8
  br label %28

70:                                               ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
