; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate_playlist_lutro.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate_playlist_lutro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.playlist_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Lutro.lpl\00", align 1
@COLLECTION_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i8*)* @task_database_iterate_playlist_lutro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_database_iterate_playlist_lutro(%struct.TYPE_3__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.playlist_entry, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @string_is_empty(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %4
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i32 @fill_pathname_join(i8* %27, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %26, %4
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @COLLECTION_SIZE, align 4
  %39 = call i32* @playlist_init(i8* %37, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @playlist_entry_exists(i32* %42, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i64 @malloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i32 @fill_short_pathname_representation_noext(i8* %55, i8* %56, i32 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %66, align 8
  %67 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  %68 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %68, align 8
  %69 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %69, align 8
  %70 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 17
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 16
  store i32* null, i32** %71, align 8
  %72 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 15
  store i32* null, i32** %72, align 8
  %73 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 14
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 13
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 12
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 11
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 9
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 8
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %11, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @playlist_push(i32* %82, %struct.playlist_entry* %11)
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %46, %36
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @playlist_write_file(i32* %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @playlist_free(i32* %89)
  ret i32 0
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i32, i8*, i32) #1

declare dso_local i32* @playlist_init(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @playlist_entry_exists(i32*, i8*, i8*) #1

declare dso_local i32 @fill_short_pathname_representation_noext(i8*, i8*, i32) #1

declare dso_local i32 @playlist_push(i32*, %struct.playlist_entry*) #1

declare dso_local i32 @playlist_write_file(i32*) #1

declare dso_local i32 @playlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
