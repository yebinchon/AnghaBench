; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_Raise.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_Raise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@RAISESPEED = common dso_local global i64 0, align 8
@WEAPONTOP = common dso_local global i64 0, align 8
@weaponinfo = common dso_local global %struct.TYPE_9__* null, align 8
@ps_weapon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_Raise(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load i64, i64* @RAISESPEED, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %9, %6
  store i64 %10, i64* %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WEAPONTOP, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load i64, i64* @WEAPONTOP, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @weaponinfo, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i32, i32* @ps_weapon, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @P_SetPsprite(%struct.TYPE_8__* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @P_SetPsprite(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
