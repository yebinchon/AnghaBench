; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_init_controllers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_init_controllers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.retro_controller_description = type { i8* }

@runloop_system = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MAX_USERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"Input device ID %u is unknown to this libretro implementation. Using RETRO_DEVICE_JOYPAD.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Joypad\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s %u.\0A\00", align 1
@MSG_VALUE_DISCONNECTING_DEVICE_FROM_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s %u: %s (ID: %u).\0A\00", align 1
@MSG_CONNECTING_TO_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @command_event_init_controllers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_init_controllers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.retro_controller_description*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* @runloop_system, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %102, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @MAX_USERS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %105

12:                                               ; preds = %8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.retro_controller_description* null, %struct.retro_controller_description** %6, align 8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @input_config_get_device(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %1, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.retro_controller_description* @libretro_find_controller_description(i32* %31, i32 %32)
  store %struct.retro_controller_description* %33, %struct.retro_controller_description** %6, align 8
  br label %34

34:                                               ; preds = %24, %17
  br label %35

35:                                               ; preds = %34, %12
  %36 = load %struct.retro_controller_description*, %struct.retro_controller_description** %6, align 8
  %37 = icmp ne %struct.retro_controller_description* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.retro_controller_description*, %struct.retro_controller_description** %6, align 8
  %40 = getelementptr inbounds %struct.retro_controller_description, %struct.retro_controller_description* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 129
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 129, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %48, %45
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %74 [
    i32 128, label %57
    i32 129, label %63
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @MSG_VALUE_DISCONNECTING_DEVICE_FROM_PORT, align 4
  %59 = call i32 @msg_hash_to_str(i32 %58)
  %60 = load i32, i32* %1, align 4
  %61 = add i32 %60, 1
  %62 = call i32 (i8*, i32, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61)
  store i32 1, i32* %5, align 4
  br label %82

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %66, %63
  br label %82

74:                                               ; preds = %55
  %75 = load i32, i32* @MSG_CONNECTING_TO_PORT, align 4
  %76 = call i32 @msg_hash_to_str(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %1, align 4
  %80 = add i32 %79, 1
  %81 = call i32 (i8*, i32, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77, i8* %78, i32 %80)
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %74, %73, %57
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* %1, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %1, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = call i32 @core_set_controller_port_device(%struct.TYPE_7__* %3)
  br label %101

101:                                              ; preds = %95, %88, %85, %82
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %1, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %8

105:                                              ; preds = %8
  ret void
}

declare dso_local i32 @input_config_get_device(i32) #1

declare dso_local %struct.retro_controller_description* @libretro_find_controller_description(i32*, i32) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, ...) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @core_set_controller_port_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
