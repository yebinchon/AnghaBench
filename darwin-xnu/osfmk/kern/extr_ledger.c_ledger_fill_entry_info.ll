; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_fill_entry_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_fill_entry_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ledger_entry = type { i32, %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ledger_entry_info = type { i8*, i8*, i64, i64, i64, i32 }

@LF_REFILL_SCHEDULED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ledger_entry*, %struct.ledger_entry_info*, i64)* @ledger_fill_entry_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ledger_fill_entry_info(%struct.ledger_entry* %0, %struct.ledger_entry_info* %1, i64 %2) #0 {
  %4 = alloca %struct.ledger_entry*, align 8
  %5 = alloca %struct.ledger_entry_info*, align 8
  %6 = alloca i64, align 8
  store %struct.ledger_entry* %0, %struct.ledger_entry** %4, align 8
  store %struct.ledger_entry_info* %1, %struct.ledger_entry_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ledger_entry*, %struct.ledger_entry** %4, align 8
  %8 = icmp ne %struct.ledger_entry* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %12 = icmp ne %struct.ledger_entry_info* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %16 = call i32 @memset(%struct.ledger_entry_info* %15, i32 0, i32 48)
  %17 = load %struct.ledger_entry*, %struct.ledger_entry** %4, align 8
  %18 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %21 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ledger_entry*, %struct.ledger_entry** %4, align 8
  %23 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %26 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ledger_entry*, %struct.ledger_entry** %4, align 8
  %28 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %31 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %33 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %36 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %40 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ledger_entry*, %struct.ledger_entry** %4, align 8
  %42 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LF_REFILL_SCHEDULED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %3
  %48 = load %struct.ledger_entry*, %struct.ledger_entry** %4, align 8
  %49 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @abstime_to_nsecs(i64 %52)
  br label %55

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi i8* [ %53, %47 ], [ null, %54 ]
  %57 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %58 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.ledger_entry*, %struct.ledger_entry** %4, align 8
  %61 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %59, %64
  %66 = call i8* @abstime_to_nsecs(i64 %65)
  %67 = load %struct.ledger_entry_info*, %struct.ledger_entry_info** %5, align 8
  %68 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.ledger_entry_info*, i32, i32) #1

declare dso_local i8* @abstime_to_nsecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
