; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_iterate_sets.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_iterate_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.wq_it_ctx = type { i8*, i8*, i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@LINK_WALK_ONE_LEVEL = common dso_local global i32 0, align 4
@WQL_WQS = common dso_local global i32 0, align 4
@waitq_iterate_sets_cb = common dso_local global i32 0, align 4
@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@WQ_ITERATE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_iterate_sets(%struct.waitq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wq_it_ctx, align 8
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %9, i32 0, i32 0
  %11 = load %struct.waitq*, %struct.waitq** %5, align 8
  %12 = bitcast %struct.waitq* %11 to i8*
  store i8* %12, i8** %10, align 8
  %13 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %9, i32 0, i32 1
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %9, i32 0, i32 2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.waitq*, %struct.waitq** %5, align 8
  %21 = icmp ne %struct.waitq* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %19
  %25 = load i32, i32* @LINK_WALK_ONE_LEVEL, align 4
  %26 = load %struct.waitq*, %struct.waitq** %5, align 8
  %27 = load %struct.waitq*, %struct.waitq** %5, align 8
  %28 = getelementptr inbounds %struct.waitq, %struct.waitq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WQL_WQS, align 4
  %31 = bitcast %struct.wq_it_ctx* %9 to i8*
  %32 = load i32, i32* @waitq_iterate_sets_cb, align 4
  %33 = call i32 @walk_waitq_links(i32 %25, %struct.waitq* %26, i32 %29, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @WQ_ITERATE_SUCCESS, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @walk_waitq_links(i32, %struct.waitq*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
