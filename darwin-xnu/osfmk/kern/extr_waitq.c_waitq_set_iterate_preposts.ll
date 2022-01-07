; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_iterate_preposts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_iterate_preposts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i32 }
%struct.wq_it_ctx = type { i8*, i8*, i32 }

@WQ_ITERATE_INVALID = common dso_local global i32 0, align 4
@wqset_iterate_prepost_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_set_iterate_preposts(%struct.waitq_set* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.waitq_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wq_it_ctx, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %8, i32 0, i32 0
  %10 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %11 = bitcast %struct.waitq_set* %10 to i8*
  store i8* %11, i8** %9, align 8
  %12 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %8, i32 0, i32 1
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %8, i32 0, i32 2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %20 = icmp ne %struct.waitq_set* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %18
  %24 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %25 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %24, i32 0, i32 0
  %26 = call i32 @waitq_held(i32* %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %29 = bitcast %struct.wq_it_ctx* %8 to i8*
  %30 = load i32, i32* @wqset_iterate_prepost_cb, align 4
  %31 = call i32 @wq_prepost_foreach_locked(%struct.waitq_set* %28, i8* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_held(i32*) #1

declare dso_local i32 @wq_prepost_foreach_locked(%struct.waitq_set*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
