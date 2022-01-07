; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_exec_write_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_build_exec_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GATT_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_OP_CODE_SIZE = common dso_local global i32 0, align 4
@GATT_REQ_EXEC_WRITE = common dso_local global i32 0, align 4
@GATT_PREP_WRITE_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @attp_build_exec_write_cmd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* @GATT_DATA_BUF_SIZE, align 4
  %8 = call i64 @osi_malloc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 1
  %14 = bitcast %struct.TYPE_3__* %13 to i32*
  %15 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @GATT_OP_CODE_SIZE, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @UINT8_TO_STREAM(i32* %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @GATT_REQ_EXEC_WRITE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %11
  %31 = load i32, i32* @GATT_PREP_WRITE_EXEC, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @UINT8_TO_STREAM(i32* %34, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %30, %11
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %43
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
