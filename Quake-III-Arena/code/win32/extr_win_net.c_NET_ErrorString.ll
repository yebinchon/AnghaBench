; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_ErrorString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_ErrorString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"WSAEINTR\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"WSAEBADF\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"WSAEACCES\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"WSAEDISCON\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"WSAEFAULT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"WSAEINVAL\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"WSAEMFILE\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"WSAEWOULDBLOCK\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"WSAEINPROGRESS\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"WSAEALREADY\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"WSAENOTSOCK\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"WSAEDESTADDRREQ\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"WSAEMSGSIZE\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"WSAEPROTOTYPE\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"WSAENOPROTOOPT\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"WSAEPROTONOSUPPORT\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"WSAESOCKTNOSUPPORT\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"WSAEOPNOTSUPP\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"WSAEPFNOSUPPORT\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"WSAEAFNOSUPPORT\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"WSAEADDRINUSE\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"WSAEADDRNOTAVAIL\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"WSAENETDOWN\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"WSAENETUNREACH\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"WSAENETRESET\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"WSWSAECONNABORTEDAEINTR\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"WSAECONNRESET\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"WSAENOBUFS\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"WSAEISCONN\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"WSAENOTCONN\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"WSAESHUTDOWN\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"WSAETOOMANYREFS\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"WSAETIMEDOUT\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"WSAECONNREFUSED\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"WSAELOOP\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"WSAENAMETOOLONG\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"WSAEHOSTDOWN\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"WSASYSNOTREADY\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"WSAVERNOTSUPPORTED\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"WSANOTINITIALISED\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"WSAHOST_NOT_FOUND\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"WSATRY_AGAIN\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"WSANO_RECOVERY\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"WSANO_DATA\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"NO ERROR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @NET_ErrorString() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @WSAGetLastError()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %49 [
    i32 157, label %5
    i32 166, label %6
    i32 171, label %7
    i32 161, label %8
    i32 160, label %9
    i32 156, label %10
    i32 153, label %11
    i32 135, label %12
    i32 158, label %13
    i32 167, label %14
    i32 144, label %15
    i32 162, label %16
    i32 152, label %17
    i32 140, label %18
    i32 146, label %19
    i32 141, label %20
    i32 138, label %21
    i32 143, label %22
    i32 142, label %23
    i32 168, label %24
    i32 170, label %25
    i32 169, label %26
    i32 150, label %27
    i32 148, label %28
    i32 149, label %29
    i32 165, label %30
    i32 163, label %31
    i32 147, label %32
    i32 155, label %33
    i32 145, label %34
    i32 139, label %35
    i32 136, label %36
    i32 137, label %37
    i32 164, label %38
    i32 154, label %39
    i32 151, label %40
    i32 159, label %41
    i32 130, label %42
    i32 128, label %43
    i32 133, label %44
    i32 134, label %45
    i32 129, label %46
    i32 131, label %47
    i32 132, label %48
  ]

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %50

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %50

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %50

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %50

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %50

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %50

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %50

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %50

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %50

14:                                               ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %50

15:                                               ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  br label %50

16:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %1, align 8
  br label %50

17:                                               ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %1, align 8
  br label %50

18:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  br label %50

19:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %1, align 8
  br label %50

20:                                               ; preds = %0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8** %1, align 8
  br label %50

21:                                               ; preds = %0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8** %1, align 8
  br label %50

22:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %1, align 8
  br label %50

23:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %1, align 8
  br label %50

24:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8** %1, align 8
  br label %50

25:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8** %1, align 8
  br label %50

26:                                               ; preds = %0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** %1, align 8
  br label %50

27:                                               ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %1, align 8
  br label %50

28:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %50

29:                                               ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8** %1, align 8
  br label %50

30:                                               ; preds = %0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8** %1, align 8
  br label %50

31:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8** %1, align 8
  br label %50

32:                                               ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8** %1, align 8
  br label %50

33:                                               ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8** %1, align 8
  br label %50

34:                                               ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8** %1, align 8
  br label %50

35:                                               ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %1, align 8
  br label %50

36:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8** %1, align 8
  br label %50

37:                                               ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8** %1, align 8
  br label %50

38:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %1, align 8
  br label %50

39:                                               ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8** %1, align 8
  br label %50

40:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8** %1, align 8
  br label %50

41:                                               ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8** %1, align 8
  br label %50

42:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8** %1, align 8
  br label %50

43:                                               ; preds = %0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8** %1, align 8
  br label %50

44:                                               ; preds = %0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i8** %1, align 8
  br label %50

45:                                               ; preds = %0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8** %1, align 8
  br label %50

46:                                               ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8** %1, align 8
  br label %50

47:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8** %1, align 8
  br label %50

48:                                               ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8** %1, align 8
  br label %50

49:                                               ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8** %1, align 8
  br label %50

50:                                               ; preds = %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %51 = load i8*, i8** %1, align 8
  ret i8* %51
}

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
