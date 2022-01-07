; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_get_file_crc32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_get_file_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i64 }
%struct.archive_extract_userdata = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ARCHIVE_TRANSFER_INIT = common dso_local global i64 0, align 8
@ARCHIVE_TRANSFER_ITERATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @file_archive_get_file_crc32(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.archive_extract_userdata, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = bitcast %struct.archive_extract_userdata* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @path_contains_compressed_file(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @path_get_archive_delim(i8* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i64, i64* @ARCHIVE_TRANSFER_INIT, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @file_archive_parse_file_iterate(%struct.TYPE_6__* %4, i32* %6, i8* %33, i32* null, i32* null, %struct.archive_extract_userdata* %5)
  br label %35

35:                                               ; preds = %59, %23
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ARCHIVE_TRANSFER_ITERATE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @file_archive_parse_file_iterate(%struct.TYPE_6__* %4, i32* %6, i8* %41, i32* null, i32* null, %struct.archive_extract_userdata* %5)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %60

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @string_is_equal(i32 %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %60

57:                                               ; preds = %50
  br label %59

58:                                               ; preds = %47
  br label %60

59:                                               ; preds = %57
  br label %35

60:                                               ; preds = %58, %56, %46
  %61 = call i32 @file_archive_parse_file_iterate_stop(%struct.TYPE_6__* %4)
  %62 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %5, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %2, align 8
  br label %69

68:                                               ; preds = %60
  store i64 0, i64* %2, align 8
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @path_contains_compressed_file(i8*) #2

declare dso_local i8* @path_get_archive_delim(i8*) #2

declare dso_local i32 @file_archive_parse_file_iterate(%struct.TYPE_6__*, i32*, i8*, i32*, i32*, %struct.archive_extract_userdata*) #2

declare dso_local i64 @string_is_equal(i32, i8*) #2

declare dso_local i32 @file_archive_parse_file_iterate_stop(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
