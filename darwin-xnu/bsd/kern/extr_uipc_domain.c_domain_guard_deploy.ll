; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_domain_guard_deploy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_domain_guard_deploy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NET_THREAD_HELD_DOMAIN = common dso_local global i32 0, align 4
@net_thread_marks_none = common dso_local global i64 0, align 8
@domain_proto_mtx = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @domain_guard_deploy() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @NET_THREAD_HELD_DOMAIN, align 4
  %3 = call i64 @net_thread_marks_push(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @net_thread_marks_none, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32* @domain_proto_mtx, i32 %8)
  %10 = call i32 @lck_mtx_lock(i32* @domain_proto_mtx)
  br label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %13 = call i32 @LCK_MTX_ASSERT(i32* @domain_proto_mtx, i32 %12)
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i64, i64* %1, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = ptrtoint i8* %16 to i32
  ret i32 %17
}

declare dso_local i64 @net_thread_marks_push(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
