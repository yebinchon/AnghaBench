; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnperrors.c_strupnperror.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnperrors.c_strupnperror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Miniupnpc Unknown Error\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Miniupnpc Invalid Arguments\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Miniupnpc Invalid response\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Miniupnpc Socket error\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Miniupnpc Memory allocation error\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Invalid Action\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Invalid Args\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Action Failed\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Action not authorized\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"PinholeSpaceExhausted\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"FirewallDisabled\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"InboundPinholeNotAllowed\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"NoSuchEntry\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"ProtocolNotSupported\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"InternalPortWildcardingNotAllowed\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"ProtocolWildcardingNotAllowed\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"WildcardNotPermittedInSrcIP\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"NoPacketSent\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"SpecifiedArrayIndexInvalid\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"NoSuchEntryInArray\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"WildCardNotPermittedInSrcIP\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"WildCardNotPermittedInExtPort\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"ConflictInMappingEntry\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"SamePortValuesRequired\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"OnlyPermanentLeasesSupported\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"RemoteHostOnlySupportsWildcard\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"ExternalPortOnlySupportsWildcard\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"UnknownError\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strupnperror(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %33 [
    i32 131, label %5
    i32 130, label %6
    i32 133, label %7
    i32 132, label %8
    i32 128, label %9
    i32 129, label %10
    i32 401, label %11
    i32 402, label %12
    i32 501, label %13
    i32 606, label %14
    i32 701, label %15
    i32 702, label %16
    i32 703, label %17
    i32 704, label %18
    i32 705, label %19
    i32 706, label %20
    i32 707, label %21
    i32 708, label %22
    i32 709, label %23
    i32 713, label %24
    i32 714, label %25
    i32 715, label %26
    i32 716, label %27
    i32 718, label %28
    i32 724, label %29
    i32 725, label %30
    i32 726, label %31
    i32 727, label %32
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %34

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %34

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %34

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %34

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %34

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %34

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %34

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %34

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %34

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %34

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %34

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %34

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %34

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %34

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %34

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %34

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %34

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %34

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %34

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %34

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %34

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %34

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %34

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %34

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %34

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %34

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %34

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %34

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
