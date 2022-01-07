; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_read_id3v1_tag.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_read_id3v1_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ID3v1 identifier\00", align 1
@VC_CONTAINER_METADATA_KEY_TITLE = common dso_local global i32 0, align 4
@VC_CONTAINER_METADATA_KEY_ARTIST = common dso_local global i32 0, align 4
@VC_CONTAINER_METADATA_KEY_ALBUM = common dso_local global i32 0, align 4
@VC_CONTAINER_METADATA_KEY_YEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ID3v1 comment\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ID3v1 zero-byte\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ID3v1 track\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@VC_CONTAINER_METADATA_KEY_TRACK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ID3v1 genre\00", align 1
@id3_genres = common dso_local global i8** null, align 8
@VC_CONTAINER_METADATA_KEY_GENRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @id3_read_id3v1_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id3_read_id3v1_tag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %7, i32* %3, align 4
  %8 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 4, i1 false)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @SKIP_STRING(i32* %9, i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @VC_CONTAINER_METADATA_KEY_TITLE, align 4
  %13 = call i32 @id3_read_metadata_entry(i32* %11, i32 %12, i32 30)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @VC_CONTAINER_METADATA_KEY_ARTIST, align 4
  %16 = call i32 @id3_read_metadata_entry(i32* %14, i32 %15, i32 30)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @VC_CONTAINER_METADATA_KEY_ALBUM, align 4
  %19 = call i32 @id3_read_metadata_entry(i32* %17, i32 %18, i32 30)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @VC_CONTAINER_METADATA_KEY_YEAR, align 4
  %22 = call i32 @id3_read_metadata_entry(i32* %20, i32 %21, i32 4)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @SKIP_STRING(i32* %23, i32 28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @READ_U8(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @READ_U8(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @snprintf(i8* %32, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @VC_CONTAINER_METADATA_KEY_TRACK, align 4
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %38 = call i32 @id3_add_metadata_entry(i32* %35, i32 %36, i8* %37)
  br label %42

39:                                               ; preds = %1
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @SKIP_BYTES(i32* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load i32*, i32** %2, align 8
  %44 = call i64 @READ_U8(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i8**, i8*** @id3_genres, align 8
  %48 = call i32 @countof(i8** %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @VC_CONTAINER_METADATA_KEY_GENRE, align 4
  %53 = load i8**, i8*** @id3_genres, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @id3_add_metadata_entry(i32* %51, i32 %52, i8* %57)
  br label %59

59:                                               ; preds = %50, %42
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @STREAM_STATUS(i32* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SKIP_STRING(i32*, i32, i8*) #2

declare dso_local i32 @id3_read_metadata_entry(i32*, i32, i32) #2

declare dso_local i64 @READ_U8(i32*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @id3_add_metadata_entry(i32*, i32, i8*) #2

declare dso_local i32 @SKIP_BYTES(i32*, i32) #2

declare dso_local i32 @countof(i8**) #2

declare dso_local i32 @STREAM_STATUS(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
