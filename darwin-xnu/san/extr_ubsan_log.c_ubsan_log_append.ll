; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan_log.c_ubsan_log_append.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan_log.c_ubsan_log_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsan_violation = type { i32 }

@ubsan_logging = common dso_local global i32 0, align 4
@ubsan_log_next = common dso_local global i32 0, align 4
@ubsan_log_tail = common dso_local global i64 0, align 8
@ubsan_log = common dso_local global %struct.ubsan_violation* null, align 8
@ubsan_log_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubsan_log_append(%struct.ubsan_violation* %0) #0 {
  %2 = alloca %struct.ubsan_violation*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ubsan_violation* %0, %struct.ubsan_violation** %2, align 8
  %6 = load i32, i32* @ubsan_logging, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = call i64 @atomic_load(i32* @ubsan_log_next)
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %19, %9
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @next_entry(i64 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ubsan_log_tail, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %38

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @atomic_compare_exchange_weak(i32* @ubsan_log_next, i64* %3, i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %11, label %24

24:                                               ; preds = %19
  %25 = load %struct.ubsan_violation*, %struct.ubsan_violation** @ubsan_log, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %25, i64 %26
  %28 = load %struct.ubsan_violation*, %struct.ubsan_violation** %2, align 8
  %29 = bitcast %struct.ubsan_violation* %27 to i8*
  %30 = bitcast %struct.ubsan_violation* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %31

31:                                               ; preds = %33, %24
  %32 = load i64, i64* %3, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %31
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @atomic_compare_exchange_weak(i32* @ubsan_log_head, i64* %5, i64 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %31, label %38

38:                                               ; preds = %8, %17, %33
  ret void
}

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i64 @next_entry(i64) #1

declare dso_local i32 @atomic_compare_exchange_weak(i32*, i64*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
