; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake_ready.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64 }
%struct.netplay_connection = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s %u\0A\00", align 1
@MSG_CONNECTION_SLOT = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_NO_SAVESTATES = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_NO_TRANSMISSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s: \22%s\22\00", align 1
@MSG_CONNECTED_TO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@NETPLAY_STALL_NO_CONNECTION = common dso_local global i64 0, align 8
@NETPLAY_STALL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.netplay_connection*)* @netplay_handshake_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_handshake_ready(%struct.TYPE_3__* %0, %struct.netplay_connection* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.netplay_connection*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %4, align 8
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %7, align 16
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %13, i64 %18
  %20 = ptrtoint %struct.netplay_connection* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %22 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %21, i32 0, i32 1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %25 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %28 = call i32 @netplay_log_connection(i32* %22, i32 %23, i8* %26, i8* %27, i32 512)
  %29 = load i32, i32* @MSG_CONNECTION_SLOT, align 4
  %30 = call i8* @msg_hash_to_str(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %37 = load i32, i32* @NETPLAY_QUIRK_NO_TRANSMISSION, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %12
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %12
  br label %55

45:                                               ; preds = %2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %49 = load i32, i32* @MSG_CONNECTED_TO, align 4
  %50 = call i8* @msg_hash_to_str(i32 %49)
  %51 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %52 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %48, i32 512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %53)
  br label %55

55:                                               ; preds = %45, %44
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %57 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %59 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %60 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %61 = call i32 @runloop_msg_queue_push(i8* %58, i32 1, i32 180, i32 0, i32* null, i32 %59, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NETPLAY_STALL_NO_CONNECTION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load i64, i64* @NETPLAY_STALL_NONE, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %55
  ret void
}

declare dso_local i32 @netplay_log_connection(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, ...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
