; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_get_color_matrix.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_get_color_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@HB_COLR_MAT_RGB = common dso_local global i32 0, align 4
@HB_COLR_MAT_BT709 = common dso_local global i32 0, align 4
@HB_COLR_MAT_FCC = common dso_local global i32 0, align 4
@HB_COLR_MAT_BT470BG = common dso_local global i32 0, align 4
@HB_COLR_MAT_SMPTE170M = common dso_local global i32 0, align 4
@HB_COLR_MAT_SMPTE240M = common dso_local global i32 0, align 4
@HB_COLR_MAT_YCGCO = common dso_local global i32 0, align 4
@HB_COLR_MAT_BT2020_NCL = common dso_local global i32 0, align 4
@HB_COLR_MAT_BT2020_CL = common dso_local global i32 0, align 4
@HB_COLR_MAT_CD_NCL = common dso_local global i32 0, align 4
@HB_COLR_MAT_CD_CL = common dso_local global i32 0, align 4
@HB_COLR_MAT_ICTCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @get_color_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_color_matrix(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_3__* %4 to i64*
  store i64 %1, i64* %6, align 4
  store i32 %0, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %32 [
    i32 131, label %8
    i32 136, label %10
    i32 133, label %12
    i32 137, label %14
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
    i32 138, label %22
    i32 139, label %24
    i32 134, label %26
    i32 135, label %28
    i32 132, label %30
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @HB_COLR_MAT_RGB, align 4
  store i32 %9, i32* %3, align 4
  br label %52

10:                                               ; preds = %2
  %11 = load i32, i32* @HB_COLR_MAT_BT709, align 4
  store i32 %11, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = load i32, i32* @HB_COLR_MAT_FCC, align 4
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* @HB_COLR_MAT_BT470BG, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* @HB_COLR_MAT_SMPTE170M, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* @HB_COLR_MAT_SMPTE240M, align 4
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load i32, i32* @HB_COLR_MAT_YCGCO, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load i32, i32* @HB_COLR_MAT_BT2020_NCL, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load i32, i32* @HB_COLR_MAT_BT2020_CL, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %2
  %27 = load i32, i32* @HB_COLR_MAT_CD_NCL, align 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load i32, i32* @HB_COLR_MAT_CD_CL, align 4
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %2
  %31 = load i32, i32* @HB_COLR_MAT_ICTCP, align 4
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 1280
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 720
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 720
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 576
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %36, %32
  %49 = load i32, i32* @HB_COLR_MAT_BT709, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %44, %40
  %51 = load i32, i32* @HB_COLR_MAT_SMPTE170M, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
