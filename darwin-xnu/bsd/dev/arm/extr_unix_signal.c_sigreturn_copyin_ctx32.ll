; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_unix_signal.c_sigreturn_copyin_ctx32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_unix_signal.c_sigreturn_copyin_ctx32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_ucontext32 = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_ucontext32*, %struct.user_ucontext32*, i32)* @sigreturn_copyin_ctx32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigreturn_copyin_ctx32(%struct.user_ucontext32* %0, %struct.user_ucontext32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_ucontext32*, align 8
  %6 = alloca %struct.user_ucontext32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.user_ucontext32* %0, %struct.user_ucontext32** %5, align 8
  store %struct.user_ucontext32* %1, %struct.user_ucontext32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @current_proc()
  %10 = call i32 @proc_is64bit_data(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.user_ucontext32*, %struct.user_ucontext32** %5, align 8
  %17 = call i32 @copyin(i32 %15, %struct.user_ucontext32* %16, i32 16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %3
  %23 = load %struct.user_ucontext32*, %struct.user_ucontext32** %5, align 8
  %24 = getelementptr inbounds %struct.user_ucontext32, %struct.user_ucontext32* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %27 [
    i32 128, label %26
  ]

26:                                               ; preds = %22
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %26
  %30 = load %struct.user_ucontext32*, %struct.user_ucontext32** %5, align 8
  %31 = getelementptr inbounds %struct.user_ucontext32, %struct.user_ucontext32* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 16
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.user_ucontext32*, %struct.user_ucontext32** %5, align 8
  %38 = getelementptr inbounds %struct.user_ucontext32, %struct.user_ucontext32* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.user_ucontext32*, %struct.user_ucontext32** %6, align 8
  %42 = load %struct.user_ucontext32*, %struct.user_ucontext32** %5, align 8
  %43 = getelementptr inbounds %struct.user_ucontext32, %struct.user_ucontext32* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @copyin(i32 %40, %struct.user_ucontext32* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %48, %27, %20
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_is64bit_data(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @copyin(i32, %struct.user_ucontext32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
