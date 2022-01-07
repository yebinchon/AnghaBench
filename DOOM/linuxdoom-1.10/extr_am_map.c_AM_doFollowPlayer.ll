; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_doFollowPlayer.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_doFollowPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@f_oldloc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@plr = common dso_local global %struct.TYPE_5__* null, align 8
@m_w = common dso_local global i32 0, align 4
@m_x = common dso_local global i8* null, align 8
@m_h = common dso_local global i32 0, align 4
@m_y = common dso_local global i8* null, align 8
@m_x2 = common dso_local global i8* null, align 8
@m_y2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_doFollowPlayer() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @f_oldloc, i32 0, i32 0), align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plr, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %1, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @f_oldloc, i32 0, i32 1), align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plr, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %8, %0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plr, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @MTOF(i64 %21)
  %23 = call i8* @FTOM(i32 %22)
  %24 = load i32, i32* @m_w, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr i8, i8* %23, i64 %27
  store i8* %28, i8** @m_x, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plr, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @MTOF(i64 %33)
  %35 = call i8* @FTOM(i32 %34)
  %36 = load i32, i32* @m_h, align 4
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr i8, i8* %35, i64 %39
  store i8* %40, i8** @m_y, align 8
  %41 = load i8*, i8** @m_x, align 8
  %42 = load i32, i32* @m_w, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  store i8* %44, i8** @m_x2, align 8
  %45 = load i8*, i8** @m_y, align 8
  %46 = load i32, i32* @m_h, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  store i8* %48, i8** @m_y2, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plr, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @f_oldloc, i32 0, i32 0), align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plr, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @f_oldloc, i32 0, i32 1), align 8
  br label %59

59:                                               ; preds = %16, %8
  ret void
}

declare dso_local i8* @FTOM(i32) #1

declare dso_local i32 @MTOF(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
