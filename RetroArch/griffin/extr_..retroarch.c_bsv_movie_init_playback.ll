; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_init_playback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_init_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, i32, i32*, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64*, i64 }

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not open BSV file for playback, path : \22%s\22.\0A\00", align 1
@MAGIC_INDEX = common dso_local global i64 0, align 8
@BSV_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_MOVIE_FILE_IS_NOT_A_VALID_BSV1_FILE = common dso_local global i32 0, align 4
@CRC_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s.\0A\00", align 1
@MSG_CRC32_CHECKSUM_MISMATCH = common dso_local global i32 0, align 4
@STATE_SIZE_INDEX = common dso_local global i64 0, align 8
@MSG_COULD_NOT_READ_STATE_FROM_MOVIE = common dso_local global i32 0, align 4
@MSG_MOVIE_FORMAT_DIFFERENT_SERIALIZER_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @bsv_movie_init_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsv_movie_init_playback(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64], align 16
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %13 = bitcast [4 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %16 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %17 = call i32* @intfstream_open_file(i8* %14, i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i32 0, i32* %3, align 4
  br label %128

24:                                               ; preds = %2
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %34 = call i64 @intfstream_read(i32* %32, i64* %33, i64 32)
  %35 = load i64, i64* @MAGIC_INDEX, align 8
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @swap_if_little32(i64 %37)
  %39 = load i64, i64* @BSV_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %24
  %42 = load i64, i64* @MAGIC_INDEX, align 8
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @swap_if_big32(i64 %44)
  %46 = load i64, i64* @BSV_MAGIC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MSG_MOVIE_FILE_IS_NOT_A_VALID_BSV1_FILE, align 4
  %50 = call i64 @msg_hash_to_str(i32 %49)
  %51 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  store i32 0, i32* %3, align 4
  br label %128

52:                                               ; preds = %41, %24
  %53 = call i64 (...) @content_get_crc()
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i64, i64* @CRC_INDEX, align 8
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @swap_if_big32(i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @MSG_CRC32_CHECKSUM_MISMATCH, align 4
  %65 = call i64 @msg_hash_to_str(i32 %64)
  %66 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i64, i64* @STATE_SIZE_INDEX, align 8
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @swap_if_big32(i64 %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %122

75:                                               ; preds = %68
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @malloc(i64 %76)
  %78 = inttoptr i64 %77 to i64*
  store i64* %78, i64** %12, align 8
  %79 = load i64*, i64** %12, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %128

82:                                               ; preds = %75
  %83 = load i64*, i64** %12, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i64* %83, i64** %85, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @intfstream_read(i32* %91, i64* %94, i64 %95)
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load i32, i32* @MSG_COULD_NOT_READ_STATE_FROM_MOVIE, align 4
  %101 = call i64 @msg_hash_to_str(i32 %100)
  %102 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  store i32 0, i32* %3, align 4
  br label %128

103:                                              ; preds = %82
  %104 = call i32 @core_serialize_size(%struct.TYPE_7__* %10)
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i64* %112, i64** %113, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i64 %114, i64* %115, align 8
  %116 = call i32 @core_unserialize(%struct.TYPE_8__* %11)
  br label %121

117:                                              ; preds = %103
  %118 = load i32, i32* @MSG_MOVIE_FORMAT_DIFFERENT_SERIALIZER_VERSION, align 4
  %119 = call i64 @msg_hash_to_str(i32 %118)
  %120 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %117, %109
  br label %122

122:                                              ; preds = %121, %68
  %123 = load i64, i64* %6, align 8
  %124 = add i64 32, %123
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  store i32 1, i32* %3, align 4
  br label %128

128:                                              ; preds = %122, %99, %81, %48, %20
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @intfstream_open_file(i8*, i32, i32) #2

declare dso_local i32 @RARCH_ERR(i8*, i64) #2

declare dso_local i64 @intfstream_read(i32*, i64*, i64) #2

declare dso_local i64 @swap_if_little32(i64) #2

declare dso_local i64 @swap_if_big32(i64) #2

declare dso_local i64 @msg_hash_to_str(i32) #2

declare dso_local i64 @content_get_crc(...) #2

declare dso_local i32 @RARCH_WARN(i8*, i64) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @core_serialize_size(%struct.TYPE_7__*) #2

declare dso_local i32 @core_unserialize(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
