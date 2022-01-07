; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_start_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_start_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i64, i64, i64, i32, i32, i32, i32 }

@IFEF_TXSTART = common dso_local global i32 0, align 4
@IFSF_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@IFEF_ENQUEUE_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i64)* @ifnet_start_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifnet_start_common(%struct.ifnet* %0, i64 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IFEF_TXSTART, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %87

12:                                               ; preds = %2
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 5
  %15 = call i32 @lck_mtx_lock_spin(i32* %14)
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @IFSF_FLOW_CONTROLLED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %37

25:                                               ; preds = %12
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFSF_FLOW_CONTROLLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 5
  %35 = call i32 @lck_mtx_unlock(i32* %34)
  br label %87

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %37
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @THREAD_NULL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %52
  %56 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IFEF_ENQUEUE_MULTI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 6
  %65 = call i64 @IFCQ_LEN(i32* %64)
  %66 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70, %62, %55, %52
  %76 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 2
  %78 = ptrtoint i64* %77 to i32
  %79 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @thread_wakeup_thread(i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %75, %70, %46, %37
  %84 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 5
  %86 = call i32 @lck_mtx_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %32, %11
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @IFCQ_LEN(i32*) #1

declare dso_local i32 @thread_wakeup_thread(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
