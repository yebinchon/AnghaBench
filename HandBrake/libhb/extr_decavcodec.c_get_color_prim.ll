; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_get_color_prim.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_get_color_prim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@HB_COLR_PRI_BT709 = common dso_local global i32 0, align 4
@HB_COLR_PRI_BT470M = common dso_local global i32 0, align 4
@HB_COLR_PRI_EBUTECH = common dso_local global i32 0, align 4
@HB_COLR_PRI_SMPTEC = common dso_local global i32 0, align 4
@HB_COLR_PRI_FILM = common dso_local global i32 0, align 4
@HB_COLR_PRI_SMPTE428 = common dso_local global i32 0, align 4
@HB_COLR_PRI_SMPTE431 = common dso_local global i32 0, align 4
@HB_COLR_PRI_SMPTE432 = common dso_local global i32 0, align 4
@HB_COLR_PRI_JEDEC_P22 = common dso_local global i32 0, align 4
@HB_COLR_PRI_BT2020 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @get_color_prim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_color_prim(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_6__* %5 to i64*
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store i32 %0, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %31 [
    i32 135, label %11
    i32 136, label %13
    i32 137, label %15
    i32 132, label %17
    i32 131, label %17
    i32 134, label %19
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
    i32 133, label %27
    i32 138, label %29
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @HB_COLR_PRI_BT709, align 4
  store i32 %12, i32* %4, align 4
  br label %57

13:                                               ; preds = %3
  %14 = load i32, i32* @HB_COLR_PRI_BT470M, align 4
  store i32 %14, i32* %4, align 4
  br label %57

15:                                               ; preds = %3
  %16 = load i32, i32* @HB_COLR_PRI_EBUTECH, align 4
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %3, %3
  %18 = load i32, i32* @HB_COLR_PRI_SMPTEC, align 4
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i32, i32* @HB_COLR_PRI_FILM, align 4
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load i32, i32* @HB_COLR_PRI_SMPTE428, align 4
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  %24 = load i32, i32* @HB_COLR_PRI_SMPTE431, align 4
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %3
  %26 = load i32, i32* @HB_COLR_PRI_SMPTE432, align 4
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %3
  %28 = load i32, i32* @HB_COLR_PRI_JEDEC_P22, align 4
  store i32 %28, i32* %4, align 4
  br label %57

29:                                               ; preds = %3
  %30 = load i32, i32* @HB_COLR_PRI_BT2020, align 4
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 1280
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 720
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 720
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 576
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %35, %31
  %48 = load i32, i32* @HB_COLR_PRI_BT709, align 4
  store i32 %48, i32* %4, align 4
  br label %57

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1080000
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @HB_COLR_PRI_EBUTECH, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @HB_COLR_PRI_SMPTEC, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %53, %47, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
