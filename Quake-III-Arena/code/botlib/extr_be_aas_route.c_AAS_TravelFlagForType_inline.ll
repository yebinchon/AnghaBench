; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_TravelFlagForType_inline.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_TravelFlagForType_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@MAX_TRAVELTYPES = common dso_local global i32 0, align 4
@TFL_INVALID = common dso_local global i32 0, align 4
@TFL_NOTTEAM1 = common dso_local global i32 0, align 4
@TFL_NOTTEAM2 = common dso_local global i32 0, align 4
@TRAVELFLAG_NOTTEAM1 = common dso_local global i32 0, align 4
@TRAVELFLAG_NOTTEAM2 = common dso_local global i32 0, align 4
@TRAVELTYPE_MASK = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
