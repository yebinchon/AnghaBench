; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate_playlist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@DATABASE_TYPE_SERIAL_LOOKUP = common dso_local global i32 0, align 4
@DATABASE_TYPE_CRC_LOOKUP = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@DATABASE_TYPE_ITERATE_LUTRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*)* @task_database_iterate_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_database_iterate_playlist(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @path_get_extension(i8* %8)
  %10 = call i32 @extension_to_file_type(i32 %9)
  switch i32 %10, label %96 [
    i32 133, label %11
    i32 132, label %12
    i32 131, label %39
    i32 128, label %54
    i32 130, label %54
    i32 134, label %68
    i32 129, label %92
  ]

11:                                               ; preds = %3
  br label %105

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @task_database_cue_prune(i32* %13, i8* %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @task_database_cue_get_serial(i8* %20, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @DATABASE_TYPE_SERIAL_LOOKUP, align 4
  %29 = call i32 @database_info_set_type(i32* %27, i32 %28)
  br label %38

30:                                               ; preds = %12
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @DATABASE_TYPE_CRC_LOOKUP, align 4
  %33 = call i32 @database_info_set_type(i32* %31, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @task_database_cue_get_crc(i8* %34, i32* %36)
  store i32 %37, i32* %4, align 4
  br label %106

38:                                               ; preds = %26
  br label %105

39:                                               ; preds = %3
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @gdi_prune(i32* %40, i8* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %46, align 1
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @DATABASE_TYPE_CRC_LOOKUP, align 4
  %49 = call i32 @database_info_set_type(i32* %47, i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = call i32 @task_database_gdi_get_crc(i8* %50, i32* %52)
  store i32 %53, i32* %4, align 4
  br label %106

54:                                               ; preds = %3, %3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @SIZE_MAX, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @intfstream_file_get_serial(i8* %59, i32 0, i32 %60, i8* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @DATABASE_TYPE_SERIAL_LOOKUP, align 4
  %67 = call i32 @database_info_set_type(i32* %65, i32 %66)
  br label %105

68:                                               ; preds = %3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @task_database_chd_get_serial(i8* %73, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @DATABASE_TYPE_SERIAL_LOOKUP, align 4
  %82 = call i32 @database_info_set_type(i32* %80, i32 %81)
  br label %91

83:                                               ; preds = %68
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @DATABASE_TYPE_CRC_LOOKUP, align 4
  %86 = call i32 @database_info_set_type(i32* %84, i32 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = call i32 @task_database_chd_get_crc(i8* %87, i32* %89)
  store i32 %90, i32* %4, align 4
  br label %106

91:                                               ; preds = %79
  br label %105

92:                                               ; preds = %3
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @DATABASE_TYPE_ITERATE_LUTRO, align 4
  %95 = call i32 @database_info_set_type(i32* %93, i32 %94)
  br label %105

96:                                               ; preds = %3
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @DATABASE_TYPE_CRC_LOOKUP, align 4
  %99 = call i32 @database_info_set_type(i32* %97, i32 %98)
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @SIZE_MAX, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = call i32 @intfstream_file_get_crc(i8* %100, i32 0, i32 %101, i32* %103)
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %92, %91, %54, %38, %11
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %96, %83, %39, %30
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @extension_to_file_type(i32) #1

declare dso_local i32 @path_get_extension(i8*) #1

declare dso_local i32 @task_database_cue_prune(i32*, i8*) #1

declare dso_local i32 @task_database_cue_get_serial(i8*, i8*) #1

declare dso_local i32 @database_info_set_type(i32*, i32) #1

declare dso_local i32 @task_database_cue_get_crc(i8*, i32*) #1

declare dso_local i32 @gdi_prune(i32*, i8*) #1

declare dso_local i32 @task_database_gdi_get_crc(i8*, i32*) #1

declare dso_local i32 @intfstream_file_get_serial(i8*, i32, i32, i8*) #1

declare dso_local i32 @task_database_chd_get_serial(i8*, i8*) #1

declare dso_local i32 @task_database_chd_get_crc(i8*, i32*) #1

declare dso_local i32 @intfstream_file_get_crc(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
