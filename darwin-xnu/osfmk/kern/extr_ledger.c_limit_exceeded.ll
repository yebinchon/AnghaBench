; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_limit_exceeded.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_limit_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ledger_entry = type { i32, i64, i64, i64 }

@LF_TRACK_CREDIT_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ledger_entry*)* @limit_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limit_exceeded(%struct.ledger_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ledger_entry*, align 8
  %4 = alloca i64, align 8
  store %struct.ledger_entry* %0, %struct.ledger_entry** %3, align 8
  %5 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %6 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LF_TRACK_CREDIT_ONLY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %13 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %20 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %25 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %28, %11
  %33 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %34 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %37 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  store i64 %39, i64* %4, align 8
  %40 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %41 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %47 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %64

51:                                               ; preds = %44, %32
  %52 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %53 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.ledger_entry*, %struct.ledger_entry** %3, align 8
  %59 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %64

63:                                               ; preds = %56, %51
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %50
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
