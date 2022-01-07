; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hue.c_create_luma_lut.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hue.c_create_luma_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @create_luma_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_luma_lut(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load float, float* %6, align 8
  store float %7, float* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to double
  %14 = load float, float* %3, align 4
  %15 = fpext float %14 to double
  %16 = fmul double %15, 2.550000e+01
  %17 = fadd double %13, %16
  %18 = fptosi double %17 to i32
  %19 = call i32 @av_clip_uint8(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 65536
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sitofp i32 %34 to double
  %36 = load float, float* %3, align 4
  %37 = fpext float %36 to double
  %38 = fmul double %37, 1.024000e+02
  %39 = fadd double %35, %38
  %40 = fptosi double %39 to i32
  %41 = call i32 @av_clip_uintp2(i32 %40, i32 10)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %30

51:                                               ; preds = %30
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
