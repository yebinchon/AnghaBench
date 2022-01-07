; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_encrypt_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_encrypt_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 (i32, i32, i32)*, i32 }

@BTA_SUCCESS = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTA_DM_CONNECTED = common dso_local global i64 0, align 8
@BTA_WRONG_MODE = common dso_local global i32 0, align 4
@BTA_NO_RESOURCES = common dso_local global i32 0, align 4
@BTA_BUSY = common dso_local global i32 0, align 4
@BTA_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"bta_dm_encrypt_cback status =%d p_callback=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_encrypt_cback(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i32, i32, i32)**, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @BTA_SUCCESS, align 4
  store i32 %12, i32* %9, align 4
  store i32 (i32, i32, i32)** null, i32 (i32, i32, i32)*** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @UNUSED(i8* %13)
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %38, %4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 0, i32 0), align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 0, i32 1), align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @bdcmp(i32 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 0, i32 1), align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BTA_DM_CONNECTED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %15

41:                                               ; preds = %36, %15
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 0, i32 0), align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 0, i32 1), align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %49, align 8
  %51 = bitcast i32 (i32, i32, i32)* %50 to i32 (i32, i32, i32)**
  store i32 (i32, i32, i32)** %51, i32 (i32, i32, i32)*** %10, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 0, i32 1), align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 (i32, i32, i32)* null, i32 (i32, i32, i32)** %55, align 8
  br label %56

56:                                               ; preds = %45, %41
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %65 [
    i32 129, label %58
    i32 128, label %59
    i32 130, label %61
    i32 131, label %63
  ]

58:                                               ; preds = %56
  br label %67

59:                                               ; preds = %56
  %60 = load i32, i32* @BTA_WRONG_MODE, align 4
  store i32 %60, i32* %9, align 4
  br label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @BTA_NO_RESOURCES, align 4
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @BTA_BUSY, align 4
  store i32 %64, i32* %9, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @BTA_FAILURE, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %63, %61, %59, %58
  %68 = load i32, i32* %9, align 4
  %69 = load i32 (i32, i32, i32)**, i32 (i32, i32, i32)*** %10, align 8
  %70 = bitcast i32 (i32, i32, i32)** %69 to i32 (i32, i32, i32)*
  %71 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %68, i32 (i32, i32, i32)* %70)
  %72 = load i32 (i32, i32, i32)**, i32 (i32, i32, i32)*** %10, align 8
  %73 = icmp ne i32 (i32, i32, i32)** %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32 (i32, i32, i32)**, i32 (i32, i32, i32)*** %10, align 8
  %76 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 %76(i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %67
  ret void
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i64 @bdcmp(i32, i32) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, i32 (i32, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
