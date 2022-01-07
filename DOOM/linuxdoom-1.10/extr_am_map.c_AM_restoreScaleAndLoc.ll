; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_restoreScaleAndLoc.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_restoreScaleAndLoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@old_m_w = common dso_local global i32 0, align 4
@m_w = common dso_local global i32 0, align 4
@old_m_h = common dso_local global i32 0, align 4
@m_h = common dso_local global i32 0, align 4
@followplayer = common dso_local global i32 0, align 4
@old_m_x = common dso_local global i64 0, align 8
@m_x = common dso_local global i64 0, align 8
@old_m_y = common dso_local global i64 0, align 8
@m_y = common dso_local global i64 0, align 8
@plr = common dso_local global %struct.TYPE_4__* null, align 8
@m_x2 = common dso_local global i64 0, align 8
@m_y2 = common dso_local global i64 0, align 8
@f_w = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@scale_mtof = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@scale_ftom = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_restoreScaleAndLoc() #0 {
  %1 = load i32, i32* @old_m_w, align 4
  store i32 %1, i32* @m_w, align 4
  %2 = load i32, i32* @old_m_h, align 4
  store i32 %2, i32* @m_h, align 4
  %3 = load i32, i32* @followplayer, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @old_m_x, align 8
  store i64 %6, i64* @m_x, align 8
  %7 = load i64, i64* @old_m_y, align 8
  store i64 %7, i64* @m_y, align 8
  br label %27

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plr, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @m_w, align 4
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* @m_x, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plr, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @m_h, align 4
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* @m_y, align 8
  br label %27

27:                                               ; preds = %8, %5
  %28 = load i64, i64* @m_x, align 8
  %29 = load i32, i32* @m_w, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  store i64 %31, i64* @m_x2, align 8
  %32 = load i64, i64* @m_y, align 8
  %33 = load i32, i32* @m_h, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* @m_y2, align 8
  %36 = load i32, i32* @f_w, align 4
  %37 = load i32, i32* @FRACBITS, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @m_w, align 4
  %40 = call i8* @FixedDiv(i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* @scale_mtof, align 4
  %42 = load i32, i32* @FRACUNIT, align 4
  %43 = load i32, i32* @scale_mtof, align 4
  %44 = call i8* @FixedDiv(i32 %42, i32 %43)
  store i8* %44, i8** @scale_ftom, align 8
  ret void
}

declare dso_local i8* @FixedDiv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
