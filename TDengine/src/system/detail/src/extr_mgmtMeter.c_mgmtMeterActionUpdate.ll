; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionUpdate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mgmtMeterActionUpdate(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_8__* @mgmtGetMeter(i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = call i32 @removeMeterFromMetricIndex(%struct.TYPE_8__* %25, %struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %20, %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mgmtMeterActionReset(%struct.TYPE_8__* %29, i8* %30, i32 %31, i32* null)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = call i32 @addMeterIntoMetricIndex(%struct.TYPE_8__* %43, %struct.TYPE_8__* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %28
  ret i8* null
}

declare dso_local %struct.TYPE_8__* @mgmtGetMeter(i32) #1

declare dso_local i32 @removeMeterFromMetricIndex(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @mgmtMeterActionReset(%struct.TYPE_8__*, i8*, i32, i32*) #1

declare dso_local i32 @addMeterIntoMetricIndex(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
