; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_configure_controls.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_configure_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8** }

@system_hw = common dso_local global i32 0, align 4
@MAX_INPUTS = common dso_local global i32 0, align 4
@DEVICE_PAD6B = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SYSTEM_MD_GAMEPAD = common dso_local global i8* null, align 8
@input = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SYSTEM_MS_GAMEPAD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @configure_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_controls() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @system_hw, align 4
  switch i32 %2, label %32 [
    i32 129, label %3
    i32 130, label %3
    i32 131, label %25
    i32 128, label %25
  ]

3:                                                ; preds = %0, %0
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %15, %3
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MAX_INPUTS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32, i32* @DEVICE_PAD6B, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 4
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %4

18:                                               ; preds = %4
  %19 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %20 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @input, i32 0, i32 0), align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %23 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @input, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* %22, i8** %24, align 8
  br label %33

25:                                               ; preds = %0, %0
  %26 = load i8*, i8** @SYSTEM_MS_GAMEPAD, align 8
  %27 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @input, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @SYSTEM_MS_GAMEPAD, align 8
  %30 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @input, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* %29, i8** %31, align 8
  br label %33

32:                                               ; preds = %0
  br label %33

33:                                               ; preds = %32, %25, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
