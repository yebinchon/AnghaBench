; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_cheat_desc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_cheat_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MENU_SETTINGS_CHEAT_BEGIN = common dso_local global i32 0, align 4
@cheat_manager_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CHEAT_HANDLER_TYPE_EMU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Emulator-Handled\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"RetroArch-Handled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_cheat_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_cheat_desc(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MENU_SETTINGS_CHEAT_BEGIN, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 0), align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 0), align 8
  %23 = load i32, i32* %15, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHEAT_HANDLER_TYPE_EMU, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @strlcpy(i8* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %38

34:                                               ; preds = %21
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @strlcpy(i8* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %7
  ret i32 0
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
