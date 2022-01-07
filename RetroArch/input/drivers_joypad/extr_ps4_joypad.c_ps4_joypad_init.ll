; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_ps4_joypad.c_ps4_joypad_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_ps4_joypad.c_ps4_joypad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8** }

@num_players = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sceUserServiceGetLoginUserIdList %x \00", align 1
@SCE_USER_SERVICE_MAX_LOGIN_USERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"USER %d ID %x\0A\00", align 1
@SCE_USER_SERVICE_USER_ID_INVALID = common dso_local global i8* null, align 8
@ds_joypad_states = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"USER %x HANDLE %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"NEW PAD: num_players %x \0A\00", align 1
@ps4_joypad = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ps4_joypad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps4_joypad_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* @num_players, align 4
  %8 = call i32 (...) @scePadInit()
  %9 = call i32 @sceUserServiceGetLoginUserIdList(%struct.TYPE_5__* %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %102

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %98, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SCE_USER_SERVICE_MAX_LOGIN_USERS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %101

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** @SCE_USER_SERVICE_USER_ID_INVALID, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %97

32:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @num_players, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ds_joypad_states, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i8* %38, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %33

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @num_players, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @scePadOpen(i8* %51, i32 0, i32 0, i32* null)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ds_joypad_states, align 8
  %54 = load i32, i32* @num_players, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 %52, i32* %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ds_joypad_states, align 8
  %61 = load i32, i32* @num_players, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ds_joypad_states, align 8
  %68 = load i32, i32* @num_players, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %50
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ds_joypad_states, align 8
  %76 = load i32, i32* @num_players, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ds_joypad_states, align 8
  %82 = load i32, i32* @num_players, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i8* %80, i8** %85, align 8
  %86 = load i32, i32* @num_players, align 4
  %87 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @num_players, align 4
  %89 = call i32 @ps4_joypad_name(i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ps4_joypad, i32 0, i32 0), align 4
  %91 = load i32, i32* @num_players, align 4
  %92 = call i32 @input_autoconfigure_connect(i32 %89, i32* null, i32 %90, i32 %91, i32 0, i32 0)
  %93 = load i32, i32* @num_players, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @num_players, align 4
  br label %95

95:                                               ; preds = %74, %50
  br label %96

96:                                               ; preds = %95, %46
  br label %97

97:                                               ; preds = %96, %19
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %15

101:                                              ; preds = %15
  br label %102

102:                                              ; preds = %101, %1
  ret i32 1
}

declare dso_local i32 @scePadInit(...) #1

declare dso_local i32 @sceUserServiceGetLoginUserIdList(%struct.TYPE_5__*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #1

declare dso_local i32 @scePadOpen(i8*, i32, i32, i32*) #1

declare dso_local i32 @input_autoconfigure_connect(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ps4_joypad_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
