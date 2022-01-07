; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_separate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_separate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @string_separate(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca %union.string_list_elem_attr, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8** null, i8*** %7, align 8
  store %struct.string_list* null, %struct.string_list** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @string_is_empty(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  br label %46

17:                                               ; preds = %12
  store i8** %4, i8*** %7, align 8
  %18 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %18, %struct.string_list** %8, align 8
  %19 = load %struct.string_list*, %struct.string_list** %8, align 8
  %20 = icmp ne %struct.string_list* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %46

22:                                               ; preds = %17
  %23 = load i8**, i8*** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @string_tokenize(i8** %23, i8* %24)
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %38, %22
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = bitcast %union.string_list_elem_attr* %9 to i64*
  store i64 0, i64* %30, align 8
  %31 = load %struct.string_list*, %struct.string_list** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %9, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @string_list_append(%struct.string_list* %31, i8* %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %46

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  store i8* null, i8** %6, align 8
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @string_tokenize(i8** %41, i8* %42)
  store i8* %43, i8** %6, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.string_list*, %struct.string_list** %8, align 8
  store %struct.string_list* %45, %struct.string_list** %3, align 8
  br label %59

46:                                               ; preds = %37, %21, %16
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.string_list*, %struct.string_list** %8, align 8
  %54 = icmp ne %struct.string_list* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.string_list*, %struct.string_list** %8, align 8
  %57 = call i32 @string_list_free(%struct.string_list* %56)
  br label %58

58:                                               ; preds = %55, %52
  store %struct.string_list* null, %struct.string_list** %3, align 8
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %60
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i8* @string_tokenize(i8**, i8*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
