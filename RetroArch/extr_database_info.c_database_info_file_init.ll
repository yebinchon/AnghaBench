; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_info_file_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_info_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.string_list*, i64 }
%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i64 }

@DATABASE_STATUS_ITERATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @database_info_file_init(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.string_list_elem_attr, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.string_list* null, %struct.string_list** %9, align 8
  %11 = call i64 @calloc(i32 1, i32 24)
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %10, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %42

16:                                               ; preds = %3
  %17 = bitcast %union.string_list_elem_attr* %8 to i64*
  store i64 0, i64* %17, align 8
  %18 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %18, %struct.string_list** %9, align 8
  %19 = load %struct.string_list*, %struct.string_list** %9, align 8
  %20 = icmp ne %struct.string_list* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = call i32 @free(%struct.TYPE_4__* %22)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %42

24:                                               ; preds = %16
  %25 = load %struct.string_list*, %struct.string_list** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @string_list_append(%struct.string_list* %25, i8* %26, i64 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.string_list*, %struct.string_list** %9, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store %struct.string_list* %32, %struct.string_list** %34, align 8
  %35 = load i32, i32* @DATABASE_STATUS_ITERATE, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %4, align 8
  br label %42

42:                                               ; preds = %24, %21, %15
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %43
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
