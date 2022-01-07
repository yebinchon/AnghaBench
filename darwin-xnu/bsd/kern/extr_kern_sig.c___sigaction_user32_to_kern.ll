; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c___sigaction_user32_to_kern.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c___sigaction_user32_to_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__user32_sigaction = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.__kern_sigaction = type { i8*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__user32_sigaction*, %struct.__kern_sigaction*)* @__sigaction_user32_to_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sigaction_user32_to_kern(%struct.__user32_sigaction* %0, %struct.__kern_sigaction* %1) #0 {
  %3 = alloca %struct.__user32_sigaction*, align 8
  %4 = alloca %struct.__kern_sigaction*, align 8
  %5 = alloca i64, align 8
  store %struct.__user32_sigaction* %0, %struct.__user32_sigaction** %3, align 8
  store %struct.__kern_sigaction* %1, %struct.__kern_sigaction** %4, align 8
  %6 = load %struct.__user32_sigaction*, %struct.__user32_sigaction** %3, align 8
  %7 = getelementptr inbounds %struct.__user32_sigaction, %struct.__user32_sigaction* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @CAST_USER_ADDR_T(i32 %9)
  %11 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %12 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = load %struct.__user32_sigaction*, %struct.__user32_sigaction** %3, align 8
  %15 = getelementptr inbounds %struct.__user32_sigaction, %struct.__user32_sigaction* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @CAST_USER_ADDR_T(i32 %16)
  %18 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %19 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.__user32_sigaction*, %struct.__user32_sigaction** %3, align 8
  %21 = getelementptr inbounds %struct.__user32_sigaction, %struct.__user32_sigaction* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %24 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.__user32_sigaction*, %struct.__user32_sigaction** %3, align 8
  %26 = getelementptr inbounds %struct.__user32_sigaction, %struct.__user32_sigaction* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %29 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @current_thread()
  %31 = load %struct.__kern_sigaction*, %struct.__kern_sigaction** %4, align 8
  %32 = getelementptr inbounds %struct.__kern_sigaction, %struct.__kern_sigaction* %31, i32 0, i32 0
  %33 = call i64 @machine_thread_function_pointers_convert_from_user(i32 %30, i8** %32, i32 1)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  ret void
}

declare dso_local i8* @CAST_USER_ADDR_T(i32) #1

declare dso_local i64 @machine_thread_function_pointers_convert_from_user(i32, i8**, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
