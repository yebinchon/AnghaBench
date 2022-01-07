; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_setthreadcred.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_setthreadcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.ubc_info* }
%struct.ubc_info = type { i32 }
%struct.uthread = type { i32, i32 }

@UT_SETUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubc_setthreadcred(%struct.vnode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uthread*, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.uthread* @get_bsdthread_info(i32 %11)
  store %struct.uthread* %12, %struct.uthread** %10, align 8
  %13 = load %struct.vnode*, %struct.vnode** %5, align 8
  %14 = call i32 @UBCINFOEXISTS(%struct.vnode* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = call i32 @vnode_lock(%struct.vnode* %18)
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.ubc_info*, %struct.ubc_info** %21, align 8
  store %struct.ubc_info* %22, %struct.ubc_info** %8, align 8
  %23 = load %struct.ubc_info*, %struct.ubc_info** %8, align 8
  %24 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @IS_VALID_CRED(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %17
  %30 = load %struct.uthread*, %struct.uthread** %10, align 8
  %31 = icmp eq %struct.uthread* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.uthread*, %struct.uthread** %10, align 8
  %34 = getelementptr inbounds %struct.uthread, %struct.uthread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UT_SETUID, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @kauth_cred_proc_ref(i32 %40)
  %42 = load %struct.ubc_info*, %struct.ubc_info** %8, align 8
  %43 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %54

44:                                               ; preds = %32
  %45 = load %struct.uthread*, %struct.uthread** %10, align 8
  %46 = getelementptr inbounds %struct.uthread, %struct.uthread* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ubc_info*, %struct.ubc_info** %8, align 8
  %49 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ubc_info*, %struct.ubc_info** %8, align 8
  %51 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kauth_cred_ref(i32 %52)
  br label %54

54:                                               ; preds = %44, %39
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.vnode*, %struct.vnode** %5, align 8
  %57 = call i32 @vnode_unlock(%struct.vnode* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_proc_ref(i32) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
