; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_zero_balance.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_zero_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ledger_entry* }
%struct.ledger_entry = type { i64, i64, i32 }

@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@LF_TRACK_CREDIT_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%p zeroed %lld->%lld\0A\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_zero_balance(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ledger_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ENTRY_VALID(%struct.TYPE_4__* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %14, i32* %3, align 4
  br label %102

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.ledger_entry*, %struct.ledger_entry** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %18, i64 %20
  store %struct.ledger_entry* %21, %struct.ledger_entry** %6, align 8
  br label %22

22:                                               ; preds = %87, %65, %47, %15
  %23 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %24 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %27 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LF_TRACK_CREDIT_ONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %22
  %36 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %37 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %44 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %43, i32 0, i32 1
  %45 = call i32 @OSCompareAndSwap64(i64 %42, i64 0, i64* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %22

48:                                               ; preds = %35
  %49 = call i32 (...) @current_thread()
  %50 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %51 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @lprintf(i8* null)
  br label %100

54:                                               ; preds = %22
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %62 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %61, i32 0, i32 0
  %63 = call i32 @OSCompareAndSwap64(i64 %59, i64 %60, i64* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %22

66:                                               ; preds = %58
  %67 = call i32 (...) @current_thread()
  %68 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %69 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %72 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @lprintf(i8* %74)
  br label %99

76:                                               ; preds = %54
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %84 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %83, i32 0, i32 1
  %85 = call i32 @OSCompareAndSwap64(i64 %81, i64 %82, i64* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %22

88:                                               ; preds = %80
  %89 = call i32 (...) @current_thread()
  %90 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %91 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %94 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @lprintf(i8* %96)
  br label %98

98:                                               ; preds = %88, %76
  br label %99

99:                                               ; preds = %98, %66
  br label %100

100:                                              ; preds = %99, %48
  %101 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %13
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @ENTRY_VALID(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OSCompareAndSwap64(i64, i64, i64*) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
