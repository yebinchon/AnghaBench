; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_translator_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_translator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@RMT_TRANSLATOR_NULL_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RMT_CHANNEL_MAX = common dso_local global i64 0, align 8
@RMT_CHANNEL_ERROR_STR = common dso_local global i32 0, align 4
@p_rmt_obj = common dso_local global %struct.TYPE_7__** null, align 8
@RMT_DRIVER_ERROR_STR = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@RMT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RMT_MEM_ITEM_NUM = common dso_local global i32 0, align 4
@RMT_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RMT translator buffer create fail\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"RMT translator init done\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@MALLOC_CAP_8BIT = common dso_local global i32 0, align 4
@MALLOC_CAP_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_translator_init(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @RMT_TRANSLATOR_NULL_STR, align 4
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %12 = call i32 @RMT_CHECK(i32 %9, i32 %10, i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @RMT_CHANNEL_MAX, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @RMT_CHANNEL_ERROR_STR, align 4
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %19 = call i32 @RMT_CHECK(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_rmt_obj, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @RMT_DRIVER_ERROR_STR, align 4
  %27 = load i32, i32* @ESP_FAIL, align 4
  %28 = call i32 @RMT_CHECK(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @RMT, i32 0, i32 0), align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RMT_MEM_ITEM_NUM, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_rmt_obj, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %40, i64 %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %2
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @malloc(i32 %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_rmt_obj, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store i32* %50, i32** %55, align 8
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_rmt_obj, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load i32, i32* @RMT_TAG, align 4
  %65 = call i32 @ESP_LOGE(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ESP_FAIL, align 4
  store i32 %66, i32* %3, align 4
  br label %88

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %2
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_rmt_obj, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  store i32* %69, i32** %74, align 8
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_rmt_obj, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_rmt_obj, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @RMT_TAG, align 4
  %86 = call i32 @ESP_LOGD(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @ESP_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %68, %63
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @RMT_CHECK(i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
