; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netplay_connection = type { i32, i32, i32 }
%struct.info_buf_s = type { i8*, i32, i32, i8** }
%struct.retro_system_info = type { i8*, i8* }

@NETPLAY_CMD_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@NETPLAY_CONNECTION_PRE_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_handshake_info(i32* %0, %struct.netplay_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.netplay_connection*, align 8
  %6 = alloca %struct.info_buf_s, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.retro_system_info*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %9, %struct.retro_system_info** %8, align 8
  %10 = call i32 @memset(%struct.info_buf_s* %6, i32 0, i32 24)
  %11 = load i32, i32* @NETPLAY_CMD_INFO, align 4
  %12 = call i8* @htonl(i32 %11)
  %13 = getelementptr inbounds %struct.info_buf_s, %struct.info_buf_s* %6, i32 0, i32 3
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %12, i8** %15, align 8
  %16 = call i8* @htonl(i32 16)
  %17 = getelementptr inbounds %struct.info_buf_s, %struct.info_buf_s* %6, i32 0, i32 3
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.retro_system_info*, %struct.retro_system_info** %8, align 8
  %21 = icmp ne %struct.retro_system_info* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.info_buf_s, %struct.info_buf_s* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.retro_system_info*, %struct.retro_system_info** %8, align 8
  %26 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlcpy(i32 %24, i8* %27, i32 4)
  %29 = getelementptr inbounds %struct.info_buf_s, %struct.info_buf_s* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.retro_system_info*, %struct.retro_system_info** %8, align 8
  %32 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlcpy(i32 %30, i8* %33, i32 4)
  br label %42

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.info_buf_s, %struct.info_buf_s* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strlcpy(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %39 = getelementptr inbounds %struct.info_buf_s, %struct.info_buf_s* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strlcpy(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %42

42:                                               ; preds = %35, %22
  %43 = call i32 (...) @content_get_crc()
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = getelementptr inbounds %struct.info_buf_s, %struct.info_buf_s* %6, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %52 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %51, i32 0, i32 2
  %53 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %54 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netplay_send(i32* %52, i32 %55, %struct.info_buf_s* %6, i32 24)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %60 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %59, i32 0, i32 2
  %61 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %62 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netplay_send_flush(i32* %60, i32 %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58, %50
  store i32 0, i32* %3, align 4
  br label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @NETPLAY_CONNECTION_PRE_INFO, align 4
  %69 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %70 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #1

declare dso_local i32 @memset(%struct.info_buf_s*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @content_get_crc(...) #1

declare dso_local i32 @netplay_send(i32*, i32, %struct.info_buf_s*, i32) #1

declare dso_local i32 @netplay_send_flush(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
