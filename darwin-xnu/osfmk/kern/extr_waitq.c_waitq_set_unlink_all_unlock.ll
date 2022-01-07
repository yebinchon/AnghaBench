; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_unlink_all_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_unlink_all_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.waitq_link = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.waitq_set* }

@.str = private unnamed_addr constant [34 x i8] c"unlink all queues from set 0x%llx\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@WQL_WQS = common dso_local global i32 0, align 4
@wqset_clear_prepost_chain_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_set_unlink_all_unlock(%struct.waitq_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.waitq_set*, align 8
  %4 = alloca %struct.waitq_link*, align 8
  %5 = alloca i64, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %3, align 8
  %6 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %7 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @wqdbg_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %11 = call i64 @waitqs_is_linked(%struct.waitq_set* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %15 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.waitq_link* @wql_get_link(i32 %16)
  store %struct.waitq_link* %17, %struct.waitq_link** %4, align 8
  %18 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %19 = icmp ne %struct.waitq_link* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %22 = call i32 @waitq_set_unlock(%struct.waitq_set* %21)
  %23 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %23, i32* %2, align 4
  br label %73

24:                                               ; preds = %13
  %25 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %26 = call i32 @wql_invalidate(%struct.waitq_link* %25)
  %27 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %28 = load i32, i32* @WQL_WQS, align 4
  %29 = call i32 @wql_realloc_link(%struct.waitq_link* %27, i32 %28)
  %30 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %31 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %32 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.waitq_set* %30, %struct.waitq_set** %33, align 8
  %34 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %35 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %39 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %41 = call i32 @wql_mkvalid(%struct.waitq_link* %40)
  %42 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %43 = call i32 @wql_put_link(%struct.waitq_link* %42)
  br label %44

44:                                               ; preds = %24, %1
  store i64 0, i64* %5, align 8
  %45 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %46 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %52 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %57 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %55, %50, %44
  %60 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %61 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %63 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %62, i32 0, i32 0
  %64 = call i32 @waitq_unlink_all_unlock(%struct.TYPE_6__* %63)
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* @wqset_clear_prepost_chain_cb, align 4
  %70 = call i32 @wq_prepost_iterate(i64 %68, i32* null, i32 %69)
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %20
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @wqdbg_v(i8*, i32) #1

declare dso_local i64 @waitqs_is_linked(%struct.waitq_set*) #1

declare dso_local %struct.waitq_link* @wql_get_link(i32) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

declare dso_local i32 @wql_invalidate(%struct.waitq_link*) #1

declare dso_local i32 @wql_realloc_link(%struct.waitq_link*, i32) #1

declare dso_local i32 @wql_mkvalid(%struct.waitq_link*) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

declare dso_local i32 @waitq_unlink_all_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @wq_prepost_iterate(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
