; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_enrollee_get_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_enrollee_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WSC_MSG = common dso_local global i32 0, align 4
@WSC_NACK = common dso_local global i32 0, align 4
@WSC_ACK = common dso_local global i32 0, align 4
@RECV_M2 = common dso_local global i32 0, align 4
@WSC_Done = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WPS: Unsupported state %d for building a message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_enrollee_get_msg(%struct.wps_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %63 [
    i32 133, label %9
    i32 132, label %14
    i32 131, label %19
    i32 130, label %24
    i32 134, label %29
    i32 129, label %53
    i32 128, label %58
  ]

9:                                                ; preds = %2
  %10 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %11 = call %struct.wpabuf* @wps_build_m1(%struct.wps_data* %10)
  store %struct.wpabuf* %11, %struct.wpabuf** %5, align 8
  %12 = load i32, i32* @WSC_MSG, align 4
  %13 = load i32*, i32** %4, align 8
  store i32 %12, i32* %13, align 4
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %16 = call %struct.wpabuf* @wps_build_m3(%struct.wps_data* %15)
  store %struct.wpabuf* %16, %struct.wpabuf** %5, align 8
  %17 = load i32, i32* @WSC_MSG, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %21 = call %struct.wpabuf* @wps_build_m5(%struct.wps_data* %20)
  store %struct.wpabuf* %21, %struct.wpabuf** %5, align 8
  %22 = load i32, i32* @WSC_MSG, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %26 = call %struct.wpabuf* @wps_build_m7(%struct.wps_data* %25)
  store %struct.wpabuf* %26, %struct.wpabuf** %5, align 8
  %27 = load i32, i32* @WSC_MSG, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %69

29:                                               ; preds = %2
  %30 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %31 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %38 = call %struct.wpabuf* @wps_build_wsc_nack(%struct.wps_data* %37)
  store %struct.wpabuf* %38, %struct.wpabuf** %5, align 8
  %39 = load i32, i32* @WSC_NACK, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %69

41:                                               ; preds = %29
  %42 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %43 = call %struct.wpabuf* @wps_build_wsc_ack(%struct.wps_data* %42)
  store %struct.wpabuf* %43, %struct.wpabuf** %5, align 8
  %44 = load i32, i32* @WSC_ACK, align 4
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = icmp ne %struct.wpabuf* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @RECV_M2, align 4
  %50 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %51 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %41
  br label %69

53:                                               ; preds = %2
  %54 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %55 = call %struct.wpabuf* @wps_build_wsc_nack(%struct.wps_data* %54)
  store %struct.wpabuf* %55, %struct.wpabuf** %5, align 8
  %56 = load i32, i32* @WSC_NACK, align 4
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %69

58:                                               ; preds = %2
  %59 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %60 = call %struct.wpabuf* @wps_build_wsc_done(%struct.wps_data* %59)
  store %struct.wpabuf* %60, %struct.wpabuf** %5, align 8
  %61 = load i32, i32* @WSC_Done, align 4
  %62 = load i32*, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  br label %69

63:                                               ; preds = %2
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %66 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %67)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %69

69:                                               ; preds = %63, %58, %53, %52, %36, %24, %19, %14, %9
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WSC_MSG, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %76 = icmp ne %struct.wpabuf* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %79 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @wpabuf_free(i32 %80)
  %82 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %83 = call i32 @wpabuf_dup(%struct.wpabuf* %82)
  %84 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %85 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %74, %69
  %87 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %87
}

declare dso_local %struct.wpabuf* @wps_build_m1(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m3(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m5(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m7(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_wsc_nack(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_wsc_ack(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_wsc_done(%struct.wps_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
