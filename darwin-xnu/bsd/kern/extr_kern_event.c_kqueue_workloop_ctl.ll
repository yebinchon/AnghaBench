; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_workloop_ctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_workloop_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue_workloop_ctl_args = type { i32, i32, i32, i32 }
%struct.kqueue_workloop_params = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kqueue_workloop_ctl(i32 %0, %struct.kqueue_workloop_ctl_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kqueue_workloop_ctl_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kqueue_workloop_params, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.kqueue_workloop_ctl_args* %1, %struct.kqueue_workloop_ctl_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast %struct.kqueue_workloop_params* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.kqueue_workloop_ctl_args*, %struct.kqueue_workloop_ctl_args** %6, align 8
  %13 = getelementptr inbounds %struct.kqueue_workloop_ctl_args, %struct.kqueue_workloop_ctl_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.kqueue_workloop_ctl_args*, %struct.kqueue_workloop_ctl_args** %6, align 8
  %21 = getelementptr inbounds %struct.kqueue_workloop_ctl_args, %struct.kqueue_workloop_ctl_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @MIN(i32 8, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.kqueue_workloop_ctl_args*, %struct.kqueue_workloop_ctl_args** %6, align 8
  %25 = getelementptr inbounds %struct.kqueue_workloop_ctl_args, %struct.kqueue_workloop_ctl_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @copyin(i32 %26, %struct.kqueue_workloop_params* %8, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %52

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.kqueue_workloop_params, %struct.kqueue_workloop_params* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kqueue_workloop_ctl_args*, %struct.kqueue_workloop_ctl_args** %6, align 8
  %37 = getelementptr inbounds %struct.kqueue_workloop_ctl_args, %struct.kqueue_workloop_ctl_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.kqueue_workloop_ctl_args*, %struct.kqueue_workloop_ctl_args** %6, align 8
  %45 = getelementptr inbounds %struct.kqueue_workloop_ctl_args, %struct.kqueue_workloop_ctl_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kqueue_workloop_ctl_args*, %struct.kqueue_workloop_ctl_args** %6, align 8
  %48 = getelementptr inbounds %struct.kqueue_workloop_ctl_args, %struct.kqueue_workloop_ctl_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @kqueue_workloop_ctl_internal(i32 %43, i32 %46, i32 %49, %struct.kqueue_workloop_params* %8, i32* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %40, %31, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @MIN(i32, i32) #2

declare dso_local i32 @copyin(i32, %struct.kqueue_workloop_params*, i64) #2

declare dso_local i32 @kqueue_workloop_ctl_internal(i32, i32, i32, %struct.kqueue_workloop_params*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
