; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_apply_cheats.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_apply_cheats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@cheat_manager_state = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CHEAT_HANDLER_TYPE_EMU = common dso_local global i64 0, align 8
@MSG_APPLYING_CHEAT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cheat_manager_apply_cheats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  store i32 0, i32* %2, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %65

7:                                                ; preds = %0
  %8 = call i32 (...) @core_reset_cheat()
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %50, %7
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 0), align 8
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHEAT_HANDLER_TYPE_EMU, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  %31 = load i32, i32* %2, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %2, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %36 = load i32, i32* %1, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @string_is_empty(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %30
  %47 = call i32 @core_set_cheat(%struct.TYPE_6__* %3)
  br label %48

48:                                               ; preds = %46, %30
  br label %49

49:                                               ; preds = %48, %21, %13
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %9

53:                                               ; preds = %9
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 0), align 8
  %55 = icmp ugt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* @MSG_APPLYING_CHEAT, align 4
  %58 = call i32 @msg_hash_to_str(i32 %57)
  %59 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %60 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %61 = call i32 @runloop_msg_queue_push(i32 %58, i32 1, i32 180, i32 1, i32* null, i32 %59, i32 %60)
  %62 = load i32, i32* @MSG_APPLYING_CHEAT, align 4
  %63 = call i32 @msg_hash_to_str(i32 %62)
  %64 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %6, %56, %53
  ret void
}

declare dso_local i32 @core_reset_cheat(...) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @core_set_cheat(%struct.TYPE_6__*) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
