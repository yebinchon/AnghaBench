; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_inq_db_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_inq_db_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@btm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_INQ_DB_SIZE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @btm_inq_db_new(i32 %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 0), align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 0), align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  store i64 4294967295, i64* %7, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @BTM_INQ_DB_SIZE, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = call i32 @memset(%struct.TYPE_11__* %20, i32 0, i32 24)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @BD_ADDR_LEN, align 4
  %29 = call i32 @memcpy(i32 %26, i32 %27, i32 %28)
  %30 = load i8*, i8** @TRUE, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %2, align 8
  br label %66

34:                                               ; preds = %14
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %6, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %4, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %4, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 1
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %5, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = call i32 @memset(%struct.TYPE_11__* %52, i32 0, i32 24)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @BD_ADDR_LEN, align 4
  %61 = call i32 @memcpy(i32 %58, i32 %59, i32 %60)
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %2, align 8
  br label %66

66:                                               ; preds = %51, %19
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %67
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
