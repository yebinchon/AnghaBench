; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatAddCode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatAddCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i8*, i8* }

@cheatlist = common dso_local global %struct.TYPE_4__* null, align 8
@numcheats = common dso_local global i64 0, align 8
@cheatsize = common dso_local global i64 0, align 8
@CHEATTYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheatAddCode(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %55

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %14 = load i64, i64* @numcheats, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %19 = load i64, i64* @numcheats, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i8* %17, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %24 = load i64, i64* @numcheats, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i8* %22, i8** %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %28 = load i64, i64* @numcheats, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %32 = load i64, i64* @numcheats, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i64, i64* @numcheats, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @numcheats, align 8
  %37 = load i64, i64* @numcheats, align 8
  %38 = load i64, i64* @cheatsize, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %11
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %42 = load i64, i64* @cheatsize, align 8
  %43 = mul i64 %42, 2
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.TYPE_4__* @realloc(%struct.TYPE_4__* %41, i32 %45)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** @cheatlist, align 8
  %47 = load i64, i64* @cheatsize, align 8
  %48 = mul i64 %47, 2
  store i64 %48, i64* @cheatsize, align 8
  br label %49

49:                                               ; preds = %40, %11
  %50 = load i32, i32* @CHEATTYPE_NONE, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cheatlist, align 8
  %52 = load i64, i64* @numcheats, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %10
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_4__* @realloc(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
