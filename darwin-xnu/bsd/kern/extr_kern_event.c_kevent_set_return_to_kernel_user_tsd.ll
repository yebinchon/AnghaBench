; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_set_return_to_kernel_user_tsd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_set_return_to_kernel_user_tsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.uthread = type { i32* }

@P_LP64 = common dso_local global i32 0, align 4
@R2K_WORKLOOP_PENDING_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"pid %d (tid:%llu): copyout of return_to_kernel ast flags failed with ast_addr = %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @kevent_set_return_to_kernel_user_tsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kevent_set_return_to_kernel_user_tsd(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uthread*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @P_LP64, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 8, i32 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.uthread* @get_bsdthread_info(i32 %25)
  store %struct.uthread* %26, %struct.uthread** %10, align 8
  %27 = load %struct.uthread*, %struct.uthread** %10, align 8
  %28 = getelementptr inbounds %struct.uthread, %struct.uthread* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @R2K_WORKLOOP_PENDING_EVENTS, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %81

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @P_LP64, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 4294967296
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @thread_rettokern_addr(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %81

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = bitcast i32* %9 to i8*
  br label %67

65:                                               ; preds = %60
  %66 = bitcast i64* %8 to i8*
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i8* [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* %5, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @copyout(i8* %68, i32 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (...) @current_thread()
  %78 = call i32 @thread_tid(i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %38, %59, %73, %67
  ret void
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_rettokern_addr(i32) #1

declare dso_local i64 @copyout(i8*, i32, i64) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
