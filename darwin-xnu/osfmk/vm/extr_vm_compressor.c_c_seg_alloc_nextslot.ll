; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_alloc_nextslot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_alloc_nextslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, %struct.c_slot* }
%struct.c_slot = type { i32 }

@c_seg_fixed_array_len = common dso_local global i64 0, align 8
@C_SEG_SLOT_VAR_ARRAY_MIN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @c_seg_alloc_nextslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_seg_alloc_nextslot(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.c_slot*, align 8
  %4 = alloca %struct.c_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store %struct.c_slot* null, %struct.c_slot** %3, align 8
  store %struct.c_slot* null, %struct.c_slot** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @c_seg_fixed_array_len, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %81

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @c_seg_fixed_array_len, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %13
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load %struct.c_slot*, %struct.c_slot** %29, align 8
  store %struct.c_slot* %30, %struct.c_slot** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @C_SEG_SLOT_VAR_ARRAY_MIN_LEN, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %33
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @kalloc(i32 %42)
  %44 = inttoptr i64 %43 to %struct.c_slot*
  store %struct.c_slot* %44, %struct.c_slot** %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = call i32 @lck_mtx_lock_spin_always(i32* %46)
  %48 = load %struct.c_slot*, %struct.c_slot** %3, align 8
  %49 = icmp ne %struct.c_slot* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %38
  %51 = load %struct.c_slot*, %struct.c_slot** %4, align 8
  %52 = bitcast %struct.c_slot* %51 to i8*
  %53 = load %struct.c_slot*, %struct.c_slot** %3, align 8
  %54 = bitcast %struct.c_slot* %53 to i8*
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i8* %52, i8* %54, i32 %58)
  br label %60

60:                                               ; preds = %50, %38
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.c_slot*, %struct.c_slot** %4, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store %struct.c_slot* %65, %struct.c_slot** %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = call i32 @lck_mtx_unlock_always(i32* %69)
  %71 = load %struct.c_slot*, %struct.c_slot** %3, align 8
  %72 = icmp ne %struct.c_slot* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load %struct.c_slot*, %struct.c_slot** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @kfree(%struct.c_slot* %74, i32 %78)
  br label %80

80:                                               ; preds = %73, %60
  br label %81

81:                                               ; preds = %12, %80, %13
  ret void
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @kfree(%struct.c_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
