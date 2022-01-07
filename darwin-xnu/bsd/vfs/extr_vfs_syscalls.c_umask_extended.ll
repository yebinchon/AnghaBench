; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_umask_extended.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_umask_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umask_extended_args = type { i64, i32 }

@KAUTH_FILESEC_NONE = common dso_local global i64 0, align 8
@USER_ADDR_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umask_extended(i32 %0, %struct.umask_extended_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.umask_extended_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.umask_extended_args* %1, %struct.umask_extended_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.umask_extended_args*, %struct.umask_extended_args** %6, align 8
  %12 = getelementptr inbounds %struct.umask_extended_args, %struct.umask_extended_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USER_ADDR_NULL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.umask_extended_args*, %struct.umask_extended_args** %6, align 8
  %18 = getelementptr inbounds %struct.umask_extended_args, %struct.umask_extended_args* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kauth_copyinfilesec(i64 %19, i64* %9)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %16
  br label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.umask_extended_args*, %struct.umask_extended_args** %6, align 8
  %30 = getelementptr inbounds %struct.umask_extended_args, %struct.umask_extended_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @umask1(i32 %28, i32 %31, i64 %32, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @kauth_filesec_free(i64 %39)
  br label %41

41:                                               ; preds = %38, %27
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @kauth_copyinfilesec(i64, i64*) #1

declare dso_local i32 @umask1(i32, i32, i64, i32*) #1

declare dso_local i32 @kauth_filesec_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
