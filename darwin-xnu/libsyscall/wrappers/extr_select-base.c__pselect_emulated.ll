; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_select-base.c__pselect_emulated.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_select-base.c__pselect_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i64, i32 }

@SIG_SETMASK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, %struct.timespec*, i32*)* @_pselect_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pselect_emulated(i32 %0, i32* noalias %1, i32* noalias %2, i32* noalias %3, %struct.timespec* noalias %4, i32* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.timespec*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.timespec* %4, %struct.timespec** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.timespec*, %struct.timespec** %12, align 8
  %20 = icmp ne %struct.timespec* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = load %struct.timespec*, %struct.timespec** %12, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.timespec*, %struct.timespec** %12, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 1000
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  store %struct.timeval* %15, %struct.timeval** %16, align 8
  br label %33

32:                                               ; preds = %6
  store %struct.timeval* null, %struct.timeval** %16, align 8
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* @SIG_SETMASK, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @__pthread_sigmask(i32 %37, i32* %38, i32* %14)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %7, align 4
  br label %61

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load %struct.timeval*, %struct.timeval** %16, align 8
  %51 = call i32 @select(i32 %46, i32* %47, i32* %48, i32* %49, %struct.timeval* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* @SIG_SETMASK, align 4
  %57 = call i32 @__pthread_sigmask(i32 %56, i32* %14, i32* null)
  %58 = load i32, i32* %18, align 4
  store i32 %58, i32* @errno, align 4
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %42
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @__pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
