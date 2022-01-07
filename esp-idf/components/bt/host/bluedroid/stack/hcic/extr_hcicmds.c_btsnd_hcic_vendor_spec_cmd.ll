; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_vendor_spec_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_vendor_spec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_GRP_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btsnd_hcic_vendor_spec_cmd(i8* %0, i32 %1, i64 %2, i64* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 1
  %17 = bitcast %struct.TYPE_3__* %16 to i64*
  store i64* %17, i64** %12, align 8
  %18 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 8, i32* %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = bitcast i64* %26 to i8**
  store i8* %25, i8** %27, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 8
  store i64* %29, i64** %12, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = load i32, i32* @HCI_GRP_VENDOR_SPECIFIC, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @UINT16_TO_STREAM(i64* %30, i32 %33)
  %35 = load i64*, i64** %12, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @UINT8_TO_STREAM(i64* %35, i64 %36)
  %38 = load i64*, i64** %12, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @ARRAY_TO_STREAM(i64* %38, i64* %39, i64 %40)
  %42 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %44 = call i32 @btu_hcif_send_cmd(i32 %42, %struct.TYPE_3__* %43)
  ret void
}

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #1

declare dso_local i32 @ARRAY_TO_STREAM(i64*, i64*, i64) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
