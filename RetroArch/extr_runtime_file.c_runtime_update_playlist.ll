; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_runtime_file.c_runtime_update_playlist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_runtime_file.c_runtime_update_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.playlist_entry = type { i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PLAYLIST_RUNTIME_MISSING = common dso_local global i64 0, align 8
@PLAYLIST_LAST_PLAYED_STYLE_YMD_HMS = common dso_local global i32 0, align 4
@PLAYLIST_RUNTIME_PER_CORE = common dso_local global i64 0, align 8
@PLAYLIST_RUNTIME_VALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"ozone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runtime_update_playlist(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.playlist_entry*, align 8
  %8 = alloca %struct.playlist_entry, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %7, align 8
  %13 = bitcast %struct.playlist_entry* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 72, i1 false)
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %108

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @playlist_get_size(i32* %22)
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %108

26:                                               ; preds = %20
  %27 = load i64, i64* @PLAYLIST_RUNTIME_MISSING, align 8
  %28 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @PLAYLIST_LAST_PLAYED_STYLE_YMD_HMS, align 4
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %30, align 16
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %31, align 16
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %33 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %35 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @playlist_get_index(i32* %36, i64 %37, %struct.playlist_entry** %7)
  %39 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %40 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %43 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PLAYLIST_RUNTIME_PER_CORE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32* @runtime_log_init(i32 %41, i32 %44, i32 %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %26
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @runtime_log_has_runtime(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 11
  %62 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 10
  %63 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 9
  %64 = call i32 @runtime_log_get_runtime_hms(i32* %60, i32* %61, i32* %62, i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %67 = call i32 @runtime_log_get_runtime_str(i32* %65, i8* %66, i32 64)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 8
  %70 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 7
  %71 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 6
  %72 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 5
  %73 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 4
  %74 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 3
  %75 = call i32 @runtime_log_get_last_played(i32* %68, i32* %69, i32* %70, i32* %71, i32* %72, i32* %73, i32* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @runtime_log_get_last_played_str(i32* %76, i8* %77, i32 64, i32 %78)
  %80 = load i64, i64* @PLAYLIST_RUNTIME_VALID, align 8
  %81 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %59, %55
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @free(i32* %83)
  br label %85

85:                                               ; preds = %82, %26
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @string_is_equal(i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %8, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PLAYLIST_RUNTIME_VALID, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %99 = call i32 @runtime_log_get_runtime_str(i32* null, i8* %98, i32 64)
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @runtime_log_get_last_played_str(i32* null, i8* %100, i32 64, i32 %101)
  br label %103

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i32*, i32** %3, align 8
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @playlist_update_runtime(i32* %105, i64 %106, %struct.playlist_entry* %8, i32 0)
  br label %108

108:                                              ; preds = %104, %25, %19
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @playlist_get_size(i32*) #1

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #1

declare dso_local i32* @runtime_log_init(i32, i32, i32) #1

declare dso_local i64 @runtime_log_has_runtime(i32*) #1

declare dso_local i32 @runtime_log_get_runtime_hms(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @runtime_log_get_runtime_str(i32*, i8*, i32) #1

declare dso_local i32 @runtime_log_get_last_played(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @runtime_log_get_last_played_str(i32*, i8*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local i32 @playlist_update_runtime(i32*, i64, %struct.playlist_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
