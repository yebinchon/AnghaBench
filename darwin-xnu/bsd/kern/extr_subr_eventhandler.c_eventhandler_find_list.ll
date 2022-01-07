; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_eventhandler.c_eventhandler_find_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_eventhandler.c_eventhandler_find_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventhandler_lists_ctxt = type { i32, i32 }
%struct.eventhandler_list = type { i32 }

@evthdlr_lists_ctxt_glb = common dso_local global %struct.eventhandler_lists_ctxt zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eventhandler_list* @eventhandler_find_list(%struct.eventhandler_lists_ctxt* %0, i8* %1) #0 {
  %3 = alloca %struct.eventhandler_list*, align 8
  %4 = alloca %struct.eventhandler_lists_ctxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eventhandler_list*, align 8
  store %struct.eventhandler_lists_ctxt* %0, %struct.eventhandler_lists_ctxt** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.eventhandler_lists_ctxt*, %struct.eventhandler_lists_ctxt** %4, align 8
  %8 = icmp eq %struct.eventhandler_lists_ctxt* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.eventhandler_lists_ctxt* @evthdlr_lists_ctxt_glb, %struct.eventhandler_lists_ctxt** %4, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = load %struct.eventhandler_lists_ctxt*, %struct.eventhandler_lists_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.eventhandler_lists_ctxt, %struct.eventhandler_lists_ctxt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.eventhandler_list* null, %struct.eventhandler_list** %3, align 8
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.eventhandler_lists_ctxt*, %struct.eventhandler_lists_ctxt** %4, align 8
  %18 = getelementptr inbounds %struct.eventhandler_lists_ctxt, %struct.eventhandler_lists_ctxt* %17, i32 0, i32 0
  %19 = call i32 @lck_mtx_lock_spin(i32* %18)
  %20 = load %struct.eventhandler_lists_ctxt*, %struct.eventhandler_lists_ctxt** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.eventhandler_list* @_eventhandler_find_list(%struct.eventhandler_lists_ctxt* %20, i8* %21)
  store %struct.eventhandler_list* %22, %struct.eventhandler_list** %6, align 8
  %23 = load %struct.eventhandler_list*, %struct.eventhandler_list** %6, align 8
  %24 = icmp ne %struct.eventhandler_list* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.eventhandler_lists_ctxt*, %struct.eventhandler_lists_ctxt** %4, align 8
  %27 = getelementptr inbounds %struct.eventhandler_lists_ctxt, %struct.eventhandler_lists_ctxt* %26, i32 0, i32 0
  %28 = call i32 @lck_mtx_convert_spin(i32* %27)
  %29 = load %struct.eventhandler_list*, %struct.eventhandler_list** %6, align 8
  %30 = call i32 @EHL_LOCK_SPIN(%struct.eventhandler_list* %29)
  br label %31

31:                                               ; preds = %25, %16
  %32 = load %struct.eventhandler_lists_ctxt*, %struct.eventhandler_lists_ctxt** %4, align 8
  %33 = getelementptr inbounds %struct.eventhandler_lists_ctxt, %struct.eventhandler_lists_ctxt* %32, i32 0, i32 0
  %34 = call i32 @lck_mtx_unlock(i32* %33)
  %35 = load %struct.eventhandler_list*, %struct.eventhandler_list** %6, align 8
  store %struct.eventhandler_list* %35, %struct.eventhandler_list** %3, align 8
  br label %36

36:                                               ; preds = %31, %15
  %37 = load %struct.eventhandler_list*, %struct.eventhandler_list** %3, align 8
  ret %struct.eventhandler_list* %37
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local %struct.eventhandler_list* @_eventhandler_find_list(%struct.eventhandler_lists_ctxt*, i8*) #1

declare dso_local i32 @lck_mtx_convert_spin(i32*) #1

declare dso_local i32 @EHL_LOCK_SPIN(%struct.eventhandler_list*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
