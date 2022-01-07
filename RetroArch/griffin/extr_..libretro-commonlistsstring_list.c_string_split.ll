; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_split.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @string_split(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %union.string_list_elem_attr, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %11, %struct.string_list** %9, align 8
  %12 = load %struct.string_list*, %struct.string_list** %9, align 8
  %13 = icmp ne %struct.string_list* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %44

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %44

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strtok_r(i8* %22, i8* %23, i8** %6)
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %37, %21
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = bitcast %union.string_list_elem_attr* %10 to i64*
  store i64 0, i64* %29, align 8
  %30 = load %struct.string_list*, %struct.string_list** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @string_list_append(%struct.string_list* %30, i8* %31, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %44

37:                                               ; preds = %28
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strtok_r(i8* null, i8* %38, i8** %6)
  store i8* %39, i8** %8, align 8
  br label %25

40:                                               ; preds = %25
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load %struct.string_list*, %struct.string_list** %9, align 8
  store %struct.string_list* %43, %struct.string_list** %3, align 8
  br label %49

44:                                               ; preds = %36, %20, %14
  %45 = load %struct.string_list*, %struct.string_list** %9, align 8
  %46 = call i32 @string_list_free(%struct.string_list* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @free(i8* %47)
  store %struct.string_list* null, %struct.string_list** %3, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %50
}

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
