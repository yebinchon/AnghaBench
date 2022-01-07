; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_render_line_unrolled.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_render_line_unrolled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_vorbis_floor1_inverse_db_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i64, i32, i32, float*)* @render_line_unrolled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_line_unrolled(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, float* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store float* %6, float** %14, align 8
  %16 = load i32, i32* %13, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %8, align 8
  %22 = sub nsw i64 %21, %20
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load float*, float** %14, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds float, float* %25, i64 %26
  store float* %27, float** %14, align 8
  br label %28

28:                                               ; preds = %58, %7
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %8, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %15, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load float*, float** @ff_vorbis_floor1_inverse_db_table, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @av_clip_uint8(i32 %50)
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float*, float** %14, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %8, align 8
  %57 = getelementptr inbounds float, float* %54, i64 %55
  store float %53, float* %57, align 4
  br label %58

58:                                               ; preds = %38, %32
  %59 = load float*, float** @ff_vorbis_floor1_inverse_db_table, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @av_clip_uint8(i32 %60)
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = load float*, float** %14, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds float, float* %64, i64 %65
  store float %63, float* %66, align 4
  br label %28

67:                                               ; preds = %28
  %68 = load i64, i64* %8, align 8
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load float*, float** @ff_vorbis_floor1_inverse_db_table, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @av_clip_uint8(i32 %83)
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load float*, float** %14, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds float, float* %87, i64 %88
  store float %86, float* %89, align 4
  br label %90

90:                                               ; preds = %81, %67
  ret void
}

declare dso_local i64 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
