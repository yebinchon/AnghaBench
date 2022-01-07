; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_iopolicysys_vfs_hfs_case_sensitivity.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_iopolicysys_vfs_hfs_case_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct._iopol_param_t = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"com.apple.private.iopol.case_sensitivity\00", align 1
@EPERM = common dso_local global i32 0, align 4
@P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i32, i32, i32, %struct._iopol_param_t*)* @iopolicysys_vfs_hfs_case_sensitivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopolicysys_vfs_hfs_case_sensitivity(%struct.proc* %0, i32 %1, i32 %2, i32 %3, %struct._iopol_param_t* %4) #0 {
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._iopol_param_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct._iopol_param_t* %4, %struct._iopol_param_t** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %15 [
    i32 130, label %14
  ]

14:                                               ; preds = %5
  br label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %11, align 4
  br label %71

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 131
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %23 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %20, %20
  br label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %11, align 4
  br label %71

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %68 [
    i32 131, label %28
    i32 132, label %57
  ]

28:                                               ; preds = %26
  %29 = call i32 (...) @kauth_cred_get()
  %30 = call i32 @kauth_cred_issuser(i32 %29)
  %31 = icmp eq i32 0, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %12, align 4
  %34 = call i32 (...) @current_task()
  %35 = call i32 @IOTaskHasEntitlement(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EPERM, align 4
  store i32 %39, i32* %11, align 4
  br label %71

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %54 [
    i32 129, label %43
    i32 128, label %49
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 0
  %48 = call i32 @OSBitAndAtomic16(i32 %45, i32* %47)
  br label %56

49:                                               ; preds = %41
  %50 = load i32, i32* @P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY, align 4
  %51 = load %struct.proc*, %struct.proc** %6, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 0
  %53 = call i32 @OSBitOrAtomic16(i32 %50, i32* %52)
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %11, align 4
  br label %71

56:                                               ; preds = %49, %43
  br label %70

57:                                               ; preds = %26
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 128, i32 129
  %66 = load %struct._iopol_param_t*, %struct._iopol_param_t** %10, align 8
  %67 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %70

68:                                               ; preds = %26
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %57, %56
  br label %71

71:                                               ; preds = %70, %54, %38, %23, %15
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @IOTaskHasEntitlement(i32, i8*) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @OSBitAndAtomic16(i32, i32*) #1

declare dso_local i32 @OSBitOrAtomic16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
