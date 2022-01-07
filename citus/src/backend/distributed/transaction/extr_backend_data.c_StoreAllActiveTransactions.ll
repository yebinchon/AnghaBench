; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_StoreAllActiveTransactions.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_StoreAllActiveTransactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ACTIVE_TRANSACTION_COLUMN_COUNT = common dso_local global i32 0, align 4
@DEFAULT_ROLE_MONITOR = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i32 0, align 4
@backendManagementShmemData = common dso_local global %struct.TYPE_11__* null, align 8
@InvalidOid = common dso_local global i64 0, align 8
@ProcGlobal = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @StoreAllActiveTransactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StoreAllActiveTransactions(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %18 = load i32, i32* @ACTIVE_TRANSACTION_COLUMN_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @ACTIVE_TRANSACTION_COLUMN_COUNT, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = call i32 (...) @superuser()
  store i32 %25, i32* %9, align 4
  %26 = call i64 (...) @GetUserId()
  store i64 %26, i64* %10, align 8
  %27 = mul nuw i64 4, %19
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %21, i32 0, i32 %28)
  %30 = mul nuw i64 4, %23
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %24, i32 0, i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* @DEFAULT_ROLE_MONITOR, align 4
  %35 = call i64 @is_member_of_role(i64 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* @LW_SHARED, align 4
  %40 = call i32 @LockBackendSharedMemory(i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %138, %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MaxBackends, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %141

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @backendManagementShmemData, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %50
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %12, align 4
  %52 = load i64, i64* @InvalidOid, align 8
  store i64 %52, i64* %13, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = call i32 @SpinLockAcquire(i32* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = call i32 @SpinLockRelease(i32* %63)
  br label %138

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = call i32 @SpinLockRelease(i32* %76)
  br label %138

78:                                               ; preds = %68, %65
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %13, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ProcGlobal, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %14, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %16, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %17, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = call i32 @SpinLockRelease(i32* %107)
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @ObjectIdGetDatum(i64 %109)
  %111 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %110, i32* %111, align 16
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @Int32GetDatum(i32 %112)
  %114 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @Int32GetDatum(i32 %115)
  %117 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @UInt64GetDatum(i32 %123)
  %125 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 %124, i32* %125, align 16
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @TimestampTzGetDatum(i32 %126)
  %128 = getelementptr inbounds i32, i32* %21, i64 5
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @tuplestore_putvalues(i32* %129, i32 %130, i32* %21, i32* %24)
  %132 = mul nuw i64 4, %19
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memset(i32* %21, i32 0, i32 %133)
  %135 = mul nuw i64 4, %23
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memset(i32* %24, i32 0, i32 %136)
  br label %138

138:                                              ; preds = %78, %74, %61
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %41

141:                                              ; preds = %41
  %142 = call i32 (...) @UnlockBackendSharedMemory()
  %143 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %143)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @superuser(...) #2

declare dso_local i64 @GetUserId(...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @is_member_of_role(i64, i32) #2

declare dso_local i32 @LockBackendSharedMemory(i32) #2

declare dso_local i32 @SpinLockAcquire(i32*) #2

declare dso_local i32 @SpinLockRelease(i32*) #2

declare dso_local i32 @ObjectIdGetDatum(i64) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @UInt64GetDatum(i32) #2

declare dso_local i32 @TimestampTzGetDatum(i32) #2

declare dso_local i32 @tuplestore_putvalues(i32*, i32, i32*, i32*) #2

declare dso_local i32 @UnlockBackendSharedMemory(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
