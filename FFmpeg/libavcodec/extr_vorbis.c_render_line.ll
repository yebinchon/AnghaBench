; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_render_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis.c_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_vorbis_floor1_inverse_db_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, float*)* @render_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_line(i32 %0, i32 %1, i32 %2, i32 %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @FFABS(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 -1, i32 1
  store i32 %30, i32* %14, align 4
  %31 = load float*, float** @ff_vorbis_floor1_inverse_db_table, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @av_clip_uint8(i32 %32)
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  store float %35, float* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %5
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load float*, float** %10, align 8
  %52 = call i32 @render_line_unrolled(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, float* %51)
  br label %99

53:                                               ; preds = %5
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @FFABS(i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %88, %53
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %67
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %18, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %81, %72
  %89 = load float*, float** @ff_vorbis_floor1_inverse_db_table, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i64 @av_clip_uint8(i32 %90)
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %10, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float %93, float* %97, align 4
  br label %67

98:                                               ; preds = %67
  br label %99

99:                                               ; preds = %98, %44
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i64 @av_clip_uint8(i32) #1

declare dso_local i32 @render_line_unrolled(i32, i32, i32, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
