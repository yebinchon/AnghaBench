; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_evt_str.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_evt_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Register Request\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Deregister Request\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Open SLC Request\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Close SLC Request\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Open Audio Request\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Close Audio Request\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"AT Result  BTA_AG_SPK_RES\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"AT Result  BTA_AG_MIC_RES\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"AT Result  BTA_AG_INBAND_RING_RES\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_CIND_RES\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_BINP_RES\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"AT Result  BTA_AG_IND_RES\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_BVRA_RES\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_CNUM_RES\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_BTRH_RES\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_CLCC_RES\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_COPS_RES\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"AT Result  BTA_AG_IN_CALL_RES\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"AT Result  BTA_AG_IN_CALL_CONN_RES\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"AT Result  BTA_AG_CALL_WAIT_RES\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"AT Result  BTA_AG_OUT_CALL_ORIG_RES\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"AT Result  BTA_AG_OUT_CALL_ALERT_RES\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"AT Result  BTA_AG_OUT_CALL_CONN_RES\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"AT Result  BTA_AG_CALL_CANCEL_RES\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"AT Result  BTA_AG_END_CALL_RES\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"AT Result  BTA_AG_UNAT_RES\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Unknown AG Result\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Set Codec Request\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"RFC Opened\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"RFC Closed\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"RFC SRV Closed\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"RFC Data\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Audio Opened\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Audio Closed\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"Discovery ACP Result\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Discovery INT Result\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Discovery OK\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Discovery Failed\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"CI RX Write\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Ring Timeout\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Service Timeout\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Enable AG\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Disable AG\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"SCO data Callin\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"SLC Ready Callin\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"Unknown AG Event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @bta_ag_evt_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bta_ag_evt_str(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %54 [
    i32 165, label %7
    i32 169, label %8
    i32 166, label %9
    i32 170, label %10
    i32 171, label %11
    i32 172, label %12
    i32 164, label %13
    i32 163, label %36
    i32 135, label %37
    i32 137, label %38
    i32 134, label %39
    i32 136, label %40
    i32 131, label %41
    i32 132, label %42
    i32 150, label %43
    i32 148, label %44
    i32 147, label %45
    i32 149, label %46
    i32 156, label %47
    i32 133, label %48
    i32 129, label %49
    i32 167, label %50
    i32 168, label %51
    i32 155, label %52
    i32 154, label %53
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %55

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %55

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %55

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %55

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %55

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %55

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %35 [
    i32 130, label %15
    i32 141, label %16
    i32 145, label %17
    i32 157, label %18
    i32 162, label %19
    i32 144, label %20
    i32 160, label %21
    i32 152, label %22
    i32 161, label %23
    i32 153, label %24
    i32 151, label %25
    i32 142, label %26
    i32 143, label %27
    i32 158, label %28
    i32 138, label %29
    i32 140, label %30
    i32 139, label %31
    i32 159, label %32
    i32 146, label %33
    i32 128, label %34
  ]

15:                                               ; preds = %13
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %55

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %55

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %55

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %55

19:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %55

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %55

21:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %55

22:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %55

23:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %55

24:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %55

25:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %55

26:                                               ; preds = %13
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %55

27:                                               ; preds = %13
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %55

28:                                               ; preds = %13
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %55

29:                                               ; preds = %13
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %55

30:                                               ; preds = %13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %55

31:                                               ; preds = %13
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %55

32:                                               ; preds = %13
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %55

33:                                               ; preds = %13
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %55

34:                                               ; preds = %13
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %55

35:                                               ; preds = %13
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %55

36:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %55

37:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %55

38:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %55

39:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %55

40:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %55

41:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %55

42:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %55

43:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i8** %3, align 8
  br label %55

44:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
  br label %55

45:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %55

46:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8** %3, align 8
  br label %55

47:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8** %3, align 8
  br label %55

48:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %55

49:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8** %3, align 8
  br label %55

50:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8** %3, align 8
  br label %55

51:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8** %3, align 8
  br label %55

52:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8** %3, align 8
  br label %55

53:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %55

54:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i8** %3, align 8
  br label %55

55:                                               ; preds = %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %12, %11, %10, %9, %8, %7
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
