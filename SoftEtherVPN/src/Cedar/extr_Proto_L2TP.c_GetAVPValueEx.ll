; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_GetAVPValueEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_GetAVPValueEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@L2TP_AVP_TYPE_V3_TUNNEL_ID = common dso_local global i64 0, align 8
@L2TPV3_CISCO_AVP_TUNNEL_ID = common dso_local global i64 0, align 8
@L2TP_AVP_VENDOR_ID_CISCO = common dso_local global i64 0, align 8
@L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL = common dso_local global i64 0, align 8
@L2TPV3_CISCO_AVP_SESSION_ID_LOCAL = common dso_local global i64 0, align 8
@L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE = common dso_local global i64 0, align 8
@L2TPV3_CISCO_AVP_SESSION_ID_REMOTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @GetAVPValueEx(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %78

13:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @LIST_NUM(i32 %18)
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call %struct.TYPE_7__* @LIST_DATA(i32 %24, i64 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %4, align 8
  br label %78

40:                                               ; preds = %32, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %14

44:                                               ; preds = %14
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @L2TP_AVP_TYPE_V3_TUNNEL_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = load i64, i64* @L2TPV3_CISCO_AVP_TUNNEL_ID, align 8
  %54 = load i64, i64* @L2TP_AVP_VENDOR_ID_CISCO, align 8
  %55 = call %struct.TYPE_7__* @GetAVPValueEx(%struct.TYPE_6__* %52, i64 %53, i64 %54)
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %4, align 8
  br label %78

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i64, i64* @L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, align 8
  %63 = load i64, i64* @L2TP_AVP_VENDOR_ID_CISCO, align 8
  %64 = call %struct.TYPE_7__* @GetAVPValueEx(%struct.TYPE_6__* %61, i64 %62, i64 %63)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %4, align 8
  br label %78

65:                                               ; preds = %56
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = load i64, i64* @L2TPV3_CISCO_AVP_SESSION_ID_REMOTE, align 8
  %72 = load i64, i64* @L2TP_AVP_VENDOR_ID_CISCO, align 8
  %73 = call %struct.TYPE_7__* @GetAVPValueEx(%struct.TYPE_6__* %70, i64 %71, i64 %72)
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %4, align 8
  br label %78

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %44
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %78

78:                                               ; preds = %77, %69, %60, %51, %38, %12
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %79
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_7__* @LIST_DATA(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
