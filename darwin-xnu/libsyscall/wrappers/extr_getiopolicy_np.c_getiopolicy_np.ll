; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_getiopolicy_np.c_getiopolicy_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_getiopolicy_np.c_getiopolicy_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._iopol_param_t = type { i32, i32, i32 }

@IOPOL_TYPE_DISK = common dso_local global i32 0, align 4
@IOPOL_TYPE_VFS_ATIME_UPDATES = common dso_local global i32 0, align 4
@IOPOL_SCOPE_PROCESS = common dso_local global i32 0, align 4
@IOPOL_SCOPE_THREAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IOPOL_CMD_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getiopolicy_np(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._iopol_param_t, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IOPOL_TYPE_DISK, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IOPOL_TYPE_VFS_ATIME_UPDATES, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IOPOL_SCOPE_PROCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IOPOL_SCOPE_THREAD, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %11
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %39

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IOPOL_CMD_GET, align 4
  %31 = call i32 @__iopolicysys(i32 %30, %struct._iopol_param_t* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %39

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %34, %23
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @__iopolicysys(i32, %struct._iopol_param_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
