; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_wait_return.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_wait_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._kevent_register = type { i64, i64*, i32, i32, i32, i32, i64, %struct.kevent_internal_s, %struct.kqueue* }
%struct.kevent_internal_s = type { i32, i64 }
%struct.kqueue = type { i32 }

@EV_ERROR = common dso_local global i32 0, align 4
@EV_RECEIPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._kevent_register*)* @kevent_register_wait_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kevent_register_wait_return(%struct._kevent_register* %0) #0 {
  %2 = alloca %struct._kevent_register*, align 8
  %3 = alloca %struct.kqueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kevent_internal_s*, align 8
  %6 = alloca i32, align 4
  store %struct._kevent_register* %0, %struct._kevent_register** %2, align 8
  %7 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %8 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %7, i32 0, i32 8
  %9 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  store %struct.kqueue* %9, %struct.kqueue** %3, align 8
  %10 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %11 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %14 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %13, i32 0, i32 7
  store %struct.kevent_internal_s* %14, %struct.kevent_internal_s** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %16 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %21 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @thread_deallocate(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %26 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EV_ERROR, align 4
  %29 = load i32, i32* @EV_RECEIPT, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %24
  %34 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %35 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EV_ERROR, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* @EV_ERROR, align 4
  %42 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %43 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %47 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %33
  %49 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %50 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %51 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %50, i32 0, i32 5
  %52 = load i32, i32* %4, align 4
  %53 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %54 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @kevent_copyout(%struct.kevent_internal_s* %49, i32* %51, i32 %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %61 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %59, %48
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i32, i32* %4, align 4
  %67 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %68 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %71 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %74 = call i32 @kevent_put_kq(i32 %66, i32 %69, i32 %72, %struct.kqueue* %73)
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %79 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct._kevent_register*, %struct._kevent_register** %2, align 8
  %82 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %65
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @unix_syscall_return(i32 %85)
  ret void
}

declare dso_local i32 @thread_deallocate(i64) #1

declare dso_local i32 @kevent_copyout(%struct.kevent_internal_s*, i32*, i32, i32) #1

declare dso_local i32 @kevent_put_kq(i32, i32, i32, %struct.kqueue*) #1

declare dso_local i32 @unix_syscall_return(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
