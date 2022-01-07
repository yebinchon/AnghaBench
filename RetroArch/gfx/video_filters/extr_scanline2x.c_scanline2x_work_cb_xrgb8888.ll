; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_scanline2x.c_scanline2x_work_cb_xrgb8888.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_scanline2x.c_scanline2x_work_cb_xrgb8888.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_thread_data = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @scanline2x_work_cb_xrgb8888 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scanline2x_work_cb_xrgb8888(i8* %0, i8* %1) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.softfilter_thread_data*
  store %struct.softfilter_thread_data* %22, %struct.softfilter_thread_data** %5, align 8
  %23 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %24 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %6, align 8
  %27 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %28 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %7, align 8
  %31 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %32 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 2
  store i32 %34, i32* %8, align 4
  %35 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %36 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 2
  store i32 %38, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %128, %2
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %42 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %131

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %115, %45
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %50 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %118

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = ashr i32 %59, 24
  %61 = and i32 %60, 255
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %13, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, 255
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %14, align 4
  %71 = ashr i32 %70, 1
  %72 = load i32, i32* %14, align 4
  %73 = ashr i32 %72, 2
  %74 = add nsw i32 %71, %73
  %75 = shl i32 %74, 24
  %76 = load i32, i32* %15, align 4
  %77 = ashr i32 %76, 1
  %78 = load i32, i32* %15, align 4
  %79 = ashr i32 %78, 2
  %80 = add nsw i32 %77, %79
  %81 = shl i32 %80, 16
  %82 = or i32 %75, %81
  %83 = load i32, i32* %16, align 4
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* %16, align 4
  %86 = ashr i32 %85, 2
  %87 = add nsw i32 %84, %86
  %88 = shl i32 %87, 8
  %89 = or i32 %82, %88
  %90 = load i32, i32* %17, align 4
  %91 = ashr i32 %90, 1
  %92 = load i32, i32* %17, align 4
  %93 = ashr i32 %92, 2
  %94 = add nsw i32 %91, %93
  %95 = or i32 %89, %94
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %13, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %18, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %18, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %106 = call i32 @memcpy(i32* %104, i32* %105, i32 8)
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %112 = call i32 @memcpy(i32* %110, i32* %111, i32 8)
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32* %114, i32** %12, align 8
  br label %115

115:                                              ; preds = %53
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %47

118:                                              ; preds = %47
  %119 = load i32, i32* %8, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = shl i32 %123, 1
  %125 = load i32*, i32** %7, align 8
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %7, align 8
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %11, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %39

131:                                              ; preds = %39
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
