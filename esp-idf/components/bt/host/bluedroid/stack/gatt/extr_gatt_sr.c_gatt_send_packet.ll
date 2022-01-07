; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_send_packet.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GATT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_NO_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_send_packet(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @GATT_ILLEGAL_PARAMETER, align 4
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 4, %23
  %25 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @osi_malloc(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %8, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @GATT_NO_RESOURCES, align 4
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %19
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @memset(%struct.TYPE_8__* %36, i32 0, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 1
  %44 = bitcast %struct.TYPE_8__* %43 to i32*
  %45 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @memcpy(i32* %48, i32* %49, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = call i32 @attp_send_sr_msg(%struct.TYPE_7__* %52, %struct.TYPE_8__* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %35, %33, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @attp_send_sr_msg(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
