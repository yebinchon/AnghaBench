; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidfileportinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidfileportinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.fileport_info_args = type { i32, i32*, i64, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@PROC_PIDFILEPORTVNODEPATHINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFILEPORTSOCKETINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFILEPORTPSHMINFO_SIZE = common dso_local global i64 0, align 8
@PROC_PIDFILEPORTPIPEINFO_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@PROC_INFO_CALL_PIDFILEPORTINFO = common dso_local global i32 0, align 4
@CHECK_SAME_USER = common dso_local global i32 0, align 4
@proc_fileport_info = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidfileportinfo(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.fileport_info_args, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @ENOTSUP, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
    i32 129, label %22
    i32 130, label %24
    i32 131, label %26
  ]

20:                                               ; preds = %6
  %21 = load i64, i64* @PROC_PIDFILEPORTVNODEPATHINFO_SIZE, align 8
  store i64 %21, i64* %16, align 8
  br label %30

22:                                               ; preds = %6
  %23 = load i64, i64* @PROC_PIDFILEPORTSOCKETINFO_SIZE, align 8
  store i64 %23, i64* %16, align 8
  br label %30

24:                                               ; preds = %6
  %25 = load i64, i64* @PROC_PIDFILEPORTPSHMINFO_SIZE, align 8
  store i64 %25, i64* %16, align 8
  br label %30

26:                                               ; preds = %6
  %27 = load i64, i64* @PROC_PIDFILEPORTPIPEINFO_SIZE, align 8
  store i64 %27, i64* %16, align 8
  br label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %7, align 4
  br label %76

30:                                               ; preds = %26, %24, %22, %20
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %7, align 4
  br label %76

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.TYPE_6__* @proc_find(i32 %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %14, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PROC_NULL, align 8
  %40 = icmp eq %struct.TYPE_6__* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ESRCH, align 4
  store i32 %42, i32* %15, align 4
  br label %74

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %45 = load i32, i32* @PROC_INFO_CALL_PIDFILEPORTINFO, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @CHECK_SAME_USER, align 4
  %48 = call i32 @proc_security_policy(%struct.TYPE_6__* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %71

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.fileport_info_args, %struct.fileport_info_args* %17, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = getelementptr inbounds %struct.fileport_info_args, %struct.fileport_info_args* %17, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.fileport_info_args, %struct.fileport_info_args* %17, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds %struct.fileport_info_args, %struct.fileport_info_args* %17, i32 0, i32 1
  store i32* %58, i32** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @proc_fileport_info, align 4
  %65 = call i64 @fileport_invoke(i32 %62, i32 %63, i32 %64, %struct.fileport_info_args* %17, i32* %15)
  %66 = load i64, i64* @KERN_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %68, %51
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %73 = call i32 @proc_rele(%struct.TYPE_6__* %72)
  br label %74

74:                                               ; preds = %71, %41
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %74, %34, %28
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_6__* @proc_find(i32) #1

declare dso_local i32 @proc_security_policy(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @fileport_invoke(i32, i32, i32, %struct.fileport_info_args*, i32*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
