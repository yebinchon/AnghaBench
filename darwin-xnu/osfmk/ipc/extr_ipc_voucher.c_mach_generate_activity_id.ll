; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_mach_generate_activity_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_mach_generate_activity_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mach_generate_activity_id_args = type { i64, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@MACH_ACTIVITY_ID_COUNT_MAX = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_generate_activity_id(%struct.mach_generate_activity_id_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mach_generate_activity_id_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mach_generate_activity_id_args* %0, %struct.mach_generate_activity_id_args** %3, align 8
  %6 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.mach_generate_activity_id_args*, %struct.mach_generate_activity_id_args** %3, align 8
  %8 = getelementptr inbounds %struct.mach_generate_activity_id_args, %struct.mach_generate_activity_id_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.mach_generate_activity_id_args*, %struct.mach_generate_activity_id_args** %3, align 8
  %13 = getelementptr inbounds %struct.mach_generate_activity_id_args, %struct.mach_generate_activity_id_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MACH_ACTIVITY_ID_COUNT_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %11
  %20 = load %struct.mach_generate_activity_id_args*, %struct.mach_generate_activity_id_args** %3, align 8
  %21 = getelementptr inbounds %struct.mach_generate_activity_id_args, %struct.mach_generate_activity_id_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @generate_activity_id(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.mach_generate_activity_id_args*, %struct.mach_generate_activity_id_args** %3, align 8
  %25 = getelementptr inbounds %struct.mach_generate_activity_id_args, %struct.mach_generate_activity_id_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @copyout(i32* %4, i32 %26, i32 4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @generate_activity_id(i64) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
