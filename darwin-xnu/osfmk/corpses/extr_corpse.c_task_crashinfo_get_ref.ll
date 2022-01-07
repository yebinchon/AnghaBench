; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_crashinfo_get_ref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_crashinfo_get_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.corpse_creation_gate = type { i32 }

@CORPSE_CRASHINFO_HAS_REF = common dso_local global i32 0, align 4
@inflight_corpses = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@CORPSE_CRASHINFO_USER_FAULT = common dso_local global i32 0, align 4
@TOTAL_USER_FAULTS_ALLOWED = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@TOTAL_CORPSES_ALLOWED = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @task_crashinfo_get_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_crashinfo_get_ref(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.corpse_creation_gate, align 4
  %5 = alloca %union.corpse_creation_gate, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CORPSE_CRASHINFO_HAS_REF, align 4
  %8 = and i32 %6, %7
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @memory_order_relaxed, align 4
  %11 = call i32 @atomic_load_explicit(i32* @inflight_corpses, i32 %10)
  %12 = bitcast %union.corpse_creation_gate* %4 to i32*
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %49, %1
  %14 = bitcast %union.corpse_creation_gate* %5 to i8*
  %15 = bitcast %union.corpse_creation_gate* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @CORPSE_CRASHINFO_USER_FAULT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = bitcast %union.corpse_creation_gate* %5 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = sext i32 %22 to i64
  %25 = load i64, i64* @TOTAL_USER_FAULTS_ALLOWED, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %13
  %31 = bitcast %union.corpse_creation_gate* %5 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = sext i32 %32 to i64
  %35 = load i64, i64* @TOTAL_CORPSES_ALLOWED, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %30
  %40 = bitcast %union.corpse_creation_gate* %4 to i32*
  %41 = bitcast %union.corpse_creation_gate* %5 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @memory_order_relaxed, align 4
  %44 = load i32, i32* @memory_order_relaxed, align 4
  %45 = call i64 @atomic_compare_exchange_strong_explicit(i32* @inflight_corpses, i32* %40, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %39
  br label %13

50:                                               ; preds = %47, %37, %27
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atomic_load_explicit(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @atomic_compare_exchange_strong_explicit(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
