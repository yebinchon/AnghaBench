; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_advance.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i64, i32, i32 }

@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_chain_advance(%struct.nfsm_chain* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsm_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nfsm_chain* %0, %struct.nfsm_chain** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %12 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %19 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %24 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  store i32 0, i32* %3, align 4
  br label %55

29:                                               ; preds = %10
  %30 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %31 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub nsw i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %36 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mbuf_next(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %40 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @EBADRPC, align 4
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mbuf_data(i32 %46)
  %48 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %49 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @mbuf_len(i32 %50)
  %52 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %53 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %7

54:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %43, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mbuf_next(i32) #1

declare dso_local i32 @mbuf_data(i32) #1

declare dso_local i64 @mbuf_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
