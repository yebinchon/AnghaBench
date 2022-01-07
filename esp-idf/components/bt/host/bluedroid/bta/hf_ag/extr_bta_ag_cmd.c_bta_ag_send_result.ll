; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@BTA_AG_AT_MAX_LEN = common dso_local global i32 0, align 4
@bta_ag_result_tbl = common dso_local global %struct.TYPE_5__* null, align 8
@BTA_AG_RES_FMT_INT = common dso_local global i64 0, align 8
@BTA_AG_RES_FMT_STR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bta_ag_send_result: %s\00", align 1
@BTA_AG_HSP = common dso_local global i64 0, align 8
@COLON_IDX_4_VGSVGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i8*, i64)* @bta_ag_send_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_ag_send_result(%struct.TYPE_4__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @BTA_AG_AT_MAX_LEN, align 4
  %14 = add nsw i32 %13, 16
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i8* %17, i8** %11, align 8
  %18 = trunc i64 %15 to i32
  %19 = call i32 @memset(i8* %17, i32* null, i32 %18)
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %11, align 8
  store i8 13, i8* %20, align 1
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %11, align 8
  store i8 10, i8* %22, align 1
  %24 = load i8*, i8** %11, align 8
  %25 = trunc i64 %15 to i32
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bta_ag_result_tbl, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @BCM_STRCPY_S(i8* %24, i32 %25, i8* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bta_ag_result_tbl, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = load i8*, i8** %11, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %11, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bta_ag_result_tbl, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BTA_AG_RES_FMT_INT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %4
  %49 = load i64, i64* %8, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @utl_itoa(i32 %50, i8* %51)
  %53 = load i8*, i8** %11, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %11, align 8
  br label %75

56:                                               ; preds = %4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bta_ag_result_tbl, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BTA_AG_RES_FMT_STR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load i8*, i8** %11, align 8
  %66 = trunc i64 %15 to i32
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @BCM_STRCPY_S(i8* %65, i32 %66, i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %64, %56
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  store i8 13, i8* %76, align 1
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 8
  store i8 10, i8* %78, align 1
  %80 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = ptrtoint i8* %17 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @PORT_WriteData(i32 %83, i8* %17, i32 %88, i32* %12)
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32*, i32) #2

declare dso_local i32 @BCM_STRCPY_S(i8*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @utl_itoa(i32, i8*) #2

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, ...) #2

declare dso_local i32 @PORT_WriteData(i32, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
