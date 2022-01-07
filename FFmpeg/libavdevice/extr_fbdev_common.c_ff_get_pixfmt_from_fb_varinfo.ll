; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_fbdev_common.c_ff_get_pixfmt_from_fb_varinfo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_fbdev_common.c_ff_get_pixfmt_from_fb_varinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rgb_pixfmt_map_entry = type { i64, i64, i64, i64, i32 }
%struct.fb_var_screeninfo = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@rgb_pixfmt_map = common dso_local global %struct.rgb_pixfmt_map_entry* null, align 8
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_pixfmt_from_fb_varinfo(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rgb_pixfmt_map_entry*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.rgb_pixfmt_map_entry*, %struct.rgb_pixfmt_map_entry** @rgb_pixfmt_map, align 8
  %9 = call i32 @FF_ARRAY_ELEMS(%struct.rgb_pixfmt_map_entry* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %6
  %12 = load %struct.rgb_pixfmt_map_entry*, %struct.rgb_pixfmt_map_entry** @rgb_pixfmt_map, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rgb_pixfmt_map_entry, %struct.rgb_pixfmt_map_entry* %12, i64 %14
  store %struct.rgb_pixfmt_map_entry* %15, %struct.rgb_pixfmt_map_entry** %5, align 8
  %16 = load %struct.rgb_pixfmt_map_entry*, %struct.rgb_pixfmt_map_entry** %5, align 8
  %17 = getelementptr inbounds %struct.rgb_pixfmt_map_entry, %struct.rgb_pixfmt_map_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %11
  %24 = load %struct.rgb_pixfmt_map_entry*, %struct.rgb_pixfmt_map_entry** %5, align 8
  %25 = getelementptr inbounds %struct.rgb_pixfmt_map_entry, %struct.rgb_pixfmt_map_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %23
  %33 = load %struct.rgb_pixfmt_map_entry*, %struct.rgb_pixfmt_map_entry** %5, align 8
  %34 = getelementptr inbounds %struct.rgb_pixfmt_map_entry, %struct.rgb_pixfmt_map_entry* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load %struct.rgb_pixfmt_map_entry*, %struct.rgb_pixfmt_map_entry** %5, align 8
  %43 = getelementptr inbounds %struct.rgb_pixfmt_map_entry, %struct.rgb_pixfmt_map_entry* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.rgb_pixfmt_map_entry*, %struct.rgb_pixfmt_map_entry** %5, align 8
  %52 = getelementptr inbounds %struct.rgb_pixfmt_map_entry, %struct.rgb_pixfmt_map_entry* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %2, align 4
  br label %60

54:                                               ; preds = %41, %32, %23, %11
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %6

58:                                               ; preds = %6
  %59 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.rgb_pixfmt_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
