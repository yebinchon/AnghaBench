; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_listpids.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_listpids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROC_ALL_PIDS = common dso_local global i64 0, align 8
@PROC_PPID_ONLY = common dso_local global i64 0, align 8
@PROC_INFO_CALL_LISTPIDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_listpids(i64 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PROC_ALL_PIDS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PROC_PPID_ONLY, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14, %4
  %19 = load i32, i32* @PROC_INFO_CALL_LISTPIDS, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @__proc_info(i32 %19, i64 %20, i64 %21, i32 0, i8* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %32

27:                                               ; preds = %18
  br label %30

28:                                               ; preds = %14
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @__proc_info(i32, i64, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
