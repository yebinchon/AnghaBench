; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c__fasttrap_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c__fasttrap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, %struct.proc*)* @_fasttrap_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fasttrap_ioctl(i32 %0, i32 %1, i64 %2, i32 %3, %struct.proc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.proc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.proc* %4, %struct.proc** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.proc*, %struct.proc** %11, align 8
  %16 = call i64 @proc_is64bit(%struct.proc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i64, i64* %9, align 8
  %20 = inttoptr i64 %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  br label %26

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (...) @CRED()
  %32 = call i32 @fasttrap_ioctl(i32 %27, i32 %28, i64 %29, i32 %30, i32 %31, i32* %13)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, -4096
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, 4095
  store i32 %42, i32* %6, align 4
  br label %56

43:                                               ; preds = %26
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, -1048576
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 1048575
  %54 = shl i32 %53, 12
  store i32 %54, i32* %6, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %46, %35
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @proc_is64bit(%struct.proc*) #1

declare dso_local i32 @fasttrap_ioctl(i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
