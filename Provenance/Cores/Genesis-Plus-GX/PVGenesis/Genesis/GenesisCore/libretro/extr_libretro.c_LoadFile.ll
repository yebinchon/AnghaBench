; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_LoadFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_LoadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@system_hw = common dso_local global i64 0, align 8
@SYSTEM_MCD = common dso_local global i64 0, align 8
@cdd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CD_OPEN = common dso_local global i64 0, align 8
@cdc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@scd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@NO_DISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @LoadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @system_hw, align 8
  %5 = load i64, i64* @SYSTEM_MCD, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cdd, i32 0, i32 0), align 8
  %9 = load i64, i64* @CD_OPEN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 0), align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @cdd_load(i8* %12, i8* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scd, i32 0, i32 0, i32 0), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 0), align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @getrominfo(i8* %20)
  br label %22

22:                                               ; preds = %18, %11
  br label %23

23:                                               ; preds = %22, %7, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @NO_DISC, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cdd, i32 0, i32 0), align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @load_rom(i8* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %3, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @cdd_load(i8*, i8*) #1

declare dso_local i32 @getrominfo(i8*) #1

declare dso_local i32 @load_rom(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
