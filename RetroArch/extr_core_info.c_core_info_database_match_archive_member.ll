; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_database_match_archive_member.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_database_match_archive_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@core_info_curr_list = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_info_database_match_archive_member(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @path_basename(i8* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @string_is_empty(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @string_is_empty(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %60

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @path_remove_extension(i8* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_info_curr_list, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_info_curr_list, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_info_curr_list, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %55

44:                                               ; preds = %33
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @string_list_find_elem(i32 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @free(i8* %53)
  store i32 1, i32* %2, align 4
  br label %67

55:                                               ; preds = %51, %43
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %27

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58, %21
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %63, %60
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %52, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @path_remove_extension(i8*) #1

declare dso_local i32 @string_list_find_elem(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
