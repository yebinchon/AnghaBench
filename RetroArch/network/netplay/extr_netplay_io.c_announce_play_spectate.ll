; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_announce_play_spectate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_announce_play_spectate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_NETPLAY_PLAYER_S_LEFT = common dso_local global i32 0, align 4
@NETPLAY_NICK_LEN = common dso_local global i32 0, align 4
@MSG_NETPLAY_YOU_HAVE_LEFT_THE_GAME = common dso_local global i32 0, align 4
@MAX_INPUT_DEVICES = common dso_local global i32 0, align 4
@MSG_NETPLAY_S_HAS_JOINED_AS_PLAYER_N = common dso_local global i32 0, align 4
@MSG_NETPLAY_YOU_HAVE_JOINED_AS_PLAYER_N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@MSG_NETPLAY_S_HAS_JOINED_WITH_INPUT_DEVICES_S = common dso_local global i32 0, align 4
@MSG_NETPLAY_YOU_HAVE_JOINED_WITH_INPUT_DEVICES_S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"[netplay] %s\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32)* @announce_play_spectate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @announce_play_spectate(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 511
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %138 [
    i32 128, label %17
    i32 130, label %33
    i32 129, label %33
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %22 = load i32, i32* @MSG_NETPLAY_PLAYER_S_LEFT, align 4
  %23 = call i8* @msg_hash_to_str(i32 %22)
  %24 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 511, i8* %23, i32 %24, i8* %25)
  br label %32

27:                                               ; preds = %17
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %29 = load i32, i32* @MSG_NETPLAY_YOU_HAVE_LEFT_THE_GAME, align 4
  %30 = call i8* @msg_hash_to_str(i32 %29)
  %31 = call i32 @strlcpy(i8* %28, i8* %30, i32 512)
  br label %32

32:                                               ; preds = %27, %20
  br label %139

33:                                               ; preds = %4, %4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %52

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %11, align 4
  br label %51

50:                                               ; preds = %45
  store i32 -1, i32* %11, align 4
  br label %55

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %34

55:                                               ; preds = %50, %34
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %63 = load i32, i32* @MSG_NETPLAY_S_HAS_JOINED_AS_PLAYER_N, align 4
  %64 = call i8* @msg_hash_to_str(i32 %63)
  %65 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %62, i32 511, i8* %64, i32 %65, i8* %66, i32 %68)
  br label %77

70:                                               ; preds = %58
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %72 = load i32, i32* @MSG_NETPLAY_YOU_HAVE_JOINED_AS_PLAYER_N, align 4
  %73 = call i8* @msg_hash_to_str(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %71, i32 511, i8* %73, i32 %75)
  br label %77

77:                                               ; preds = %70, %61
  br label %137

78:                                               ; preds = %55
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %79, align 16
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %116, %78
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %116

91:                                               ; preds = %84
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i64, i64* %13, align 8
  %99 = sub i64 511, %98
  %100 = trunc i64 %99 to i32
  %101 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %102 = load i64, i64* %13, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %13, align 8
  br label %104

104:                                              ; preds = %94, %91
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i64, i64* %13, align 8
  %109 = sub i64 511, %108
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %107, i32 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %13, align 8
  br label %116

116:                                              ; preds = %104, %90
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %80

119:                                              ; preds = %80
  %120 = load i8*, i8** %6, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %124 = load i32, i32* @MSG_NETPLAY_S_HAS_JOINED_WITH_INPUT_DEVICES_S, align 4
  %125 = call i8* @msg_hash_to_str(i32 %124)
  %126 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %129 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %123, i32 511, i8* %125, i32 %126, i8* %127, i64 512, i8* %128)
  br label %136

130:                                              ; preds = %119
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %132 = load i32, i32* @MSG_NETPLAY_YOU_HAVE_JOINED_WITH_INPUT_DEVICES_S, align 4
  %133 = call i8* @msg_hash_to_str(i32 %132)
  %134 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %135 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %131, i32 511, i8* %133, i64 512, i8* %134)
  br label %136

136:                                              ; preds = %130, %122
  br label %137

137:                                              ; preds = %136, %77
  br label %139

138:                                              ; preds = %4
  br label %139

139:                                              ; preds = %138, %137, %32
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %141 = load i8, i8* %140, align 16
  %142 = icmp ne i8 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %145 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  %146 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %147 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %148 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %149 = call i32 @runloop_msg_queue_push(i8* %146, i32 1, i32 180, i32 0, i32* null, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %139
  ret void
}

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
