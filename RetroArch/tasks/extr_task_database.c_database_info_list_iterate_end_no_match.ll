; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_database_info_list_iterate_end_no_match.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_database_info_list_iterate_end_no_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.string_list = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i8*)* @database_info_list_iterate_end_no_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @database_info_list_iterate_end_no_match(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @path_is_compressed_file(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %113

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @path_contains_compressed_file(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %113, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.string_list* @file_archive_get_file_list(i8* %20, i32* null)
  store %struct.string_list* %21, %struct.string_list** %7, align 8
  %22 = load %struct.string_list*, %struct.string_list** %7, align 8
  %23 = icmp ne %struct.string_list* %22, null
  br i1 %23, label %24, label %112

24:                                               ; preds = %19
  %25 = load %struct.string_list*, %struct.string_list** %7, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %112

29:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %106, %29
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.string_list*, %struct.string_list** %7, align 8
  %34 = getelementptr inbounds %struct.string_list, %struct.string_list* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %109

37:                                               ; preds = %30
  %38 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %9, align 8
  %44 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @strlcpy(i8* %51, i8* %52, i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.string_list*, %struct.string_list** %7, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add i64 %55, %64
  %66 = add i64 %65, 1
  %67 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %37
  %71 = load i8*, i8** %9, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 35, i8* %73, align 1
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load %struct.string_list*, %struct.string_list** %7, align 8
  %79 = getelementptr inbounds %struct.string_list, %struct.string_list* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = sub i64 %86, %87
  %89 = call i32 @strlcpy(i8* %77, i8* %85, i64 %88)
  br label %90

90:                                               ; preds = %70, %37
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.string_list*, %struct.string_list** %7, align 8
  %96 = getelementptr inbounds %struct.string_list, %struct.string_list* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @string_list_append(i32 %93, i8* %94, i32 %102)
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @free(i8* %104)
  br label %106

106:                                              ; preds = %90
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %30

109:                                              ; preds = %30
  %110 = load %struct.string_list*, %struct.string_list** %7, align 8
  %111 = call i32 @string_list_free(%struct.string_list* %110)
  br label %112

112:                                              ; preds = %109, %24, %19
  br label %113

113:                                              ; preds = %112, %15, %3
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %113
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %125
  ret i32 0
}

declare dso_local i64 @path_is_compressed_file(i8*) #1

declare dso_local i32 @path_contains_compressed_file(i8*) #1

declare dso_local %struct.string_list* @file_archive_get_file_list(i8*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @string_list_append(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
