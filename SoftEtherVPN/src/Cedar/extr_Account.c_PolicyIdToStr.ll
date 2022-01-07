; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_PolicyIdToStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_PolicyIdToStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Access\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DHCPFilter\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DHCPNoServer\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DHCPForce\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"NoBridge\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NoRouting\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CheckMac\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CheckIP\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ArpDhcpOnly\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"PrivacyFilter\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"NoServer\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"NoBroadcastLimiter\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"MonitorPort\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"MaxConnection\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"TimeOut\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"MaxMac\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"MaxIP\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"MaxUpload\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"MaxDownload\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"FixPassword\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"MultiLogins\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"NoQoS\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"RSandRAFilter\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"RAFilter\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"DHCPv6Filter\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"DHCPv6NoServer\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"NoRoutingV6\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"CheckIPv6\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"NoServerV6\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"MaxIPv6\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"NoSavePassword\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"AutoDisconnect\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"FilterIPv4\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"FilterIPv6\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"FilterNonIP\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"NoIPv6DefaultRouterInRA\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"NoIPv6DefaultRouterInRAWhenIPv6\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"VLanId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PolicyIdToStr(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %43 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
    i32 16, label %21
    i32 17, label %22
    i32 18, label %23
    i32 19, label %24
    i32 20, label %25
    i32 21, label %26
    i32 22, label %27
    i32 23, label %28
    i32 24, label %29
    i32 25, label %30
    i32 26, label %31
    i32 27, label %32
    i32 28, label %33
    i32 29, label %34
    i32 30, label %35
    i32 31, label %36
    i32 32, label %37
    i32 33, label %38
    i32 34, label %39
    i32 35, label %40
    i32 36, label %41
    i32 37, label %42
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %44

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %44

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %44

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %44

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %44

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %44

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %44

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %44

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %44

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %44

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %44

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %44

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %44

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %44

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %44

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %44

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %44

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %44

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %44

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %44

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %44

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %44

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %44

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %44

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %44

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %44

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %44

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %44

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %44

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %44

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %44

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %44

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %44

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %44

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %44

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %44

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %44

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %44

43:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %44

44:                                               ; preds = %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
