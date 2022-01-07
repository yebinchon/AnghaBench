; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c___sigaction_user64_to_kern.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c___sigaction_user64_to_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__user64_sigaction = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.__kern_sigaction = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__user64_sigaction*, %struct.__kern_sigaction*)* @__sigaction_user64_to_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sigaction_user64_to_kern(%struct.__user64_sigaction* %0, %struct.__kern_sigaction* %1) #0 {
  %3 = alloca %struct.__user64_sigaction*, align 8
  %4 = alloca %struct.__kern_sigaction*, align 8
  %5 = alloca i64, align 8
  store %struct.__user64_sigaction* %0, %struct.__user64_sigaction** %3, align 8
  store %struct.__kern_sigaction* %1, %struct.__kern_sigaction** %4, align 8
  %6 = load %struct.__user64_sigaction*, %struct.__user64_sigaction** %3, align 8
  %7 = getelementptr inbounds %struct.__user64_sigaction, %struct.__user64_sigaction* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %11 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.__user64_sigaction*, %struct.__user64_sigaction** %3, align 8
  %14 = getelementptr inbounds %struct.__user64_sigaction, %struct.__user64_sigaction* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %17 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.__user64_sigaction*, %struct.__user64_sigaction** %3, align 8
  %19 = getelementptr inbounds %struct.__user64_sigaction, %struct.__user64_sigaction* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %22 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.__user64_sigaction*, %struct.__user64_sigaction** %3, align 8
  %24 = getelementptr inbounds %struct.__user64_sigaction, %struct.__user64_sigaction* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %27 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @current_thread()
  %29 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %30 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %29, i32 0, i32 0
  %31 = call i64 @machine_thread_function_pointers_convert_from_user(i32 %28, i32* %30, i32 1)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  ret void
}

declare dso_local i64 @machine_thread_function_pointers_convert_from_user(i32, i32*, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
