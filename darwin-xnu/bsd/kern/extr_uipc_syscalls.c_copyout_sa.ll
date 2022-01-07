; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_copyout_sa.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_copyout_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32, i64*)* @copyout_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyout_sa(%struct.sockaddr* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %16 = icmp eq %struct.sockaddr* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i64 0, i64* %9, align 8
  br label %44

18:                                               ; preds = %14
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %8, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  br label %33

29:                                               ; preds = %18
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i64 [ %28, %27 ], [ %32, %29 ]
  store i64 %34, i64* %9, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @copyout(%struct.sockaddr* %35, i32 %36, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i64, i64* %8, align 8
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %42
  ret i32 0
}

declare dso_local i32 @copyout(%struct.sockaddr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
