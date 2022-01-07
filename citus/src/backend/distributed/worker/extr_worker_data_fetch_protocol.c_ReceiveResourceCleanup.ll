; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_ReceiveResourceCleanup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_ReceiveResourceCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not delete file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64)* @ReceiveResourceCleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReceiveResourceCleanup(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @MultiClientDisconnect(i64 %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @close(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* @WARNING, align 4
  %25 = call i32 (...) @errcode_for_file_access()
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @unlink(i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @WARNING, align 4
  %36 = call i32 (...) @errcode_for_file_access()
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %15
  ret void
}

declare dso_local i32 @MultiClientDisconnect(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
