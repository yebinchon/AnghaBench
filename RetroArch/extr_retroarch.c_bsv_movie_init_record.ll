; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_bsv_movie_init_record.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_bsv_movie_init_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32*, i32 }

@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Could not open BSV file for recording, path : \22%s\22.\0A\00", align 1
@BSV_MAGIC = common dso_local global i32 0, align 4
@MAGIC_INDEX = common dso_local global i64 0, align 8
@CRC_INDEX = common dso_local global i64 0, align 8
@STATE_SIZE_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @bsv_movie_init_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsv_movie_init_record(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %15 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %16 = call i32* @intfstream_open_file(i8* %13, i32 %14, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 0, i32* %3, align 4
  br label %87

22:                                               ; preds = %2
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = call i32 (...) @content_get_crc()
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @BSV_MAGIC, align 4
  %28 = call i32 @swap_if_little32(i32 %27)
  %29 = load i64, i64* @MAGIC_INDEX, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %29
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @swap_if_big32(i32 %31)
  %33 = load i64, i64* @CRC_INDEX, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %33
  store i32 %32, i32* %34, align 4
  %35 = call i32 @core_serialize_size(%struct.TYPE_7__* %6)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @swap_if_big32(i32 %39)
  %41 = load i64, i64* @STATE_SIZE_INDEX, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %41
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %47 = call i32 @intfstream_write(i32* %45, i32* %46, i32 16)
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 16, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %22
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @malloc(i32 %60)
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %87

70:                                               ; preds = %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32* %73, i32** %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = call i32 @core_serialize(%struct.TYPE_8__* %11)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @intfstream_write(i32* %80, i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %70, %22
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %69, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @intfstream_open_file(i8*, i32, i32) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i32 @content_get_crc(...) #2

declare dso_local i32 @swap_if_little32(i32) #2

declare dso_local i32 @swap_if_big32(i32) #2

declare dso_local i32 @core_serialize_size(%struct.TYPE_7__*) #2

declare dso_local i32 @intfstream_write(i32*, i32*, i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @core_serialize(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
