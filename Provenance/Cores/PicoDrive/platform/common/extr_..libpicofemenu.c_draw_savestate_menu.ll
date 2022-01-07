; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_savestate_menu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_savestate_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@state_slot_flags = common dso_local global i32 0, align 4
@me_mfont_w = common dso_local global i32 0, align 4
@STATE_SLOT_COUNT = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Load state\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Save state\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"USED\00", align 1
@state_slot_times = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%x %R\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SLOT %i (%s)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @draw_savestate_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_savestate_menu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @state_slot_flags, align 4
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @draw_savestate_bg(i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @me_mfont_w, align 4
  %23 = mul nsw i32 15, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @STATE_SLOT_COUNT, align 4
  %25 = add nsw i32 3, %24
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @me_mfont_h, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @g_menuscreen_w, align 4
  %30 = sdiv i32 %29, 2
  %31 = load i32, i32* %8, align 4
  %32 = sdiv i32 %31, 2
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* @g_menuscreen_h, align 4
  %39 = sdiv i32 %38, 2
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = call i32 @menu_draw_begin(i32 1, i32 1)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %54 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %48, i32 %49, i8* %53)
  %55 = load i32, i32* @me_mfont_h, align 4
  %56 = mul nsw i32 3, %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @me_mfont_w, align 4
  %61 = mul nsw i32 %60, 2
  %62 = sub nsw i32 %59, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @me_mfont_h, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* @me_mfont_w, align 4
  %69 = mul nsw i32 25, %68
  %70 = add nsw i32 %69, 4
  %71 = call i32 @menu_draw_selection(i32 %62, i32 %67, i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %111, %46
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @STATE_SLOT_COUNT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %72
  %77 = load i32, i32* @state_slot_flags, align 4
  %78 = load i32, i32* %5, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %84 = call i32 @strcpy(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %105

85:                                               ; preds = %76
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %87 = call i32 @strcpy(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i64*, i64** @state_slot_times, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = load i64*, i64** @state_slot_times, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %11, align 8
  %100 = call %struct.tm* @localtime(i64* %11)
  store %struct.tm* %100, %struct.tm** %12, align 8
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %102 = load %struct.tm*, %struct.tm** %12, align 8
  %103 = call i32 @strftime(i8* %101, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %102)
  br label %104

104:                                              ; preds = %94, %85
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %5, align 4
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %110 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %106, i32 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %108, i8* %109)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @me_mfont_h, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %72

117:                                              ; preds = %72
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %118, i32 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %121 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @draw_savestate_bg(i32) #1

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*, ...) #1

declare dso_local i32 @menu_draw_selection(i32, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
