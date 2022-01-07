; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_normal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gc_hanging_cursor = common dso_local global i32 0, align 4
@gc_x = common dso_local global i32 0, align 4
@gc_buffer_tab_stops = common dso_local global i32 0, align 4
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gc_y = common dso_local global i32 0, align 4
@gc_scrreg_bottom = common dso_local global i32 0, align 4
@gc_scrreg_top = common dso_local global i32 0, align 4
@gc_charset_select = common dso_local global i64 0, align 8
@ESesc = common dso_local global i32 0, align 4
@gc_vt100state = common dso_local global i32 0, align 4
@gc_charset = common dso_local global i32* null, align 8
@gc_attr = common dso_local global i32 0, align 4
@gc_wrap_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @gc_putc_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_putc_normal(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  switch i32 %4, label %65 [
    i32 7, label %5
    i32 127, label %6
    i32 8, label %6
    i32 9, label %18
    i32 11, label %44
    i32 12, label %44
    i32 10, label %44
    i32 13, label %59
    i32 14, label %60
    i32 15, label %61
    i32 24, label %62
    i32 26, label %62
    i32 27, label %63
  ]

5:                                                ; preds = %1
  br label %124

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @gc_hanging_cursor, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 0, i32* @gc_hanging_cursor, align 4
  br label %17

10:                                               ; preds = %6
  %11 = load i32, i32* @gc_x, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @gc_x, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @gc_x, align 4
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %9
  br label %124

18:                                               ; preds = %1
  %19 = load i32, i32* @gc_buffer_tab_stops, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* @gc_x, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @gc_x, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @gc_x, align 4
  %29 = call i32 @gc_is_tab_stop(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ false, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %22

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* @gc_x, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* @gc_x, align 4
  br label %43

43:                                               ; preds = %40, %36
  br label %124

44:                                               ; preds = %1, %1, %1
  %45 = load i32, i32* @gc_y, align 4
  %46 = load i32, i32* @gc_scrreg_bottom, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @gc_scrreg_top, align 4
  %51 = load i32, i32* @gc_scrreg_bottom, align 4
  %52 = call i32 @gc_scroll_up(i32 1, i32 %50, i32 %51)
  %53 = load i32, i32* @gc_scrreg_bottom, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* @gc_y, align 4
  br label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @gc_y, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @gc_y, align 4
  br label %58

58:                                               ; preds = %55, %49
  br label %124

59:                                               ; preds = %1
  store i32 0, i32* @gc_x, align 4
  store i32 0, i32* @gc_hanging_cursor, align 4
  br label %124

60:                                               ; preds = %1
  store i64 1, i64* @gc_charset_select, align 8
  br label %124

61:                                               ; preds = %1
  store i64 0, i64* @gc_charset_select, align 8
  br label %124

62:                                               ; preds = %1, %1
  br label %124

63:                                               ; preds = %1
  %64 = load i32, i32* @ESesc, align 4
  store i32 %64, i32* @gc_vt100state, align 4
  store i32 0, i32* @gc_hanging_cursor, align 4
  br label %124

65:                                               ; preds = %1
  %66 = load i8, i8* %2, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 32
  br i1 %68, label %69, label %123

69:                                               ; preds = %65
  %70 = load i32, i32* @gc_hanging_cursor, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  store i32 0, i32* @gc_x, align 4
  %73 = load i32, i32* @gc_y, align 4
  %74 = load i32, i32* @gc_scrreg_bottom, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp sge i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @gc_scrreg_top, align 4
  %79 = load i32, i32* @gc_scrreg_bottom, align 4
  %80 = call i32 @gc_scroll_up(i32 1, i32 %78, i32 %79)
  %81 = load i32, i32* @gc_scrreg_bottom, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* @gc_y, align 4
  br label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @gc_y, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @gc_y, align 4
  br label %86

86:                                               ; preds = %83, %77
  store i32 0, i32* @gc_hanging_cursor, align 4
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i32, i32* @gc_x, align 4
  %89 = load i32, i32* @gc_y, align 4
  %90 = load i8, i8* %2, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sge i32 %91, 96
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load i8, i8* %2, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sle i32 %95, 127
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i8, i8* %2, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32*, i32** @gc_charset, align 8
  %101 = load i64, i64* @gc_charset_select, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %99, %103
  br label %108

105:                                              ; preds = %93, %87
  %106 = load i8, i8* %2, align 1
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %105, %97
  %109 = phi i32 [ %104, %97 ], [ %107, %105 ]
  %110 = trunc i32 %109 to i8
  %111 = load i32, i32* @gc_attr, align 4
  %112 = call i32 @gc_paint_char(i32 %88, i32 %89, i8 zeroext %110, i32 %111)
  %113 = load i32, i32* @gc_x, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %115 = sub nsw i32 %114, 1
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @gc_wrap_mode, align 4
  store i32 %118, i32* @gc_hanging_cursor, align 4
  br label %122

119:                                              ; preds = %108
  %120 = load i32, i32* @gc_x, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @gc_x, align 4
  br label %122

122:                                              ; preds = %119, %117
  br label %123

123:                                              ; preds = %122, %65
  br label %124

124:                                              ; preds = %123, %63, %62, %61, %60, %59, %58, %43, %17, %5
  ret void
}

declare dso_local i32 @gc_is_tab_stop(i32) #1

declare dso_local i32 @gc_scroll_up(i32, i32, i32) #1

declare dso_local i32 @gc_paint_char(i32, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
