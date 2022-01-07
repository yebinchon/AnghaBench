; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_get_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"display_name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"corename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_info_get_name(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.string_list*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @string_is_empty(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %8
  %28 = load i8*, i8** %12, align 8
  br label %31

29:                                               ; preds = %8
  %30 = load i8*, i8** %13, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8* [ %28, %27 ], [ %30, %29 ]
  store i8* %32, i8** %18, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call %struct.string_list* @dir_list_new(i8* %33, i8* %34, i32 0, i32 %35, i32 0, i32 0)
  store %struct.string_list* %36, %struct.string_list** %19, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @path_basename(i8* %37)
  store i8* %38, i8** %20, align 8
  %39 = load %struct.string_list*, %struct.string_list** %19, align 8
  %40 = icmp ne %struct.string_list* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %100

42:                                               ; preds = %31
  store i64 0, i64* %17, align 8
  br label %43

43:                                               ; preds = %94, %42
  %44 = load i64, i64* %17, align 8
  %45 = load %struct.string_list*, %struct.string_list** %19, align 8
  %46 = getelementptr inbounds %struct.string_list, %struct.string_list* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %97

49:                                               ; preds = %43
  store i32* null, i32** %21, align 8
  store i8* null, i8** %22, align 8
  %50 = load %struct.string_list*, %struct.string_list** %19, align 8
  %51 = getelementptr inbounds %struct.string_list, %struct.string_list* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %23, align 8
  %57 = load i8*, i8** %23, align 8
  %58 = call i8* @path_basename(i8* %57)
  %59 = load i8*, i8** %20, align 8
  %60 = call i32 @string_is_equal(i8* %58, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  br label %94

63:                                               ; preds = %49
  %64 = load %struct.string_list*, %struct.string_list** %19, align 8
  %65 = getelementptr inbounds %struct.string_list, %struct.string_list* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = call i32* @core_info_list_iterate(i8* %70, i8* %71)
  store i32* %72, i32** %21, align 8
  %73 = load i32*, i32** %21, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  br label %94

76:                                               ; preds = %63
  %77 = load i32*, i32** %21, align 8
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %82 = call i64 @config_get_string(i32* %77, i8* %81, i8** %22)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %22, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @strlcpy(i8* %85, i8* %86, i64 %87)
  %89 = load i8*, i8** %22, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %84, %76
  %92 = load i32*, i32** %21, align 8
  %93 = call i32 @config_file_free(i32* %92)
  br label %97

94:                                               ; preds = %75, %62
  %95 = load i64, i64* %17, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %17, align 8
  br label %43

97:                                               ; preds = %91, %43
  %98 = load %struct.string_list*, %struct.string_list** %19, align 8
  %99 = call i32 @dir_list_free(%struct.string_list* %98)
  store %struct.string_list* null, %struct.string_list** %19, align 8
  br label %100

100:                                              ; preds = %97, %41
  ret void
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local %struct.string_list* @dir_list_new(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @string_is_equal(i8*, i8*) #1

declare dso_local i32* @core_info_list_iterate(i8*, i8*) #1

declare dso_local i64 @config_get_string(i32*, i8*, i8**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @config_file_free(i32*) #1

declare dso_local i32 @dir_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
