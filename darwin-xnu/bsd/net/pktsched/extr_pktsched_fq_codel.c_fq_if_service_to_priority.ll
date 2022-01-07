; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_service_to_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_service_to_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FQS_DRIVER_MANAGED = common dso_local global i32 0, align 4
@FQ_IF_BK_INDEX = common dso_local global i32 0, align 4
@FQ_IF_BE_INDEX = common dso_local global i32 0, align 4
@FQ_IF_VI_INDEX = common dso_local global i32 0, align 4
@FQ_IF_VO_INDEX = common dso_local global i32 0, align 4
@FQ_IF_BK_SYS_INDEX = common dso_local global i32 0, align 4
@FQ_IF_RD_INDEX = common dso_local global i32 0, align 4
@FQ_IF_OAM_INDEX = common dso_local global i32 0, align 4
@FQ_IF_AV_INDEX = common dso_local global i32 0, align 4
@FQ_IF_RV_INDEX = common dso_local global i32 0, align 4
@FQ_IF_SIG_INDEX = common dso_local global i32 0, align 4
@FQ_IF_CTL_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @fq_if_service_to_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_if_service_to_priority(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FQS_DRIVER_MANAGED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %23 [
    i32 135, label %15
    i32 136, label %15
    i32 137, label %17
    i32 132, label %17
    i32 133, label %17
    i32 138, label %19
    i32 131, label %19
    i32 129, label %19
    i32 130, label %19
    i32 128, label %21
    i32 134, label %21
  ]

15:                                               ; preds = %13, %13
  %16 = load i32, i32* @FQ_IF_BK_INDEX, align 4
  store i32 %16, i32* %6, align 4
  br label %25

17:                                               ; preds = %13, %13, %13
  %18 = load i32, i32* @FQ_IF_BE_INDEX, align 4
  store i32 %18, i32* %6, align 4
  br label %25

19:                                               ; preds = %13, %13, %13, %13
  %20 = load i32, i32* @FQ_IF_VI_INDEX, align 4
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %13, %13
  %22 = load i32, i32* @FQ_IF_VO_INDEX, align 4
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @FQ_IF_BE_INDEX, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %21, %19, %17, %15
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %51 [
    i32 135, label %29
    i32 136, label %31
    i32 137, label %33
    i32 132, label %35
    i32 133, label %37
    i32 138, label %39
    i32 131, label %41
    i32 129, label %43
    i32 130, label %45
    i32 128, label %47
    i32 134, label %49
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @FQ_IF_BK_SYS_INDEX, align 4
  store i32 %30, i32* %6, align 4
  br label %53

31:                                               ; preds = %27
  %32 = load i32, i32* @FQ_IF_BK_INDEX, align 4
  store i32 %32, i32* %6, align 4
  br label %53

33:                                               ; preds = %27
  %34 = load i32, i32* @FQ_IF_BE_INDEX, align 4
  store i32 %34, i32* %6, align 4
  br label %53

35:                                               ; preds = %27
  %36 = load i32, i32* @FQ_IF_RD_INDEX, align 4
  store i32 %36, i32* %6, align 4
  br label %53

37:                                               ; preds = %27
  %38 = load i32, i32* @FQ_IF_OAM_INDEX, align 4
  store i32 %38, i32* %6, align 4
  br label %53

39:                                               ; preds = %27
  %40 = load i32, i32* @FQ_IF_AV_INDEX, align 4
  store i32 %40, i32* %6, align 4
  br label %53

41:                                               ; preds = %27
  %42 = load i32, i32* @FQ_IF_RV_INDEX, align 4
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %27
  %44 = load i32, i32* @FQ_IF_VI_INDEX, align 4
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %27
  %46 = load i32, i32* @FQ_IF_SIG_INDEX, align 4
  store i32 %46, i32* %6, align 4
  br label %53

47:                                               ; preds = %27
  %48 = load i32, i32* @FQ_IF_VO_INDEX, align 4
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %27
  %50 = load i32, i32* @FQ_IF_CTL_INDEX, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %27
  %52 = load i32, i32* @FQ_IF_BE_INDEX, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
