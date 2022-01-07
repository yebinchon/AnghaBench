; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_SaveSelect.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_SaveSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saveStringEnter = common dso_local global i32 0, align 4
@saveSlot = common dso_local global i32 0, align 4
@saveOldString = common dso_local global i32 0, align 4
@savegamestrings = common dso_local global i64** null, align 8
@EMPTYSTRING = common dso_local global i32 0, align 4
@saveCharIndex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_SaveSelect(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @saveStringEnter, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @saveSlot, align 4
  %4 = load i32, i32* @saveOldString, align 4
  %5 = load i64**, i64*** @savegamestrings, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64*, i64** %5, i64 %7
  %9 = load i64*, i64** %8, align 8
  %10 = call i32 @strcpy(i32 %4, i64* %9)
  %11 = load i64**, i64*** @savegamestrings, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64*, i64** %11, i64 %13
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* @EMPTYSTRING, align 4
  %17 = call i32 @strcmp(i64* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load i64**, i64*** @savegamestrings, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64*, i64** %20, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i64**, i64*** @savegamestrings, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = call i32 @strlen(i64* %31)
  store i32 %32, i32* @saveCharIndex, align 4
  ret void
}

declare dso_local i32 @strcpy(i32, i64*) #1

declare dso_local i32 @strcmp(i64*, i32) #1

declare dso_local i32 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
