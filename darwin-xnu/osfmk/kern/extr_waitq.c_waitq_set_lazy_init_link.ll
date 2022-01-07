; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_lazy_init_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_lazy_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i64 }
%struct.waitq_link = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.waitq_set* }

@WQSET_NOT_LINKED = common dso_local global i64 0, align 8
@WQL_WQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't allocate link object for waitq set: %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_set_lazy_init_link(%struct.waitq_set* %0) #0 {
  %2 = alloca %struct.waitq_set*, align 8
  %3 = alloca %struct.waitq_link*, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %2, align 8
  %4 = call i64 (...) @get_preemption_level()
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = call i32 (...) @current_thread()
  %8 = call i64 @waitq_wait_possible(i32 %7)
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %15 = call i32 @waitq_set_lock(%struct.waitq_set* %14)
  %16 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %17 = call i64 @waitq_set_should_lazy_init_link(%struct.waitq_set* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %21 = call i32 @waitq_set_unlock(%struct.waitq_set* %20)
  br label %76

22:                                               ; preds = %10
  %23 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %24 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WQSET_NOT_LINKED, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %31 = call i32 @waitq_set_unlock(%struct.waitq_set* %30)
  %32 = load i32, i32* @WQL_WQS, align 4
  %33 = call %struct.waitq_link* @wql_alloc_link(i32 %32)
  store %struct.waitq_link* %33, %struct.waitq_link** %3, align 8
  %34 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %35 = icmp ne %struct.waitq_link* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %38 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.waitq_set* %37)
  br label %39

39:                                               ; preds = %36, %22
  %40 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %41 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %42 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.waitq_set* %40, %struct.waitq_set** %43, align 8
  %44 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %45 = call i32 @waitq_set_lock(%struct.waitq_set* %44)
  %46 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %47 = call i64 @waitq_set_should_lazy_init_link(%struct.waitq_set* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %51 = call i32 @wql_mkvalid(%struct.waitq_link* %50)
  %52 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %53 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %57 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %49, %39
  %59 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %60 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %66 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WQSET_NOT_LINKED, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %73 = call i32 @waitq_set_unlock(%struct.waitq_set* %72)
  %74 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %75 = call i32 @wql_put_link(%struct.waitq_link* %74)
  br label %76

76:                                               ; preds = %58, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i64 @waitq_wait_possible(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i64 @waitq_set_should_lazy_init_link(%struct.waitq_set*) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

declare dso_local %struct.waitq_link* @wql_alloc_link(i32) #1

declare dso_local i32 @panic(i8*, %struct.waitq_set*) #1

declare dso_local i32 @wql_mkvalid(%struct.waitq_link*) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
