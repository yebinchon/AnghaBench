; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_scanline2x.c_scanline2x_work_cb_rgb565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_scanline2x.c_scanline2x_work_cb_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_thread_data = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @scanline2x_work_cb_rgb565 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scanline2x_work_cb_rgb565(i8* %0, i8* %1) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.softfilter_thread_data*
  store %struct.softfilter_thread_data* %21, %struct.softfilter_thread_data** %5, align 8
  %22 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %23 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %6, align 8
  %26 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %27 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %7, align 8
  %30 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %31 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %35 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %117, %2
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %41 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  store i32* %45, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %104, %44
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %49 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %107

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = ashr i32 %58, 11
  %60 = and i32 %59, 31
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = ashr i32 %61, 6
  %63 = and i32 %62, 31
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 31
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %14, align 4
  %67 = ashr i32 %66, 1
  %68 = load i32, i32* %14, align 4
  %69 = ashr i32 %68, 2
  %70 = add nsw i32 %67, %69
  %71 = shl i32 %70, 11
  %72 = load i32, i32* %15, align 4
  %73 = ashr i32 %72, 1
  %74 = load i32, i32* %15, align 4
  %75 = ashr i32 %74, 2
  %76 = add nsw i32 %73, %75
  %77 = shl i32 %76, 6
  %78 = or i32 %71, %77
  %79 = load i32, i32* %16, align 4
  %80 = ashr i32 %79, 1
  %81 = load i32, i32* %16, align 4
  %82 = ashr i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = or i32 %78, %83
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %13, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %17, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %17, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %95 = call i32 @memcpy(i32* %93, i32* %94, i32 8)
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %101 = call i32 @memcpy(i32* %99, i32* %100, i32 8)
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32* %103, i32** %12, align 8
  br label %104

104:                                              ; preds = %52
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %46

107:                                              ; preds = %46
  %108 = load i32, i32* %8, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = shl i32 %112, 1
  %114 = load i32*, i32** %7, align 8
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %7, align 8
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %38

120:                                              ; preds = %38
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
