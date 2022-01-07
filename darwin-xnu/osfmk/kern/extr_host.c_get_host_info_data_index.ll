; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_get_host_info_data_index.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_get_host_info_data_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@HOST_VM_INFO64_REV0_COUNT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@HOST_VM_INFO64_REV1_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO64_REV1 = common dso_local global i32 0, align 4
@HOST_VM_INFO64_REV0 = common dso_local global i32 0, align 4
@HOST_EXTMOD_INFO64_COUNT = common dso_local global i32 0, align 4
@HOST_EXTMOD_INFO64_REV0 = common dso_local global i32 0, align 4
@HOST_LOAD_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_LOAD_INFO_REV0 = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV0_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV2_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV2 = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV1_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV1 = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV0 = common dso_local global i32 0, align 4
@HOST_CPU_LOAD_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_CPU_LOAD_INFO_REV0 = common dso_local global i32 0, align 4
@TASK_POWER_INFO_COUNT = common dso_local global i32 0, align 4
@TASK_POWER_INFO_V2_COUNT = common dso_local global i32 0, align 4
@HOST_EXPIRED_TASK_INFO_REV1 = common dso_local global i32 0, align 4
@HOST_EXPIRED_TASK_INFO_REV0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @get_host_info_data_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_host_info_data_index(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %111 [
    i32 128, label %11
    i32 131, label %34
    i32 130, label %50
    i32 129, label %60
    i32 133, label %84
    i32 132, label %94
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 %15, i32* %16, align 4
  store i32 -1, i32* %5, align 4
  br label %114

17:                                               ; preds = %11
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HOST_VM_INFO64_REV0_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @KERN_FAILURE, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  store i32 -1, i32* %5, align 4
  br label %114

25:                                               ; preds = %17
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HOST_VM_INFO64_REV1_COUNT, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @HOST_VM_INFO64_REV1, align 4
  store i32 %31, i32* %5, align 4
  br label %114

32:                                               ; preds = %25
  %33 = load i32, i32* @HOST_VM_INFO64_REV0, align 4
  store i32 %33, i32* %5, align 4
  br label %114

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 -1, i32* %5, align 4
  br label %114

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HOST_EXTMOD_INFO64_COUNT, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @KERN_FAILURE, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  store i32 -1, i32* %5, align 4
  br label %114

48:                                               ; preds = %40
  %49 = load i32, i32* @HOST_EXTMOD_INFO64_REV0, align 4
  store i32 %49, i32* %5, align 4
  br label %114

50:                                               ; preds = %4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HOST_LOAD_INFO_COUNT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @KERN_FAILURE, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  store i32 -1, i32* %5, align 4
  br label %114

58:                                               ; preds = %50
  %59 = load i32, i32* @HOST_LOAD_INFO_REV0, align 4
  store i32 %59, i32* %5, align 4
  br label %114

60:                                               ; preds = %4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HOST_VM_INFO_REV0_COUNT, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @KERN_FAILURE, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  store i32 -1, i32* %5, align 4
  br label %114

68:                                               ; preds = %60
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HOST_VM_INFO_REV2_COUNT, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @HOST_VM_INFO_REV2, align 4
  store i32 %74, i32* %5, align 4
  br label %114

75:                                               ; preds = %68
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @HOST_VM_INFO_REV1_COUNT, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @HOST_VM_INFO_REV1, align 4
  store i32 %81, i32* %5, align 4
  br label %114

82:                                               ; preds = %75
  %83 = load i32, i32* @HOST_VM_INFO_REV0, align 4
  store i32 %83, i32* %5, align 4
  br label %114

84:                                               ; preds = %4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HOST_CPU_LOAD_INFO_COUNT, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @KERN_FAILURE, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  store i32 -1, i32* %5, align 4
  br label %114

92:                                               ; preds = %84
  %93 = load i32, i32* @HOST_CPU_LOAD_INFO_REV0, align 4
  store i32 %93, i32* %5, align 4
  br label %114

94:                                               ; preds = %4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TASK_POWER_INFO_COUNT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @KERN_FAILURE, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  store i32 -1, i32* %5, align 4
  br label %114

102:                                              ; preds = %94
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TASK_POWER_INFO_V2_COUNT, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @HOST_EXPIRED_TASK_INFO_REV1, align 4
  store i32 %108, i32* %5, align 4
  br label %114

109:                                              ; preds = %102
  %110 = load i32, i32* @HOST_EXPIRED_TASK_INFO_REV0, align 4
  store i32 %110, i32* %5, align 4
  br label %114

111:                                              ; preds = %4
  %112 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  store i32 -1, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %109, %107, %99, %92, %89, %82, %80, %73, %65, %58, %55, %48, %45, %37, %32, %30, %22, %14
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
