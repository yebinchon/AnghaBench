; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_database_supports_content_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_database_supports_content_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@core_info_curr_list = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_info_database_supports_content_path(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @path_basename(i8* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @string_is_empty(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @string_is_empty(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %65

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @path_remove_extension(i8* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_info_curr_list, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %64

28:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_info_curr_list, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_info_curr_list, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %9, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @path_get_extension(i8* %44)
  %46 = call i32 @string_list_find_elem(i32 %43, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  br label %60

49:                                               ; preds = %35
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @string_list_find_elem(i32 %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %60

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @free(i8* %58)
  store i32 1, i32* %3, align 4
  br label %72

60:                                               ; preds = %56, %48
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %29

63:                                               ; preds = %29
  br label %64

64:                                               ; preds = %63, %23
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %57, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @path_remove_extension(i8*) #1

declare dso_local i32 @string_list_find_elem(i32, i8*) #1

declare dso_local i8* @path_get_extension(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
