; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_get_title.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_get_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i8*, i8*, i32, i8*, i64)*, i8* }

@menu_entries_list = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_entries_get_title(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load i64, i64* @menu_entries_list, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* @menu_entries_list, align 8
  %16 = call %struct.TYPE_7__* @menu_list_get(i64 %15, i32 0)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi %struct.TYPE_7__* [ %16, %14 ], [ null, %17 ]
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_6__*
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %22
  %37 = phi %struct.TYPE_6__* [ %34, %22 ], [ null, %35 ]
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %85

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %84

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (i8*, i8*, i32, i8*, i64)*, i32 (i8*, i8*, i32, i8*, i64)** %46, align 8
  %48 = icmp ne i32 (i8*, i8*, i32, i8*, i64)* %47, null
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @string_is_empty(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @strlcpy(i8* %56, i8* %59, i32 %61)
  store i32 0, i32* %3, align 4
  br label %85

63:                                               ; preds = %49
  %64 = call i32 @menu_entries_get_last_stack(i8** %7, i8** %8, i32* %6, i32* null, i32* null)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (i8*, i8*, i32, i8*, i64)*, i32 (i8*, i8*, i32, i8*, i64)** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 %67(i8* %68, i8* %69, i32 %70, i8* %71, i64 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strlcpy(i8* %79, i8* %80, i32 8)
  br label %82

82:                                               ; preds = %76, %63
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %44, %41
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %82, %55, %40
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_7__* @menu_list_get(i64, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @menu_entries_get_last_stack(i8**, i8**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
