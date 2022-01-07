; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_kqueue_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_kqueue_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guarded_kqueue_np_args = type { i32, i32 }
%struct.gfp_crarg = type { i32, i64 }

@GUARD_REQUIRED = common dso_local global i32 0, align 4
@GUARD_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@guarded_fileproc_alloc_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guarded_kqueue_np(i32 %0, %struct.guarded_kqueue_np_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.guarded_kqueue_np_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfp_crarg, align 8
  store i32 %0, i32* %5, align 4
  store %struct.guarded_kqueue_np_args* %1, %struct.guarded_kqueue_np_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.guarded_kqueue_np_args*, %struct.guarded_kqueue_np_args** %6, align 8
  %11 = getelementptr inbounds %struct.guarded_kqueue_np_args, %struct.guarded_kqueue_np_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GUARD_REQUIRED, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @GUARD_REQUIRED, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.guarded_kqueue_np_args*, %struct.guarded_kqueue_np_args** %6, align 8
  %19 = getelementptr inbounds %struct.guarded_kqueue_np_args, %struct.guarded_kqueue_np_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GUARD_ALL, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 0
  %29 = load %struct.guarded_kqueue_np_args*, %struct.guarded_kqueue_np_args** %6, align 8
  %30 = getelementptr inbounds %struct.guarded_kqueue_np_args, %struct.guarded_kqueue_np_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 8
  %32 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.guarded_kqueue_np_args*, %struct.guarded_kqueue_np_args** %6, align 8
  %34 = getelementptr inbounds %struct.guarded_kqueue_np_args, %struct.guarded_kqueue_np_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 1
  %37 = call i32 @copyin(i32 %35, i64* %36, i32 8)
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @guarded_fileproc_alloc_init, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @kqueue_body(i32 %48, i32 %49, %struct.gfp_crarg* %9, i32* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %45, %39, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @copyin(i32, i64*, i32) #1

declare dso_local i32 @kqueue_body(i32, i32, %struct.gfp_crarg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
