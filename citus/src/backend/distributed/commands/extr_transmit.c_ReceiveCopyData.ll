; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_transmit.c_ReceiveCopyData.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_transmit.c_ReceiveCopyData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unexpected EOF on client connection\00", align 1
@ERRCODE_QUERY_CANCELED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"COPY data failed: %s\00", align 1
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"unexpected message type 0x%02X during COPY data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ReceiveCopyData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReceiveCopyData(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @HOLD_CANCEL_INTERRUPTS()
  %8 = call i32 (...) @pq_startmsgread()
  %9 = call i32 (...) @pq_getbyte()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %16 = call i32 @errcode(i32 %15)
  %17 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @pq_getmessage(i32 %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = call i32 (...) @RESUME_CANCEL_INTERRUPTS()
  %33 = load i32, i32* %3, align 4
  switch i32 %33, label %45 [
    i32 100, label %34
    i32 99, label %35
    i32 102, label %36
    i32 72, label %44
    i32 83, label %44
  ]

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %52

35:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %52

36:                                               ; preds = %31
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @ERRCODE_QUERY_CANCELED, align 4
  %39 = call i32 @errcode(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @pq_getmsgstring(i32 %40)
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @ereport(i32 %37, i32 %42)
  br label %52

44:                                               ; preds = %31, %31
  store i32 0, i32* %5, align 4
  br label %52

45:                                               ; preds = %31
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @ereport(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %44, %36, %35, %34
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @HOLD_CANCEL_INTERRUPTS(...) #1

declare dso_local i32 @pq_startmsgread(...) #1

declare dso_local i32 @pq_getbyte(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pq_getmessage(i32, i32) #1

declare dso_local i32 @RESUME_CANCEL_INTERRUPTS(...) #1

declare dso_local i32 @pq_getmsgstring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
