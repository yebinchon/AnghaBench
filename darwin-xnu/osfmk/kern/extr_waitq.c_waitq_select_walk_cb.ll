; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_walk_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_walk_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_link = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.waitq_set* }
%struct.waitq_set = type { i64, i32, %struct.waitq }
%struct.waitq_select_args = type { i64*, i64, i64, i32, i64, %struct.waitq* }

@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@WQL_WQS = common dso_local global i64 0, align 8
@WQ_ITERATE_FOUND = common dso_local global i32 0, align 4
@NO_EVENT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i8*, %struct.waitq_link*)* @waitq_select_walk_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_select_walk_cb(%struct.waitq* %0, i8* %1, %struct.waitq_link* %2) #0 {
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.waitq_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.waitq_select_args, align 8
  %9 = alloca %struct.waitq_set*, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %6, align 8
  %10 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.waitq_select_args*
  %13 = bitcast %struct.waitq_select_args* %8 to i8*
  %14 = bitcast %struct.waitq_select_args* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 48, i1 false)
  %15 = load %struct.waitq*, %struct.waitq** %4, align 8
  %16 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %17 = call i64 @wql_type(%struct.waitq_link* %16)
  %18 = load i64, i64* @WQL_WQS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %23 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.waitq_set*, %struct.waitq_set** %24, align 8
  store %struct.waitq_set* %25, %struct.waitq_set** %9, align 8
  %26 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %27 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 5
  store %struct.waitq* %27, %struct.waitq** %28, align 8
  %29 = load %struct.waitq*, %struct.waitq** %4, align 8
  %30 = call i32 @waitq_irq_safe(%struct.waitq* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %36 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %35, i32 0, i32 2
  %37 = call i32 @waitq_irq_safe(%struct.waitq* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %43 = call i32 @waitq_set_lock(%struct.waitq_set* %42)
  %44 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %45 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %48 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  br label %114

53:                                               ; preds = %3
  %54 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %55 = call i32 @waitqs_is_linked(%struct.waitq_set* %54)
  %56 = call i32 @assert(i32 %55)
  %57 = call i32 @do_waitq_select_n_locked(%struct.waitq_select_args* %8)
  %58 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @queue_empty(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %66, %53
  %72 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @WQ_ITERATE_FOUND, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %75, %71
  br label %114

85:                                               ; preds = %66, %62
  %86 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NO_EVENT64, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %85
  %91 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %92 = call i64 @waitq_set_can_prepost(%struct.waitq_set* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %96 = load %struct.waitq*, %struct.waitq** %4, align 8
  %97 = getelementptr inbounds %struct.waitq_select_args, %struct.waitq_select_args* %8, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @wq_prepost_do_post_locked(%struct.waitq_set* %95, %struct.waitq* %96, i32 %98)
  br label %111

100:                                              ; preds = %90
  %101 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %102 = call i64 @waitq_set_has_prepost_hook(%struct.waitq_set* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %106 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.waitq*, %struct.waitq** %4, align 8
  %109 = call i32 @waitq_set__CALLING_PREPOST_HOOK__(i32 %107, %struct.waitq* %108, i32 0)
  br label %110

110:                                              ; preds = %104, %100
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %85
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %84, %52
  %115 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %116 = call i32 @waitq_set_unlock(%struct.waitq_set* %115)
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @wql_type(%struct.waitq_link*) #2

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #2

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #2

declare dso_local i32 @waitqs_is_linked(%struct.waitq_set*) #2

declare dso_local i32 @do_waitq_select_n_locked(%struct.waitq_select_args*) #2

declare dso_local i32 @queue_empty(i64) #2

declare dso_local i64 @waitq_set_can_prepost(%struct.waitq_set*) #2

declare dso_local i32 @wq_prepost_do_post_locked(%struct.waitq_set*, %struct.waitq*, i32) #2

declare dso_local i64 @waitq_set_has_prepost_hook(%struct.waitq_set*) #2

declare dso_local i32 @waitq_set__CALLING_PREPOST_HOOK__(i32, %struct.waitq*, i32) #2

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
