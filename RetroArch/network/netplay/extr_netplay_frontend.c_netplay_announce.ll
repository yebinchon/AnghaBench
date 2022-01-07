; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_announce.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i64*, i64* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 }
%struct.retro_system_info = type { i8*, i8* }
%struct.string_list = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@__const.netplay_announce.url = private unnamed_addr constant [2048 x i8] c"http://lobby.libretro.com/add/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@RARCH_PATH_SUBSYSTEM = common dso_local global i32 0, align 4
@RARCH_PATH_BASENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [197 x i8] c"username=%s&core_name=%s&core_version=%s&game_name=%s&game_crc=%08X&port=%d&mitm_server=%s&has_password=%d&has_spectate_password=%d&force_mitm=%d&retroarch_version=%s&frontend=%s&subsystem_name=%s\00", align 1
@PACKAGE_VERSION = common dso_local global i8* null, align 8
@netplay_announce_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @netplay_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_announce() #0 {
  %1 = alloca [4600 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.retro_system_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca i32, align 4
  %16 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %2, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %3, align 8
  %20 = bitcast [2048 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([2048 x i8], [2048 x i8]* @__const.netplay_announce.url, i32 0, i32 0), i64 2048, i1 false)
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %21 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %11, align 8
  %22 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %22, %struct.retro_system_info** %12, align 8
  %23 = call i32 (...) @content_get_crc()
  store i32 %23, i32* %13, align 4
  %24 = call %struct.string_list* (...) @path_get_subsystem_list()
  store %struct.string_list* %24, %struct.string_list** %14, align 8
  %25 = getelementptr inbounds [4600 x i8], [4600 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %25, align 16
  %26 = load %struct.string_list*, %struct.string_list** %14, align 8
  %27 = icmp ne %struct.string_list* %26, null
  br i1 %27, label %28, label %66

28:                                               ; preds = %0
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.string_list*, %struct.string_list** %14, align 8
  %32 = getelementptr inbounds %struct.string_list, %struct.string_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = getelementptr inbounds [4600 x i8], [4600 x i8]* %1, i64 0, i64 0
  %37 = load %struct.string_list*, %struct.string_list** %14, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @path_basename(i8* %44)
  %46 = call i32 @strlcat(i8* %36, i8* %45, i32 4600)
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.string_list*, %struct.string_list** %14, align 8
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub i32 %50, 1
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = getelementptr inbounds [4600 x i8], [4600 x i8]* %1, i64 0, i64 0
  %55 = call i32 @strlcat(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 4600)
  br label %56

56:                                               ; preds = %53, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %15, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %29

60:                                               ; preds = %29
  %61 = getelementptr inbounds [4600 x i8], [4600 x i8]* %1, i64 0, i64 0
  %62 = call i32 @net_http_urlencode(i8** %7, i8* %61)
  %63 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %64 = call i8* @path_get(i32 %63)
  %65 = call i32 @net_http_urlencode(i8** %8, i8* %64)
  store i32 0, i32* %13, align 4
  br label %81

66:                                               ; preds = %0
  %67 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %68 = call i8* @path_get(i32 %67)
  %69 = call i8* @path_basename(i8* %68)
  %70 = call i32 @string_is_empty(i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %74 = call i8* @path_get(i32 %73)
  %75 = call i8* @path_basename(i8* %74)
  br label %77

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i8* [ %75, %72 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %76 ]
  %79 = call i32 @net_http_urlencode(i8** %7, i8* %78)
  %80 = call i32 @net_http_urlencode(i8** %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %60
  %82 = trunc i64 %17 to i32
  %83 = call i32 @netplay_get_architecture(i8* %19, i32 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @net_http_urlencode(i8** %5, i8* %87)
  %89 = load %struct.retro_system_info*, %struct.retro_system_info** %12, align 8
  %90 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @net_http_urlencode(i8** %6, i8* %91)
  %93 = load %struct.retro_system_info*, %struct.retro_system_info** %12, align 8
  %94 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @net_http_urlencode(i8** %9, i8* %95)
  %97 = call i32 @net_http_urlencode(i8** %10, i8* %19)
  %98 = getelementptr inbounds [4600 x i8], [4600 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %98, align 16
  %99 = getelementptr inbounds [4600 x i8], [4600 x i8]* %1, i64 0, i64 0
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i8*, i8** @PACKAGE_VERSION, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @snprintf(i8* %99, i32 4600, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.2, i64 0, i64 0), i8* %100, i8* %101, i8* %102, i8* %103, i32 %104, i32 %108, i8* %112, i32 %120, i32 %128, i32 %132, i8* %133, i8* %19, i8* %134)
  %136 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %137 = getelementptr inbounds [4600 x i8], [4600 x i8]* %1, i64 0, i64 0
  %138 = load i32, i32* @netplay_announce_cb, align 4
  %139 = call i32 @task_push_http_post_transfer(i8* %136, i8* %137, i32 1, i32* null, i32 %138, i32* null)
  %140 = load i8*, i8** %5, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %81
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %81
  %146 = load i8*, i8** %6, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @free(i8* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i8*, i8** %7, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @free(i8* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i8*, i8** %9, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i8*, i8** %9, align 8
  %162 = call i32 @free(i8* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i8*, i8** %10, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = call i32 @free(i8* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %170)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #3

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #3

declare dso_local i32 @content_get_crc(...) #3

declare dso_local %struct.string_list* @path_get_subsystem_list(...) #3

declare dso_local i32 @strlcat(i8*, i8*, i32) #3

declare dso_local i8* @path_basename(i8*) #3

declare dso_local i32 @net_http_urlencode(i8**, i8*) #3

declare dso_local i8* @path_get(i32) #3

declare dso_local i32 @string_is_empty(i8*) #3

declare dso_local i32 @netplay_get_architecture(i8*, i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*) #3

declare dso_local i32 @task_push_http_post_transfer(i8*, i8*, i32, i32*, i32, i32*) #3

declare dso_local i32 @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
