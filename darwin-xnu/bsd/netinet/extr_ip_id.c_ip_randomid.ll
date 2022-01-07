; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_id.c_ip_randomid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_id.c_ip_randomid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@id_array = common dso_local global i64* null, align 8
@ip_use_randomid = common dso_local global i64 0, align 8
@ip_id = common dso_local global i32 0, align 4
@random_id_statistics = common dso_local global i64 0, align 8
@random_id_collisions = common dso_local global i32 0, align 4
@id_bits = common dso_local global i32 0, align 4
@ipid_lock = common dso_local global i32 0, align 4
@array_ptr = common dso_local global i64 0, align 8
@ARRAY_SIZE = common dso_local global i64 0, align 8
@random_id_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_randomid() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64*, i64** @id_array, align 8
  %4 = icmp eq i64* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @ip_use_randomid, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @ip_id, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @ip_id, align 4
  %11 = call i64 @htons(i32 %9)
  store i64 %11, i64* %1, align 8
  br label %63

12:                                               ; preds = %5
  store i64 0, i64* %2, align 8
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i64, i64* @random_id_statistics, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @random_id_collisions, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @random_id_collisions, align 4
  br label %22

22:                                               ; preds = %19, %16, %13
  %23 = call i32 @read_random(i64* %2, i32 8)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* @id_bits, align 4
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @bitstr_test(i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %2, align 8
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ true, %24 ], [ %31, %29 ]
  br i1 %33, label %13, label %34

34:                                               ; preds = %32
  %35 = call i32 @lck_mtx_lock_spin(i32* @ipid_lock)
  %36 = load i32, i32* @id_bits, align 4
  %37 = load i64*, i64** @id_array, align 8
  %38 = load i64, i64* @array_ptr, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @bitstr_clear(i32 %36, i64 %40)
  %42 = load i32, i32* @id_bits, align 4
  %43 = load i64, i64* %2, align 8
  %44 = call i32 @bitstr_set(i32 %42, i64 %43)
  %45 = load i64, i64* %2, align 8
  %46 = load i64*, i64** @id_array, align 8
  %47 = load i64, i64* @array_ptr, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* @array_ptr, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* @array_ptr, align 8
  %51 = load i64, i64* @ARRAY_SIZE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  store i64 0, i64* @array_ptr, align 8
  br label %54

54:                                               ; preds = %53, %34
  %55 = call i32 @lck_mtx_unlock(i32* @ipid_lock)
  %56 = load i64, i64* @random_id_statistics, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @random_id_total, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @random_id_total, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i64, i64* %2, align 8
  store i64 %62, i64* %1, align 8
  br label %63

63:                                               ; preds = %61, %8
  %64 = load i64, i64* %1, align 8
  ret i64 %64
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @read_random(i64*, i32) #1

declare dso_local i64 @bitstr_test(i32, i64) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @bitstr_clear(i32, i64) #1

declare dso_local i32 @bitstr_set(i32, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
