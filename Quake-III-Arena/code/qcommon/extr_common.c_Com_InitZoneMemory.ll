; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_InitZoneMemory.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_InitZoneMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"com_zoneMegs\00", align 1
@DEF_COMZONEMEGS = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@s_zoneTotal = common dso_local global i32 0, align 4
@mainzone = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Zone data failed to allocate %i megs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_InitZoneMemory() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @DEF_COMZONEMEGS, align 4
  %3 = load i32, i32* @CVAR_LATCH, align 4
  %4 = load i32, i32* @CVAR_ARCHIVE, align 4
  %5 = or i32 %3, %4
  %6 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 16777216, i32* @s_zoneTotal, align 4
  br label %18

12:                                               ; preds = %0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 1024
  %17 = mul nsw i32 %16, 1024
  store i32 %17, i32* @s_zoneTotal, align 4
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32, i32* @s_zoneTotal, align 4
  %20 = call i32 @calloc(i32 %19, i32 1)
  store i32 %20, i32* @mainzone, align 4
  %21 = load i32, i32* @mainzone, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ERR_FATAL, align 4
  %25 = load i32, i32* @s_zoneTotal, align 4
  %26 = sdiv i32 %25, 1048576
  %27 = call i32 @Com_Error(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @mainzone, align 4
  %30 = load i32, i32* @s_zoneTotal, align 4
  %31 = call i32 @Z_ClearZone(i32 %29, i32 %30)
  ret void
}

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i32, i32) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @Z_ClearZone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
