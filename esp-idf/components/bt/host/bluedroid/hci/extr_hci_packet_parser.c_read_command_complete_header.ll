; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_packet_parser.c_read_command_complete_header.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_packet_parser.c_read_command_complete_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@HCI_COMMAND_COMPLETE_EVT = common dso_local global i64 0, align 8
@NO_OPCODE_CHECKING = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_3__*, i64, i64)* @read_command_complete_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @read_command_complete_header(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  store i64* %21, i64** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = call i32 @STREAM_TO_UINT8(i64 %22, i64* %23)
  %25 = load i64, i64* %10, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = call i32 @STREAM_TO_UINT8(i64 %25, i64* %26)
  store i64 4, i64* %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @HCI_COMMAND_COMPLETE_EVT, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 4, %34
  %36 = icmp uge i64 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @STREAM_SKIP_UINT8(i64* %39)
  %41 = load i64, i64* %12, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = call i32 @STREAM_TO_UINT16(i64 %41, i64* %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @NO_OPCODE_CHECKING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %3
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %53

53:                                               ; preds = %47, %3
  %54 = load i64, i64* %13, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = call i32 @STREAM_TO_UINT8(i64 %54, i64* %55)
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* @HCI_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i64* null, i64** %4, align 8
  br label %63

61:                                               ; preds = %53
  %62 = load i64*, i64** %8, align 8
  store i64* %62, i64** %4, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = load i64*, i64** %4, align 8
  ret i64* %64
}

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STREAM_SKIP_UINT8(i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
