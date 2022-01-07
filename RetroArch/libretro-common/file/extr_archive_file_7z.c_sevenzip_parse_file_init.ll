; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_parse_file_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_parse_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.sevenzip_context_t*, i32 }
%struct.sevenzip_context_t = type { i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@SEVENZIP_MAGIC_LEN = common dso_local global i64 0, align 8
@SEVENZIP_MAGIC = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @sevenzip_parse_file_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevenzip_parse_file_init(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sevenzip_context_t*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 (...) @sevenzip_stream_new()
  %8 = inttoptr i64 %7 to %struct.sevenzip_context_t*
  store %struct.sevenzip_context_t* %8, %struct.sevenzip_context_t** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SEVENZIP_MAGIC_LEN, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SEVENZIP_MAGIC, align 4
  %20 = load i64, i64* @SEVENZIP_MAGIC_LEN, align 8
  %21 = call i64 @string_is_not_equal_fast(i32 %18, i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %69

24:                                               ; preds = %15
  %25 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.sevenzip_context_t* %25, %struct.sevenzip_context_t** %27, align 8
  %28 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %29 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @InFile_Open(i32* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %69

35:                                               ; preds = %24
  %36 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %37 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %36, i32 0, i32 4
  %38 = call i32 @FileInStream_CreateVTable(%struct.TYPE_8__* %37)
  %39 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %40 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %39, i32 0, i32 2
  %41 = call i32 @LookToRead_CreateVTable(%struct.TYPE_7__* %40, i32 0)
  %42 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %43 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %46 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32* %44, i32** %47, align 8
  %48 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %49 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %48, i32 0, i32 2
  %50 = call i32 @LookToRead_Init(%struct.TYPE_7__* %49)
  %51 = call i32 (...) @CrcGenerateTable()
  %52 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %53 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %52, i32 0, i32 3
  %54 = call i32 @SzArEx_Init(i32* %53)
  %55 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %56 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %55, i32 0, i32 3
  %57 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %58 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %61 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %60, i32 0, i32 1
  %62 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %63 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %62, i32 0, i32 0
  %64 = call i64 @SzArEx_Open(i32* %56, i32* %59, i32* %61, i32* %63)
  %65 = load i64, i64* @SZ_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %35
  br label %69

68:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %76

69:                                               ; preds = %67, %34, %23, %14
  %70 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %71 = icmp ne %struct.sevenzip_context_t* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %6, align 8
  %74 = call i32 @sevenzip_stream_free(%struct.sevenzip_context_t* %73)
  br label %75

75:                                               ; preds = %72, %69
  store i32 -1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @sevenzip_stream_new(...) #1

declare dso_local i64 @string_is_not_equal_fast(i32, i32, i64) #1

declare dso_local i64 @InFile_Open(i32*, i8*) #1

declare dso_local i32 @FileInStream_CreateVTable(%struct.TYPE_8__*) #1

declare dso_local i32 @LookToRead_CreateVTable(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @LookToRead_Init(%struct.TYPE_7__*) #1

declare dso_local i32 @CrcGenerateTable(...) #1

declare dso_local i32 @SzArEx_Init(i32*) #1

declare dso_local i64 @SzArEx_Open(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sevenzip_stream_free(%struct.sevenzip_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
