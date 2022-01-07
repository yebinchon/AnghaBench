; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_crashinfo_release_ref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_crashinfo_release_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.corpse_creation_gate = type { i32 }

@CORPSE_CRASHINFO_HAS_REF = common dso_local global i32 0, align 4
@inflight_corpses = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@CORPSE_CRASHINFO_USER_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"corpse in flight count over-release\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @task_crashinfo_release_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_crashinfo_release_ref(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.corpse_creation_gate, align 4
  %4 = alloca %union.corpse_creation_gate, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CORPSE_CRASHINFO_HAS_REF, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @memory_order_relaxed, align 4
  %10 = call i32 @atomic_load_explicit(i32* @inflight_corpses, i32 %9)
  %11 = bitcast %union.corpse_creation_gate* %3 to i32*
  store i32 %10, i32* %11, align 4
  br label %12

12:                                               ; preds = %44, %1
  %13 = bitcast %union.corpse_creation_gate* %4 to i8*
  %14 = bitcast %union.corpse_creation_gate* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CORPSE_CRASHINFO_USER_FAULT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = bitcast %union.corpse_creation_gate* %4 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %12
  %28 = bitcast %union.corpse_creation_gate* %4 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = bitcast %union.corpse_creation_gate* %3 to i32*
  %36 = bitcast %union.corpse_creation_gate* %4 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @memory_order_relaxed, align 4
  %39 = load i32, i32* @memory_order_relaxed, align 4
  %40 = call i64 @atomic_compare_exchange_strong_explicit(i32* @inflight_corpses, i32* %35, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %43

44:                                               ; preds = %34
  br label %12
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atomic_load_explicit(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @atomic_compare_exchange_strong_explicit(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
