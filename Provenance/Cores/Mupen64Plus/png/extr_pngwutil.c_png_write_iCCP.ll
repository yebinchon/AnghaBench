; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_iCCP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_iCCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_17__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"in png_write_iCCP\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"No profile for iCCP chunk\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ICC profile too short\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ICC profile length invalid (not a multiple of 4)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Profile length does not match profile\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"iCCP: invalid keyword\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i32 0, align 4
@png_iCCP = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_iCCP(%struct.TYPE_16__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [81 x i32], align 16
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @png_error(%struct.TYPE_16__* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @png_get_uint_32(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 132
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32 @png_error(%struct.TYPE_16__* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = call i32 @png_error(%struct.TYPE_16__* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33, %27
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @png_get_uint_32(i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = call i32 @png_error(%struct.TYPE_16__* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds [81 x i32], [81 x i32]* %9, i64 0, i64 0
  %53 = call i32 @png_check_keyword(%struct.TYPE_16__* %50, i32 %51, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = call i32 @png_error(%struct.TYPE_16__* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [81 x i32], [81 x i32]* %9, i64 0, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @png_text_compress_init(%struct.TYPE_17__* %10, i32* %67, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = load i32, i32* @png_iCCP, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @png_text_compress(%struct.TYPE_16__* %70, i32 %71, %struct.TYPE_17__* %10, i32 %72)
  %74 = load i64, i64* @Z_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %59
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @png_error(%struct.TYPE_16__* %77, i8* %81)
  br label %83

83:                                               ; preds = %76, %59
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = load i32, i32* @png_iCCP, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %87, %89
  %91 = call i32 @png_write_chunk_header(%struct.TYPE_16__* %84, i32 %85, i64 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds [81 x i32], [81 x i32]* %9, i64 0, i64 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @png_write_chunk_data(%struct.TYPE_16__* %92, i32* %93, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = call i32 @png_write_compressed_data_out(%struct.TYPE_16__* %96, %struct.TYPE_17__* %10)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = call i32 @png_write_chunk_end(%struct.TYPE_16__* %98)
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @png_get_uint_32(i32*) #1

declare dso_local i32 @png_check_keyword(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @png_text_compress_init(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i64 @png_text_compress(%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @png_write_chunk_header(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @png_write_compressed_data_out(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @png_write_chunk_end(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
