; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_attr.c_gatt_profile_clcb_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_attr.c_gatt_profile_clcb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i8* }

@gatt_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @gatt_profile_clcb_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gatt_cb, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %9, align 8
  br label %11

11:                                               ; preds = %40, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @GATT_MAX_APPS, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** @TRUE, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @TRUE, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @BD_ADDR_LEN, align 4
  %38 = call i32 @memcpy(i32 %35, i32 %36, i32 %37)
  br label %45

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %9, align 8
  br label %11

45:                                               ; preds = %20, %11
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @GATT_MAX_APPS, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %4, align 8
  br label %52

51:                                               ; preds = %45
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %52

52:                                               ; preds = %51, %49
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %53
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
