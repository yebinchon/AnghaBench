; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_management.c_AdjustMaxPreparedTransactions.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_management.c_AdjustMaxPreparedTransactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_prepared_xacts = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MaxConnections = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"max_prepared_transactions\00", align 1
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"number of prepared transactions has not been configured, overriding\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"max_prepared_transactions is now set to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AdjustMaxPreparedTransactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AdjustMaxPreparedTransactions() #0 {
  %1 = alloca [12 x i8], align 1
  %2 = load i64, i64* @max_prepared_xacts, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %6 = load i32, i32* @MaxConnections, align 4
  %7 = mul nsw i32 %6, 2
  %8 = call i32 @snprintf(i8* %5, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %10 = load i32, i32* @PGC_POSTMASTER, align 4
  %11 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %12 = call i32 @SetConfigOption(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @LOG, align 4
  %14 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %16 = call i32 @errdetail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %17 = call i32 @ereport(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
