; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_csr.c_syscall_csr_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_csr.c_syscall_csr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csrctl_args = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @syscall_csr_check(%struct.csrctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csrctl_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.csrctl_args* %0, %struct.csrctl_args** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.csrctl_args*, %struct.csrctl_args** %3, align 8
  %7 = getelementptr inbounds %struct.csrctl_args, %struct.csrctl_args* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.csrctl_args*, %struct.csrctl_args** %3, align 8
  %12 = getelementptr inbounds %struct.csrctl_args, %struct.csrctl_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %10
  %19 = load %struct.csrctl_args*, %struct.csrctl_args** %3, align 8
  %20 = getelementptr inbounds %struct.csrctl_args, %struct.csrctl_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @copyin(i64 %21, i32* %4, i32 4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @csr_check(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %25, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @copyin(i64, i32*, i32) #1

declare dso_local i32 @csr_check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
