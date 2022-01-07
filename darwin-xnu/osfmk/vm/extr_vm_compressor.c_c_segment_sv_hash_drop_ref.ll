; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_segment_sv_hash_drop_ref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_segment_sv_hash_drop_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.c_sv_hash_entry = type { i64, i64, i32 }

@c_segment_sv_hash_table = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@c_segment_svp_in_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @c_segment_sv_hash_drop_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_segment_sv_hash_drop_ref(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c_sv_hash_entry, align 8
  %4 = alloca %struct.c_sv_hash_entry, align 8
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %1, %42
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_segment_sv_hash_table, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %3, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %4, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %4, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %4, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_segment_sv_hash_table, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast i64* %30 to i32*
  %32 = call i64 @OSCompareAndSwap64(i32 %22, i32 %25, i32* %31)
  %33 = load i64, i64* @TRUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @OSAddAtomic(i32 -1, i32* @c_segment_svp_in_hash)
  br label %41

41:                                               ; preds = %39, %35
  br label %43

42:                                               ; preds = %5
  br label %5

43:                                               ; preds = %41
  ret void
}

declare dso_local i64 @OSCompareAndSwap64(i32, i32, i32*) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
