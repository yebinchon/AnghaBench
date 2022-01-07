; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_changeWindowLoc.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_changeWindowLoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@m_paninc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@followplayer = common dso_local global i64 0, align 8
@MAXINT = common dso_local global i32 0, align 4
@f_oldloc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@m_x = common dso_local global i64 0, align 8
@m_y = common dso_local global i64 0, align 8
@m_w = common dso_local global i32 0, align 4
@max_x = common dso_local global i64 0, align 8
@min_x = common dso_local global i64 0, align 8
@m_h = common dso_local global i32 0, align 4
@max_y = common dso_local global i64 0, align 8
@min_y = common dso_local global i64 0, align 8
@m_x2 = common dso_local global i64 0, align 8
@m_y2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_changeWindowLoc() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m_paninc, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m_paninc, i32 0, i32 1), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %0
  store i64 0, i64* @followplayer, align 8
  %7 = load i32, i32* @MAXINT, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @f_oldloc, i32 0, i32 0), align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m_paninc, i32 0, i32 0), align 8
  %10 = load i64, i64* @m_x, align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* @m_x, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m_paninc, i32 0, i32 1), align 8
  %13 = load i64, i64* @m_y, align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* @m_y, align 8
  %15 = load i64, i64* @m_x, align 8
  %16 = load i32, i32* @m_w, align 4
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = load i64, i64* @max_x, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load i64, i64* @max_x, align 8
  %24 = load i32, i32* @m_w, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* @m_x, align 8
  br label %43

28:                                               ; preds = %8
  %29 = load i64, i64* @m_x, align 8
  %30 = load i32, i32* @m_w, align 4
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = load i64, i64* @min_x, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i64, i64* @min_x, align 8
  %38 = load i32, i32* @m_w, align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %37, %40
  store i64 %41, i64* @m_x, align 8
  br label %42

42:                                               ; preds = %36, %28
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i64, i64* @m_y, align 8
  %45 = load i32, i32* @m_h, align 4
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i64, i64* @max_y, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i64, i64* @max_y, align 8
  %53 = load i32, i32* @m_h, align 4
  %54 = sdiv i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* @m_y, align 8
  br label %72

57:                                               ; preds = %43
  %58 = load i64, i64* @m_y, align 8
  %59 = load i32, i32* @m_h, align 4
  %60 = sdiv i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load i64, i64* @min_y, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i64, i64* @min_y, align 8
  %67 = load i32, i32* @m_h, align 4
  %68 = sdiv i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %66, %69
  store i64 %70, i64* @m_y, align 8
  br label %71

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i64, i64* @m_x, align 8
  %74 = load i32, i32* @m_w, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  store i64 %76, i64* @m_x2, align 8
  %77 = load i64, i64* @m_y, align 8
  %78 = load i32, i32* @m_h, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  store i64 %80, i64* @m_y2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
