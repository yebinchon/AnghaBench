; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_state_get_name.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_state_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"CON_STATE_INIT\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CON_STATE_CONNECT_SERVER\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"CON_STATE_READ_HANDSHAKE\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"CON_STATE_SEND_HANDSHAKE\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"CON_STATE_READ_AUTH\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CON_STATE_SEND_AUTH\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"CON_STATE_READ_AUTH_OLD_PASSWORD\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"CON_STATE_SEND_AUTH_OLD_PASSWORD\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"CON_STATE_READ_AUTH_RESULT\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"CON_STATE_SEND_AUTH_RESULT\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"CON_STATE_READ_QUERY\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"CON_STATE_SEND_QUERY\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"CON_STATE_READ_QUERY_RESULT\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"CON_STATE_SEND_QUERY_RESULT\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"CON_STATE_READ_LOCAL_INFILE_DATA\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"CON_STATE_SEND_LOCAL_INFILE_DATA\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"CON_STATE_READ_LOCAL_INFILE_RESULT\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"CON_STATE_SEND_LOCAL_INFILE_RESULT\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"CON_STATE_CLOSE_CLIENT\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"CON_STATE_CLOSE_SERVER\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"CON_STATE_ERROR\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"CON_STATE_SEND_ERROR\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @network_mysqld_con_state_get_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 145, label %5
    i32 147, label %6
    i32 141, label %7
    i32 132, label %8
    i32 144, label %9
    i32 136, label %10
    i32 143, label %11
    i32 135, label %12
    i32 142, label %13
    i32 134, label %14
    i32 138, label %15
    i32 129, label %16
    i32 137, label %17
    i32 128, label %18
    i32 140, label %19
    i32 131, label %20
    i32 139, label %21
    i32 130, label %22
    i32 149, label %23
    i32 148, label %24
    i32 146, label %25
    i32 133, label %26
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %28

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %28

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %28

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %28

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %28

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %28

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %28

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %28

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %28

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %28

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %28

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %28

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %28

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %28

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %28

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %28

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %28

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %28

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %28

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %28

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %28

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
