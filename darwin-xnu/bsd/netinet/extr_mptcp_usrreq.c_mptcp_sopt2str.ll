; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_sopt2str.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_sopt2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"SO_LINGER\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SO_LINGER_SEC\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SO_DEBUG\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SO_KEEPALIVE\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SO_USELOOPBACK\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SO_TYPE\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SO_NREAD\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SO_NWRITE\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SO_ERROR\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SO_SNDBUF\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"SO_RCVBUF\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"SO_SNDLOWAT\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SO_RCVLOWAT\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"SO_SNDTIMEO\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SO_RCVTIMEO\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"SO_NKE\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"SO_NOSIGPIPE\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"SO_NOADDRERR\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"SO_RESTRICTIONS\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SO_LABEL\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"SO_PEERLABEL\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"SO_RANDOMPORT\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"SO_TRAFFIC_CLASS\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SO_RECV_TRAFFIC_CLASS\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"SO_TRAFFIC_CLASS_DBG\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"SO_PRIVILEGED_TRAFFIC_CLASS\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SO_DEFUNCTOK\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"SO_ISDEFUNCT\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"SO_OPPORTUNISTIC\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"SO_FLUSH\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"SO_RECV_ANYIF\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"SO_NOWAKEFROMSLEEP\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"SO_NOAPNFALLBK\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"SO_CELLFALLBACK\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"SO_DELEGATED\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"SO_DELEGATED_UUID\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"TCP_NODELAY\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"TCP_KEEPALIVE\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"TCP_KEEPINTVL\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"TCP_KEEPCNT\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"TCP_CONNECTIONTIMEOUT\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"TCP_RXT_CONNDROPTIME\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"PERSIST_TIMEOUT\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"NOTSENT_LOWAT\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"ADAPTIVE_READ_TIMEOUT\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"ADAPTIVE_WRITE_TIMEOUT\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"MPTCP_SERVICE_TYPE\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"MPTCP_ALTERNATE_PORT\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mptcp_sopt2str(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %61 [
    i32 175, label %7
    i32 179, label %46
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %45 [
    i32 165, label %9
    i32 164, label %10
    i32 174, label %11
    i32 167, label %12
    i32 137, label %13
    i32 138, label %14
    i32 155, label %15
    i32 154, label %16
    i32 170, label %17
    i32 143, label %18
    i32 149, label %19
    i32 142, label %20
    i32 148, label %21
    i32 141, label %22
    i32 147, label %23
    i32 160, label %24
    i32 157, label %25
    i32 159, label %26
    i32 144, label %27
    i32 166, label %28
    i32 152, label %29
    i32 150, label %30
    i32 140, label %31
    i32 145, label %32
    i32 139, label %33
    i32 151, label %34
    i32 173, label %35
    i32 168, label %36
    i32 153, label %37
    i32 169, label %38
    i32 146, label %39
    i32 156, label %40
    i32 158, label %41
    i32 163, label %42
    i32 172, label %43
    i32 171, label %44
  ]

9:                                                ; preds = %7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %62

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %62

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %62

12:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %62

13:                                               ; preds = %7
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %62

14:                                               ; preds = %7
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %62

15:                                               ; preds = %7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %62

16:                                               ; preds = %7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %62

17:                                               ; preds = %7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %62

18:                                               ; preds = %7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %62

19:                                               ; preds = %7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %62

20:                                               ; preds = %7
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %62

21:                                               ; preds = %7
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %62

22:                                               ; preds = %7
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %62

23:                                               ; preds = %7
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %62

24:                                               ; preds = %7
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %62

25:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %62

26:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %62

27:                                               ; preds = %7
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %62

28:                                               ; preds = %7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %62

29:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %62

30:                                               ; preds = %7
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %62

31:                                               ; preds = %7
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %62

32:                                               ; preds = %7
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %62

33:                                               ; preds = %7
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %62

34:                                               ; preds = %7
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %62

35:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %62

36:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %62

37:                                               ; preds = %7
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %62

38:                                               ; preds = %7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %62

39:                                               ; preds = %7
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %62

40:                                               ; preds = %7
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %62

41:                                               ; preds = %7
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %62

42:                                               ; preds = %7
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %62

43:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8** %3, align 8
  br label %62

44:                                               ; preds = %7
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
  br label %62

45:                                               ; preds = %7
  br label %61

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %60 [
    i32 130, label %48
    i32 133, label %49
    i32 131, label %50
    i32 132, label %51
    i32 134, label %52
    i32 128, label %53
    i32 176, label %54
    i32 129, label %55
    i32 136, label %56
    i32 135, label %57
    i32 177, label %58
    i32 178, label %59
  ]

48:                                               ; preds = %46
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %62

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8** %3, align 8
  br label %62

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8** %3, align 8
  br label %62

51:                                               ; preds = %46
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %62

52:                                               ; preds = %46
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i8** %3, align 8
  br label %62

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i8** %3, align 8
  br label %62

54:                                               ; preds = %46
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8** %3, align 8
  br label %62

55:                                               ; preds = %46
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8** %3, align 8
  br label %62

56:                                               ; preds = %46
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %62

57:                                               ; preds = %46
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i8** %3, align 8
  br label %62

58:                                               ; preds = %46
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i8** %3, align 8
  br label %62

59:                                               ; preds = %46
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i8** %3, align 8
  br label %62

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %2, %60, %45
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8** %3, align 8
  br label %62

62:                                               ; preds = %61, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
