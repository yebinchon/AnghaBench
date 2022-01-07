; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_GetCurrentConfig.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_GetCurrentConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, %struct.TYPE_7__ }

@.str = private unnamed_addr constant [37 x i8] c"L2CA_GetCurrentConfig()  CID: 0x%04x\00", align 1
@L2CAP_CH_CFG_MASK_MTU = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_QOS = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_FLUSH_TO = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_FCR = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_FCS = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_EXT_FLOW_SPEC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No CCB for CID:0x%04x\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_GetCurrentConfig(i32 %0, %struct.TYPE_7__** %1, i32* %2, %struct.TYPE_7__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_6__* @l2cu_find_ccb_by_cid(i32* null, i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %12, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %98

19:                                               ; preds = %5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %22, align 8
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @L2CAP_CH_CFG_MASK_MTU, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @L2CAP_CH_CFG_MASK_QOS, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @L2CAP_CH_CFG_MASK_FLUSH_TO, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @L2CAP_CH_CFG_MASK_FCR, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32, i32* @L2CAP_CH_CFG_MASK_FCS, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32, i32* @L2CAP_CH_CFG_MASK_EXT_FLOW_SPEC, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %78
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %6, align 4
  br label %102

98:                                               ; preds = %5
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %89
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @l2cu_find_ccb_by_cid(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
