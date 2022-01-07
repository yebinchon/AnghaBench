; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.uthread = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"thread wants credential but has no BSD thread info\00", align 1
@NOCRED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"thread wants credential but has no BSD process\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kauth_cred_get() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = alloca %struct.uthread*, align 8
  %3 = call i32 (...) @current_thread()
  %4 = call %struct.uthread* @get_bsdthread_info(i32 %3)
  store %struct.uthread* %4, %struct.uthread** %2, align 8
  %5 = load %struct.uthread*, %struct.uthread** %2, align 8
  %6 = icmp eq %struct.uthread* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load %struct.uthread*, %struct.uthread** %2, align 8
  %11 = getelementptr inbounds %struct.uthread, %struct.uthread* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NOCRED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = call i32 (...) @current_thread()
  %17 = call i32 @get_threadtask(i32 %16)
  %18 = call i64 @get_bsdtask_info(i32 %17)
  %19 = inttoptr i64 %18 to %struct.proc*
  store %struct.proc* %19, %struct.proc** %1, align 8
  %20 = icmp eq %struct.proc* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.proc*, %struct.proc** %1, align 8
  %25 = call i64 @kauth_cred_proc_ref(%struct.proc* %24)
  %26 = load %struct.uthread*, %struct.uthread** %2, align 8
  %27 = getelementptr inbounds %struct.uthread, %struct.uthread* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %9
  %29 = load %struct.uthread*, %struct.uthread** %2, align 8
  %30 = getelementptr inbounds %struct.uthread, %struct.uthread* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  ret i64 %31
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @get_bsdtask_info(i32) #1

declare dso_local i32 @get_threadtask(i32) #1

declare dso_local i64 @kauth_cred_proc_ref(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
