; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmst.c_send_protocol_select.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmst.c_send_protocol_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CS_PKT_PROTOCOL_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\\\\%d.%d.%d.%d\\%s\\%d\00", align 1
@LOCAL_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@LOCAL_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @send_protocol_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_protocol_select(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = load i32, i32* @CS_PKT_PROTOCOL_SELECT, align 4
  %11 = call i32 @start_command_packet(%struct.TYPE_8__* %9, i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = call i32 @insert_command_prefixes(%struct.TYPE_9__* %12, i32 0, i32 -1)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = call i32 @bytestream_put_le32(i32* %15, i32 0)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = call i32 @bytestream_put_le32(i32* %18, i32 10000000)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @bytestream_put_le32(i32* %21, i32 2)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* @LOCAL_ADDRESS, align 4
  %25 = ashr i32 %24, 24
  %26 = and i32 %25, 255
  %27 = load i32, i32* @LOCAL_ADDRESS, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = load i32, i32* @LOCAL_ADDRESS, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = load i32, i32* @LOCAL_ADDRESS, align 4
  %34 = and i32 %33, 255
  %35 = load i32, i32* @LOCAL_PORT, align 4
  %36 = call i32 @snprintf(i8* %23, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %39 = call i32 @mms_put_utf16(%struct.TYPE_9__* %37, i8* %38)
  store i32 %39, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = call i32 @send_command_packet(%struct.TYPE_8__* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @start_command_packet(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @insert_command_prefixes(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @bytestream_put_le32(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mms_put_utf16(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @send_command_packet(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
