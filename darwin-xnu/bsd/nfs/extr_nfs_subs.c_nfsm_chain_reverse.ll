; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_reverse.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_chain_reverse(%struct.nfsm_chain* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsm_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nfsm_chain* %0, %struct.nfsm_chain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %10 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %13 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @mbuf_data(i32 %14)
  %16 = sub nsw i64 %11, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %23 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %28 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %52

33:                                               ; preds = %2
  %34 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %35 = call i64 @nfsm_chain_offset(%struct.nfsm_chain* %34)
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %40 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %41 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @nfsm_chain_dissect_init(i32 %38, %struct.nfsm_chain* %39, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @nfsm_chain_advance(%struct.nfsm_chain* %49, i64 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %46, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @mbuf_data(i32) #1

declare dso_local i64 @nfsm_chain_offset(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_dissect_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_advance(%struct.nfsm_chain*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
