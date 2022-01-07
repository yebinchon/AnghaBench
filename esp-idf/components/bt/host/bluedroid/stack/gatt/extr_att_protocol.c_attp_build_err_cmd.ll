; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_err_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_err_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_RSP_ERROR = common dso_local global i32 0, align 4
@GATT_HDR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @attp_build_err_cmd(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 16, %10
  %12 = add i64 %11, 5
  %13 = trunc i64 %12 to i32
  %14 = call i64 @osi_malloc(i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %7, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 1
  %20 = bitcast %struct.TYPE_3__* %19 to i32*
  %21 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @GATT_RSP_ERROR, align 4
  %26 = call i32 @UINT8_TO_STREAM(i32* %24, i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @UINT8_TO_STREAM(i32* %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @UINT16_TO_STREAM(i32* %30, i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @UINT8_TO_STREAM(i32* %33, i32 %34)
  %36 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @GATT_HDR_SIZE, align 8
  %40 = add nsw i64 %39, 1
  %41 = add nsw i64 %40, 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %17, %3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  ret %struct.TYPE_3__* %45
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
