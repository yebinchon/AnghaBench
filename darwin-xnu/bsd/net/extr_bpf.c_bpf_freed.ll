; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_freed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_freed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"bpf buffer freed during read\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_d*)* @bpf_freed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_freed(%struct.bpf_d* %0) #0 {
  %2 = alloca %struct.bpf_d*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %2, align 8
  %3 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %11 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %16 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = call i32 @FREE(i64 %17, i32 %18)
  %20 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %21 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %26 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = call i32 @FREE(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %14
  %31 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %32 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %37 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = call i32 @FREE(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41, %9
  %43 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %44 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %49 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @M_DEVBUF, align 4
  %52 = call i32 @FREE(i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @FREE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
