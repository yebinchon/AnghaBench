; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_ConfigRsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_ConfigRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [83 x i8] c"L2CA_ConfigRsp()  CID: 0x%04x  Result: %d MTU present:%d Flush TO:%d FCR:%d FCS:%d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"L2CAP - no CCB for L2CA_cfg_rsp, CID: %d\00", align 1
@FALSE = common dso_local global i8* null, align 8
@L2CAP_CFG_OK = common dso_local global i64 0, align 8
@L2CAP_CFG_PENDING = common dso_local global i64 0, align 8
@L2CEVT_L2CA_CONFIG_RSP = common dso_local global i32 0, align 4
@L2CEVT_L2CA_CONFIG_RSP_NEG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @L2CA_ConfigRsp(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %10, i64 %13, i64 %16, i8* %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.TYPE_9__* @l2cu_find_ccb_by_cid(i32* null, i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %6, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** @FALSE, align 8
  store i8* %30, i8** %3, align 8
  br label %88

31:                                               ; preds = %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @L2CAP_CFG_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @L2CAP_CFG_PENDING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = load i32, i32* @L2CEVT_L2CA_CONFIG_RSP, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = call i32 @l2c_csm_execute(%struct.TYPE_9__* %44, i32 %45, %struct.TYPE_10__* %46)
  br label %86

48:                                               ; preds = %37
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i8*, i8** @FALSE, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %48
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** @FALSE, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** @FALSE, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = load i32, i32* @L2CEVT_L2CA_CONFIG_RSP_NEG, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = call i32 @l2c_csm_execute(%struct.TYPE_9__* %82, i32 %83, %struct.TYPE_10__* %84)
  br label %86

86:                                               ; preds = %81, %43
  %87 = load i8*, i8** @TRUE, align 8
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %86, %27
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i64, i64, i64, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @l2cu_find_ccb_by_cid(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
