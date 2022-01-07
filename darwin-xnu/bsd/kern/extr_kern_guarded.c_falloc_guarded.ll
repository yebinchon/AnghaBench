; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_falloc_guarded.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_falloc_guarded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.fileproc = type { i32 }
%struct.gfp_crarg = type { i64, i32 }

@GUARD_REQUIRED = common dso_local global i32 0, align 4
@GUARD_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@guarded_fileproc_alloc_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falloc_guarded(%struct.proc* %0, %struct.fileproc** %1, i32* %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.fileproc**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfp_crarg, align 8
  store %struct.proc* %0, %struct.proc** %8, align 8
  store %struct.fileproc** %1, %struct.fileproc*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* @GUARD_REQUIRED, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @GUARD_REQUIRED, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @GUARD_ALL, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i64*, i64** %12, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %20, %6
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %45

32:                                               ; preds = %26
  %33 = call i32 @bzero(%struct.gfp_crarg* %14, i32 16)
  %34 = load i64*, i64** %12, align 8
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %14, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %14, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load %struct.proc*, %struct.proc** %8, align 8
  %40 = load %struct.fileproc**, %struct.fileproc*** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @guarded_fileproc_alloc_init, align 4
  %44 = call i32 @falloc_withalloc(%struct.proc* %39, %struct.fileproc** %40, i32* %41, i32 %42, i32 %43, %struct.gfp_crarg* %14)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %32, %30
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @bzero(%struct.gfp_crarg*, i32) #1

declare dso_local i32 @falloc_withalloc(%struct.proc*, %struct.fileproc**, i32*, i32, i32, %struct.gfp_crarg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
