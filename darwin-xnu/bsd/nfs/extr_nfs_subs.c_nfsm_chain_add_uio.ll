; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_add_uio.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_add_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_chain_add_uio(%struct.nfsm_chain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsm_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nfsm_chain* %0, %struct.nfsm_chain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @nfsm_rndup(i64 %11)
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %83, %3
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %84

16:                                               ; preds = %13
  %17 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %18 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @nfsm_chain_new_mbuf(%struct.nfsm_chain* %22, i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %85

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %32 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @MIN(i64 %33, i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %49 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @uiomove(i32 %50, i64 %51, i32 %52)
  br label %60

54:                                               ; preds = %38
  %55 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %56 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @bzero(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %63 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %70 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %60
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %78, %60
  br label %83

83:                                               ; preds = %82, %30
  br label %13

84:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @nfsm_rndup(i64) #1

declare dso_local i32 @nfsm_chain_new_mbuf(%struct.nfsm_chain*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @uiomove(i32, i64, i32) #1

declare dso_local i32 @bzero(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
