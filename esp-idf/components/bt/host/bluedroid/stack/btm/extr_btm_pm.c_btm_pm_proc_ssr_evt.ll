; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_proc_ssr_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_proc_ssr_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, i64, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@BTM_MAX_PM_RECORDS = common dso_local global i32 0, align 4
@BTM_PM_REG_NOTIF = common dso_local global i32 0, align 4
@BTM_PM_STS_SSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_pm_proc_ssr_evt(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  %13 = load i64, i64* @TRUE, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @UNUSED(i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @STREAM_TO_UINT8(i32 %16, i32* %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @STREAM_TO_UINT16(i64 %19, i32* %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @btm_handle_to_acl_index(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %85

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %3, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @STREAM_TO_UINT16(i64 %30, i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 2), align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %10, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %11, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %46, %27
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %82, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @BTM_MAX_PM_RECORDS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BTM_PM_REG_NOTIF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %53
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BTM_PM_STS_SSR, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 %72(i32 %75, i32 %76, i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %66, %63
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %49

85:                                               ; preds = %26, %49
  ret void
}

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i32 @btm_handle_to_acl_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
