; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_clear_eia608_cc_buffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_clear_eia608_cc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eia608_screen = type { i32, i64*, i64**, i64**, i64** }

@CC608_SCREEN_WIDTH = common dso_local global i64 0, align 8
@default_color = common dso_local global i8 0, align 1
@FONT_REGULAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eia608_screen*)* @clear_eia608_cc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_eia608_cc_buffer(%struct.eia608_screen* %0) #0 {
  %2 = alloca %struct.eia608_screen*, align 8
  %3 = alloca i32, align 4
  store %struct.eia608_screen* %0, %struct.eia608_screen** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %54, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 15
  br i1 %6, label %7, label %57

7:                                                ; preds = %4
  %8 = load %struct.eia608_screen*, %struct.eia608_screen** %2, align 8
  %9 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %8, i32 0, i32 4
  %10 = load i64**, i64*** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64*, i64** %10, i64 %12
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @CC608_SCREEN_WIDTH, align 8
  %16 = call i32 @memset(i64* %14, i8 signext 32, i64 %15)
  %17 = load %struct.eia608_screen*, %struct.eia608_screen** %2, align 8
  %18 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %17, i32 0, i32 4
  %19 = load i64**, i64*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64*, i64** %19, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @CC608_SCREEN_WIDTH, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.eia608_screen*, %struct.eia608_screen** %2, align 8
  %27 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %26, i32 0, i32 3
  %28 = load i64**, i64*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load i8, i8* @default_color, align 1
  %34 = load i64, i64* @CC608_SCREEN_WIDTH, align 8
  %35 = add i64 %34, 1
  %36 = call i32 @memset(i64* %32, i8 signext %33, i64 %35)
  %37 = load %struct.eia608_screen*, %struct.eia608_screen** %2, align 8
  %38 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %37, i32 0, i32 2
  %39 = load i64**, i64*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64*, i64** %39, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = load i8, i8* @FONT_REGULAR, align 1
  %45 = load i64, i64* @CC608_SCREEN_WIDTH, align 8
  %46 = add i64 %45, 1
  %47 = call i32 @memset(i64* %43, i8 signext %44, i64 %46)
  %48 = load %struct.eia608_screen*, %struct.eia608_screen** %2, align 8
  %49 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %7
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %4

57:                                               ; preds = %4
  %58 = load %struct.eia608_screen*, %struct.eia608_screen** %2, align 8
  %59 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  ret void
}

declare dso_local i32 @memset(i64*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
