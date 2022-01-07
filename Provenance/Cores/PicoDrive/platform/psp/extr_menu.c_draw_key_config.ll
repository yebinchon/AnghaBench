; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_key_config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_key_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Player %i controls\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Emulator controls\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s : %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Press a button to bind/unbind\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Use SELECT to clear\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"To bind UP/DOWN, hold SELECT\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Select \22Done\22 to exit\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Use Options -> Save cfg\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"to save controls\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Press X or O to exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @draw_key_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_key_config(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 36, i32* %11, align 4
  %13 = call i32 (...) @menu_draw_begin()
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 (i32, i32, i8*, ...) @text_out16(i32 160, i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 160, i32* %9, align 4
  br label %22

20:                                               ; preds = %4
  %21 = call i32 (i32, i32, i8*, ...) @text_out16(i32 160, i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 120, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 16
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 10
  %28 = add nsw i32 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 66, i32 130
  %33 = call i32 @menu_draw_selection(i32 %24, i32 %28, i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %57, %22
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @action_binds(i32 %48, i32 %54)
  %56 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %40, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %55)
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 10
  store i32 %61, i32* %10, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = call i32 (i32, i32, i8*, ...) @text_out16(i32 110, i32 220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 (i32, i32, i8*, ...) @text_out16(i32 110, i32 230, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 (i32, i32, i8*, ...) @text_out16(i32 110, i32 240, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %73 = call i32 (i32, i32, i8*, ...) @text_out16(i32 110, i32 250, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %78

74:                                               ; preds = %62
  %75 = call i32 (i32, i32, i8*, ...) @text_out16(i32 110, i32 230, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %76 = call i32 (i32, i32, i8*, ...) @text_out16(i32 110, i32 240, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %77 = call i32 (i32, i32, i8*, ...) @text_out16(i32 110, i32 250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %69
  %79 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(...) #1

declare dso_local i32 @text_out16(i32, i32, i8*, ...) #1

declare dso_local i32 @menu_draw_selection(i32, i32, i32) #1

declare dso_local i32 @action_binds(i32, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
