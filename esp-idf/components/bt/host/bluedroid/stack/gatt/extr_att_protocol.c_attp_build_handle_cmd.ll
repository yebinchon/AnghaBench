; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_REQ_READ_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @attp_build_handle_cmd(i32 %0, i32 %1, i32 %2) #0 {
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
  %11 = add i64 13, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @osi_malloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %7, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 1
  %19 = bitcast %struct.TYPE_3__* %18 to i32*
  %20 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @UINT8_TO_STREAM(i32* %26, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @UINT16_TO_STREAM(i32* %31, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @GATT_REQ_READ_BLOB, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %16
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @UINT16_TO_STREAM(i32* %42, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %16
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  ret %struct.TYPE_3__* %51
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
