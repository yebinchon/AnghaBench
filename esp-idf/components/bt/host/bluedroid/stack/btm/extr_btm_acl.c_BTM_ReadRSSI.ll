; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_ReadRSSI.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_ReadRSSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"BTM_ReadRSSI: RemBdAddr: %02x%02x%02x%02x%02x%02x\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTM_BUSY = common dso_local global i8* null, align 8
@BTU_TTYPE_BTM_ACL = common dso_local global i32 0, align 4
@BTM_DEV_REPLY_TIMEOUT = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i8* null, align 8
@BTM_CMD_STARTED = common dso_local global i8* null, align 8
@BTM_UNKNOWN_ADDR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BTM_ReadRSSI(i32* %0, i32 %1, i32 (%struct.TYPE_11__*)** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.TYPE_11__*)**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.TYPE_11__*)** %2, i32 (%struct.TYPE_11__*)*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %30 = icmp ne i32 (%struct.TYPE_11__*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load i8*, i8** @BTM_BUSY, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32 (%struct.TYPE_11__*)**, i32 (%struct.TYPE_11__*)*** %7, align 8
  %35 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %34, align 8
  %36 = call i32 %35(%struct.TYPE_11__* %9)
  %37 = load i8*, i8** @BTM_BUSY, align 8
  store i8* %37, i8** %4, align 8
  br label %67

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.TYPE_12__* @btm_bda_to_acl(i32* %39, i32 %40)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %8, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load i32, i32* @BTU_TTYPE_BTM_ACL, align 4
  %46 = load i32, i32* @BTM_DEV_REPLY_TIMEOUT, align 4
  %47 = call i32 @btu_start_timer(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0), i32 %45, i32 %46)
  %48 = load i32 (%struct.TYPE_11__*)**, i32 (%struct.TYPE_11__*)*** %7, align 8
  %49 = bitcast i32 (%struct.TYPE_11__*)** %48 to i32 (%struct.TYPE_11__*)*
  store i32 (%struct.TYPE_11__*)* %49, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @btsnd_hcic_read_rssi(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %44
  store i32 (%struct.TYPE_11__*)* null, i32 (%struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %56 = call i32 @btu_stop_timer(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0))
  %57 = load i8*, i8** @BTM_NO_RESOURCES, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i32 (%struct.TYPE_11__*)**, i32 (%struct.TYPE_11__*)*** %7, align 8
  %60 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %59, align 8
  %61 = call i32 %60(%struct.TYPE_11__* %9)
  %62 = load i8*, i8** @BTM_NO_RESOURCES, align 8
  store i8* %62, i8** %4, align 8
  br label %67

63:                                               ; preds = %44
  %64 = load i8*, i8** @BTM_CMD_STARTED, align 8
  store i8* %64, i8** %4, align 8
  br label %67

65:                                               ; preds = %38
  %66 = load i8*, i8** @BTM_UNKNOWN_ADDR, align 8
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %65, %63, %55, %31
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i32 @BTM_TRACE_API(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @btm_bda_to_acl(i32*, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @btsnd_hcic_read_rssi(i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
