; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_api.c_BTA_AgRegister.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_api.c_BTA_AgRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64**, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BTA_AG_API_REGISTER_EVT = common dso_local global i32 0, align 4
@BTA_AG_NUM_IDX = common dso_local global i32 0, align 4
@BTA_SERVICE_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTA_AgRegister(i32 %0, i32 %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call i64 @osi_malloc(i32 32)
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %87

16:                                               ; preds = %5
  %17 = load i32, i32* @BTA_AG_API_REGISTER_EVT, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %81, %16
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @BTA_AG_NUM_IDX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load i8**, i8*** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64**, i64*** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64*, i64** %47, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* @BTA_SERVICE_NAME_LEN, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i8**, i8*** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @BTA_SERVICE_NAME_LEN, align 4
  %60 = call i32 @BCM_STRNCPY_S(i64* %51, i32 %53, i8* %58, i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64**, i64*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64*, i64** %63, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* @BTA_SERVICE_NAME_LEN, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 0, i64* %70, align 8
  br label %80

71:                                               ; preds = %37
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64**, i64*** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64*, i64** %74, i64 %76
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %44
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %33

84:                                               ; preds = %33
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = call i32 @bta_sys_sendmsg(%struct.TYPE_5__* %85)
  br label %87

87:                                               ; preds = %84, %5
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @BCM_STRNCPY_S(i64*, i32, i8*, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
