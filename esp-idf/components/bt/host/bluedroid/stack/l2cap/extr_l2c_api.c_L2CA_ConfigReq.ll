; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_ConfigReq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_ConfigReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i8*, i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }

@.str = private unnamed_addr constant [75 x i8] c"L2CA_ConfigReq()  CID 0x%04x: fcr_present:%d (mode %d) mtu_present:%d (%d)\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"L2CAP - no CCB for L2CA_cfg_req, CID: %d\00", align 1
@FALSE = common dso_local global i8* null, align 8
@L2CAP_FCR_BASIC_MODE = common dso_local global i64 0, align 8
@L2CAP_MTU_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"L2CAP - adjust MTU: %u too large\00", align 1
@L2CEVT_L2CA_CONFIG_REQ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @L2CA_ConfigReq(i64 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %10, i64 %14, i64 %17, i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call %struct.TYPE_11__* @l2cu_find_ccb_by_cid(i32* null, i64 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %6, align 8
  %24 = icmp eq %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** %3, align 8
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = call i32 @l2c_fcr_adj_our_req_options(%struct.TYPE_11__* %30, %struct.TYPE_12__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** @FALSE, align 8
  store i8* %35, i8** %3, align 8
  br label %85

36:                                               ; preds = %29
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %41, %36
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @FALSE, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %48
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %65, %59, %48
  br label %74

74:                                               ; preds = %73, %41
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = bitcast %struct.TYPE_12__* %76 to i8*
  %79 = bitcast %struct.TYPE_12__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 48, i1 false)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i32, i32* @L2CEVT_L2CA_CONFIG_REQ, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = call i32 @l2c_csm_execute(%struct.TYPE_11__* %80, i32 %81, %struct.TYPE_12__* %82)
  %84 = load i8*, i8** @TRUE, align 8
  store i8* %84, i8** %3, align 8
  br label %85

85:                                               ; preds = %74, %34, %25
  %86 = load i8*, i8** %3, align 8
  ret i8* %86
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i64, i32, i64, i64, i64) #1

declare dso_local %struct.TYPE_11__* @l2cu_find_ccb_by_cid(i32*, i64) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i64) #1

declare dso_local i32 @l2c_fcr_adj_our_req_options(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
