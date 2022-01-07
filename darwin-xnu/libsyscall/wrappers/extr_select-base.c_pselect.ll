; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_select-base.c_pselect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_select-base.c_pselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@FD_SETSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pselect(i32 %0, i32* noalias %1, i32* noalias %2, i32* noalias %3, %struct.timespec* noalias %4, i32* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.timespec*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.timespec* %4, %struct.timespec** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @FD_SETSIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i64, i64* @EINVAL, align 8
  store i64 %19, i64* @errno, align 8
  store i32 -1, i32* %7, align 4
  br label %44

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load %struct.timespec*, %struct.timespec** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @__pselect_nocancel(i32 %21, i32* %22, i32* %23, i32* %24, %struct.timespec* %25, i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOSYS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.timespec*, %struct.timespec** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @_pselect_emulated(i32 %35, i32* %36, i32* %37, i32* %38, %struct.timespec* %39, i32* %40)
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %34, %30, %20
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @__pselect_nocancel(i32, i32*, i32*, i32*, %struct.timespec*, i32*) #1

declare dso_local i32 @_pselect_emulated(i32, i32*, i32*, i32*, %struct.timespec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
