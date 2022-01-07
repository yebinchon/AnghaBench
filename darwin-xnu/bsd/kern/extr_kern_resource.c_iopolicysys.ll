; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_iopolicysys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_iopolicysys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.iopolicysys_args = type { i64, i32 }
%struct._iopol_param_t = type { i32, i32, i32 }

@EIDRM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IOPOL_CMD_GET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iopolicysys(%struct.proc* %0, %struct.iopolicysys_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.iopolicysys_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._iopol_param_t, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.iopolicysys_args* %1, %struct.iopolicysys_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.iopolicysys_args*, %struct.iopolicysys_args** %5, align 8
  %10 = getelementptr inbounds %struct.iopolicysys_args, %struct.iopolicysys_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @copyin(i32 %11, %struct._iopol_param_t* %8, i32 12)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %85

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %66 [
    i32 130, label %18
    i32 128, label %38
    i32 129, label %52
  ]

18:                                               ; preds = %15
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = load %struct.iopolicysys_args*, %struct.iopolicysys_args** %5, align 8
  %21 = getelementptr inbounds %struct.iopolicysys_args, %struct.iopolicysys_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %8, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iopolicysys_disk(%struct.proc* %19, i64 %22, i32 %24, i32 %26, %struct._iopol_param_t* %8)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @EIDRM, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32*, i32** %6, align 8
  store i32 -2, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %18
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %85

37:                                               ; preds = %33
  br label %68

38:                                               ; preds = %15
  %39 = load %struct.proc*, %struct.proc** %4, align 8
  %40 = load %struct.iopolicysys_args*, %struct.iopolicysys_args** %5, align 8
  %41 = getelementptr inbounds %struct.iopolicysys_args, %struct.iopolicysys_args* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %8, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iopolicysys_vfs_hfs_case_sensitivity(%struct.proc* %39, i64 %42, i32 %44, i32 %46, %struct._iopol_param_t* %8)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %85

51:                                               ; preds = %38
  br label %68

52:                                               ; preds = %15
  %53 = load %struct.proc*, %struct.proc** %4, align 8
  %54 = load %struct.iopolicysys_args*, %struct.iopolicysys_args** %5, align 8
  %55 = getelementptr inbounds %struct.iopolicysys_args, %struct.iopolicysys_args* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %8, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @iopolicysys_vfs_atime_updates(%struct.proc* %53, i64 %56, i32 %58, i32 %60, %struct._iopol_param_t* %8)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %85

65:                                               ; preds = %52
  br label %68

66:                                               ; preds = %15
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %7, align 4
  br label %85

68:                                               ; preds = %65, %51, %37
  %69 = load %struct.iopolicysys_args*, %struct.iopolicysys_args** %5, align 8
  %70 = getelementptr inbounds %struct.iopolicysys_args, %struct.iopolicysys_args* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IOPOL_CMD_GET, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = ptrtoint %struct._iopol_param_t* %8 to i32
  %76 = load %struct.iopolicysys_args*, %struct.iopolicysys_args** %5, align 8
  %77 = getelementptr inbounds %struct.iopolicysys_args, %struct.iopolicysys_args* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @copyout(i32 %75, i32 %78, i32 12)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %85

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %82, %66, %64, %50, %36, %14
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @copyin(i32, %struct._iopol_param_t*, i32) #1

declare dso_local i32 @iopolicysys_disk(%struct.proc*, i64, i32, i32, %struct._iopol_param_t*) #1

declare dso_local i32 @iopolicysys_vfs_hfs_case_sensitivity(%struct.proc*, i64, i32, i32, %struct._iopol_param_t*) #1

declare dso_local i32 @iopolicysys_vfs_atime_updates(%struct.proc*, i64, i32, i32, %struct._iopol_param_t*) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
