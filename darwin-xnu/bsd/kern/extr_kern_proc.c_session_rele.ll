; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_session_rele.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_session_rele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64, i32, i32 }

@S_LIST_TERM = common dso_local global i32 0, align 4
@S_LIST_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"session_rele: terminating already terminated session\00", align 1
@s_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"session_rele: freeing session in use\00", align 1
@proc_lck_grp = common dso_local global i32 0, align 4
@M_SESSION = common dso_local global i32 0, align 4
@proc_mlock_grp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @session_rele(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  store %struct.session* %0, %struct.session** %2, align 8
  %3 = call i32 (...) @proc_list_lock()
  %4 = load %struct.session*, %struct.session** %2, align 8
  %5 = getelementptr inbounds %struct.session, %struct.session* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = load %struct.session*, %struct.session** %2, align 8
  %11 = getelementptr inbounds %struct.session, %struct.session* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @S_LIST_TERM, align 4
  %14 = load i32, i32* @S_LIST_DEAD, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %9
  %21 = load i32, i32* @S_LIST_TERM, align 4
  %22 = load %struct.session*, %struct.session** %2, align 8
  %23 = getelementptr inbounds %struct.session, %struct.session* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.session*, %struct.session** %2, align 8
  %27 = load i32, i32* @s_hash, align 4
  %28 = call i32 @LIST_REMOVE(%struct.session* %26, i32 %27)
  %29 = load i32, i32* @S_LIST_DEAD, align 4
  %30 = load %struct.session*, %struct.session** %2, align 8
  %31 = getelementptr inbounds %struct.session, %struct.session* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.session*, %struct.session** %2, align 8
  %35 = getelementptr inbounds %struct.session, %struct.session* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %20
  %41 = call i32 (...) @proc_list_unlock()
  %42 = load %struct.session*, %struct.session** %2, align 8
  %43 = getelementptr inbounds %struct.session, %struct.session* %42, i32 0, i32 2
  %44 = load i32, i32* @proc_lck_grp, align 4
  %45 = call i32 @lck_mtx_destroy(i32* %43, i32 %44)
  %46 = load %struct.session*, %struct.session** %2, align 8
  %47 = load i32, i32* @M_SESSION, align 4
  %48 = call i32 @FREE_ZONE(%struct.session* %46, i32 16, i32 %47)
  br label %51

49:                                               ; preds = %1
  %50 = call i32 (...) @proc_list_unlock()
  br label %51

51:                                               ; preds = %49, %40
  ret void
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.session*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @FREE_ZONE(%struct.session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
