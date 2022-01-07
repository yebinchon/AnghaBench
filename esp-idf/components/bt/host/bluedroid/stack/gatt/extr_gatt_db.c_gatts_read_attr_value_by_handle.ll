; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_read_attr_value_by_handle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_read_attr_value_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@GATT_NOT_FOUND = common dso_local global i64 0, align 8
@GATT_REQ_READ_BLOB = common dso_local global i64 0, align 8
@GATT_PENDING = common dso_local global i64 0, align 8
@GATT_STACK_RSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatts_read_attr_value_by_handle(i32* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6, i64 %7, i32 %8, i64 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_6__*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i64 %9, i64* %21, align 8
  store i32 %10, i32* %22, align 4
  %27 = load i64, i64* @GATT_NOT_FOUND, align 8
  store i64 %27, i64* %23, align 8
  %28 = load i64*, i64** %17, align 8
  store i64* %28, i64** %25, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %98

31:                                               ; preds = %11
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %98

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %24, align 8
  br label %41

41:                                               ; preds = %92, %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i1 [ false, %41 ], [ %49, %44 ]
  br i1 %51, label %52, label %97

52:                                               ; preds = %50
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @GATT_REQ_READ_BLOB, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %19, align 8
  %66 = load i64*, i64** %18, align 8
  %67 = load i32, i32* %20, align 4
  %68 = load i64, i64* %21, align 8
  %69 = call i64 @read_attr_value(%struct.TYPE_6__* %59, i64 %60, i64** %25, i32 %64, i64 %65, i64* %66, i32 %67, i64 %68)
  store i64 %69, i64* %23, align 8
  %70 = load i64, i64* %23, align 8
  %71 = load i64, i64* @GATT_PENDING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %58
  %74 = load i64, i64* %23, align 8
  %75 = load i64, i64* @GATT_STACK_RSP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73, %58
  %78 = load i64, i64* %23, align 8
  %79 = load i64, i64* @GATT_STACK_RSP, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %26, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %26, align 4
  %90 = call i64 @gatts_send_app_read_request(i32* %82, i64 %83, i64 %86, i64 %87, i32 %88, i32 %89)
  store i64 %90, i64* %23, align 8
  br label %91

91:                                               ; preds = %77, %73
  br label %97

92:                                               ; preds = %52
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %24, align 8
  br label %41

97:                                               ; preds = %91, %50
  br label %98

98:                                               ; preds = %97, %31, %11
  %99 = load i64, i64* %23, align 8
  ret i64 %99
}

declare dso_local i64 @read_attr_value(%struct.TYPE_6__*, i64, i64**, i32, i64, i64*, i32, i64) #1

declare dso_local i64 @gatts_send_app_read_request(i32*, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
