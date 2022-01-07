; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_set_event_filter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_set_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@HCI_SET_EVENT_FILTER = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@HCI_FILTER_COND_DEVICE_CLASS = common dso_local global i32 0, align 4
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@HCI_FILTER_COND_BD_ADDR = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_set_event_filter(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = add nsw i32 2, %12
  %14 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %5, align 4
  br label %112

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 1
  %21 = bitcast %struct.TYPE_4__* %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @HCI_SET_EVENT_FILTER, align 4
  %26 = call i32 @UINT16_TO_STREAM(i32* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %95

29:                                               ; preds = %18
  %30 = load i32, i32* @HCIC_PREAMBLE_SIZE, align 4
  %31 = add nsw i32 %30, 2
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 2, %39
  %41 = call i32 @UINT8_TO_STREAM(i32* %38, i32 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @UINT8_TO_STREAM(i32* %42, i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @UINT8_TO_STREAM(i32* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @HCI_FILTER_COND_DEVICE_CLASS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %29
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @DEVCLASS_TO_STREAM(i32* %52, i32* %53)
  %55 = load i32, i32* @DEV_CLASS_LEN, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @DEVCLASS_TO_STREAM(i32* %59, i32* %60)
  %62 = load i32, i32* @DEV_CLASS_LEN, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %8, align 8
  %66 = load i32, i32* @DEV_CLASS_LEN, align 4
  %67 = mul nsw i32 2, %66
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %86

70:                                               ; preds = %29
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @HCI_FILTER_COND_BD_ADDR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @BDADDR_TO_STREAM(i32* %75, i32* %76)
  %78 = load i32, i32* @BD_ADDR_LEN, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %8, align 8
  %82 = load i32, i32* @BD_ADDR_LEN, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %74, %70
  br label %86

86:                                               ; preds = %85, %51
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ARRAY_TO_STREAM(i32* %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  br label %107

95:                                               ; preds = %18
  %96 = load i32, i32* @HCIC_PREAMBLE_SIZE, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @UINT8_TO_STREAM(i32* %102, i32 1)
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @UINT8_TO_STREAM(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %95, %94
  %108 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = call i32 @btu_hcif_send_cmd(i32 %108, %struct.TYPE_4__* %109)
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %16
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @DEVCLASS_TO_STREAM(i32*, i32*) #1

declare dso_local i32 @BDADDR_TO_STREAM(i32*, i32*) #1

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32*, i32) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
