; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_get_mext_match.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_get_mext_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@curses_menu = common dso_local global i32 0, align 4
@FIND_NEXT_MATCH_DOWN = common dso_local global i64 0, align 8
@FIND_NEXT_MATCH_UP = common dso_local global i64 0, align 8
@items_num = common dso_local global i32 0, align 4
@k_menu_items = common dso_local global %struct.TYPE_2__* null, align 8
@MATCH_TINKER_PATTERN_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @get_mext_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mext_match(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @curses_menu, align 4
  %10 = call i32 @current_item(i32 %9)
  %11 = call i32 @item_index(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @FIND_NEXT_MATCH_DOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @FIND_NEXT_MATCH_UP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @items_num, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @items_num, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %70
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @k_menu_items, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcasestr(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %71

46:                                               ; preds = %33
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @FIND_NEXT_MATCH_UP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @MATCH_TINKER_PATTERN_UP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @items_num, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @items_num, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %71

70:                                               ; preds = %60
  br label %33

71:                                               ; preds = %69, %44
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @item_index(i32) #1

declare dso_local i32 @current_item(i32) #1

declare dso_local i64 @strcasestr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
