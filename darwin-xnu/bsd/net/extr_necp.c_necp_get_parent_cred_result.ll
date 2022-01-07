; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_parent_cred_result.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_parent_cred_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_socket_info = type { i32 }

@COALITION_NULL = common dso_local global i32* null, align 8
@COALITION_TYPE_JETSAM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PRIV_NET_PRIVILEGED_NECP_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.necp_socket_info*)* @necp_get_parent_cred_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_get_parent_cred_result(i32* %0, %struct.necp_socket_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.necp_socket_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.necp_socket_info* %1, %struct.necp_socket_info** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  br label %18

16:                                               ; preds = %2
  %17 = call i32* (...) @current_proc()
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32* [ %15, %14 ], [ %17, %16 ]
  %20 = call i32* @proc_task(i32* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** @COALITION_NULL, align 8
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @COALITION_TYPE_JETSAM, align 4
  %24 = call i64 @coalition_is_leader(i32* %22, i32 %23, i32** %6)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @TRUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %60

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @coalition_get_leader(i32* %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @get_bsdtask_info(i32* %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* @kauth_cred_proc_ref(i32* %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @PRIV_NET_PRIVILEGED_NECP_MATCH, align 4
  %50 = call i32 @priv_check_cred(i32* %48, i32 %49, i32 0)
  store i32 %50, i32* %11, align 4
  %51 = call i32 @kauth_cred_unref(i32** %10)
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.necp_socket_info*, %struct.necp_socket_info** %4, align 8
  %54 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @task_deallocate(i32* %57)
  br label %59

59:                                               ; preds = %56, %32
  br label %60

60:                                               ; preds = %28, %59, %29
  ret void
}

declare dso_local i32* @proc_task(i32*) #1

declare dso_local i32* @current_proc(...) #1

declare dso_local i64 @coalition_is_leader(i32*, i32, i32**) #1

declare dso_local i32* @coalition_get_leader(i32*) #1

declare dso_local i32* @get_bsdtask_info(i32*) #1

declare dso_local i32* @kauth_cred_proc_ref(i32*) #1

declare dso_local i32 @priv_check_cred(i32*, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32**) #1

declare dso_local i32 @task_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
