; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_Cache.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_Cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i8* }

@ART_FRAMEL = common dso_local global i32 0, align 4
@ART_FRAMER = common dso_local global i32 0, align 4
@ART_MODEL0 = common dso_local global i32 0, align 4
@ART_MODEL1 = common dso_local global i32 0, align 4
@ART_BACK0 = common dso_local global i32 0, align 4
@ART_BACK1 = common dso_local global i32 0, align 4
@ART_FX_BASE = common dso_local global i32 0, align 4
@s_playersettings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ART_FX_RED = common dso_local global i32 0, align 4
@ART_FX_YELLOW = common dso_local global i32 0, align 4
@ART_FX_GREEN = common dso_local global i32 0, align 4
@ART_FX_TEAL = common dso_local global i32 0, align 4
@ART_FX_BLUE = common dso_local global i32 0, align 4
@ART_FX_CYAN = common dso_local global i32 0, align 4
@ART_FX_WHITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PlayerSettings_Cache() #0 {
  %1 = load i32, i32* @ART_FRAMEL, align 4
  %2 = call i8* @trap_R_RegisterShaderNoMip(i32 %1)
  %3 = load i32, i32* @ART_FRAMER, align 4
  %4 = call i8* @trap_R_RegisterShaderNoMip(i32 %3)
  %5 = load i32, i32* @ART_MODEL0, align 4
  %6 = call i8* @trap_R_RegisterShaderNoMip(i32 %5)
  %7 = load i32, i32* @ART_MODEL1, align 4
  %8 = call i8* @trap_R_RegisterShaderNoMip(i32 %7)
  %9 = load i32, i32* @ART_BACK0, align 4
  %10 = call i8* @trap_R_RegisterShaderNoMip(i32 %9)
  %11 = load i32, i32* @ART_BACK1, align 4
  %12 = call i8* @trap_R_RegisterShaderNoMip(i32 %11)
  %13 = load i32, i32* @ART_FX_BASE, align 4
  %14 = call i8* @trap_R_RegisterShaderNoMip(i32 %13)
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 1), align 8
  %15 = load i32, i32* @ART_FX_RED, align 4
  %16 = call i8* @trap_R_RegisterShaderNoMip(i32 %15)
  %17 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @ART_FX_YELLOW, align 4
  %20 = call i8* @trap_R_RegisterShaderNoMip(i32 %19)
  %21 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @ART_FX_GREEN, align 4
  %24 = call i8* @trap_R_RegisterShaderNoMip(i32 %23)
  %25 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @ART_FX_TEAL, align 4
  %28 = call i8* @trap_R_RegisterShaderNoMip(i32 %27)
  %29 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @ART_FX_BLUE, align 4
  %32 = call i8* @trap_R_RegisterShaderNoMip(i32 %31)
  %33 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @ART_FX_CYAN, align 4
  %36 = call i8* @trap_R_RegisterShaderNoMip(i32 %35)
  %37 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 0), align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 5
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @ART_FX_WHITE, align 4
  %40 = call i8* @trap_R_RegisterShaderNoMip(i32 %39)
  %41 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playersettings, i32 0, i32 0), align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 6
  store i8* %40, i8** %42, align 8
  ret void
}

declare dso_local i8* @trap_R_RegisterShaderNoMip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
