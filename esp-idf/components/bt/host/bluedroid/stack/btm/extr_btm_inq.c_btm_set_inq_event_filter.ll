; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_set_inq_event_filter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_set_inq_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"btm_set_inq_event_filter: filter type %d [Clear-0, COD-1, BDADDR-2]\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"                       condition [%02x%02x%02x %02x%02x%02x]\0A\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@HCI_FILTER_INQUIRY_RESULT = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*)* @btm_set_inq_event_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btm_set_inq_event_filter(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %11 = load i32, i32* @DEV_CLASS_LEN, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @DEV_CLASS_LEN, align 4
  %14 = mul nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %49)
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %73 [
    i32 128, label %52
    i32 129, label %68
    i32 130, label %72
  ]

52:                                               ; preds = %2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DEV_CLASS_LEN, align 4
  %58 = call i32 @memcpy(i32* %17, i32 %56, i32 %57)
  %59 = load i32, i32* @DEV_CLASS_LEN, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %17, i64 %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DEV_CLASS_LEN, align 4
  %67 = call i32 @memcpy(i32* %61, i32 %65, i32 %66)
  br label %75

68:                                               ; preds = %2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %9, align 8
  br label %75

72:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %75

73:                                               ; preds = %2
  %74 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

75:                                               ; preds = %72, %68, %52
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0, i32 0), align 4
  %77 = load i32, i32* @HCI_FILTER_INQUIRY_RESULT, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @btsnd_hcic_set_event_filter(i32 %77, i32 %78, i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %83, %73
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, ...) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i64 @btsnd_hcic_set_event_filter(i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
