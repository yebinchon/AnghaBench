; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_hIST.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_hIST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }

@PNG_MAX_PALETTE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"in png_handle_hIST\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@PNG_INFO_hIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_hIST(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call i32 @png_chunk_error(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %65

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34, %27
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @png_crc_finish(%struct.TYPE_11__* %42, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = call i32 @png_chunk_benign_error(%struct.TYPE_11__* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %110

47:                                               ; preds = %34
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PNG_INFO_hIST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @png_crc_finish(%struct.TYPE_11__* %58, i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = call i32 @png_chunk_benign_error(%struct.TYPE_11__* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %110

63:                                               ; preds = %50, %47
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74, %65
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @png_crc_finish(%struct.TYPE_11__* %79, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = call i32 @png_chunk_benign_error(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %110

84:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %98, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %92 = call i32 @png_crc_read(%struct.TYPE_11__* %90, i32* %91, i32 2)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %94 = call i32 @png_get_uint_16(i32* %93)
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %16, i64 %96
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %85

101:                                              ; preds = %85
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = call i64 @png_crc_finish(%struct.TYPE_11__* %102, i32 0)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, i32* %11, align 4
  br label %110

106:                                              ; preds = %101
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = call i32 @png_set_hIST(%struct.TYPE_11__* %107, %struct.TYPE_12__* %108, i32* %16)
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %105, %78, %57, %41
  %111 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %11, align 4
  switch i32 %112, label %114 [
    i32 0, label %113
    i32 1, label %113
  ]

113:                                              ; preds = %110, %110
  ret void

114:                                              ; preds = %110
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_debug(i32, i8*) #2

declare dso_local i32 @png_chunk_error(%struct.TYPE_11__*, i8*) #2

declare dso_local i64 @png_crc_finish(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @png_crc_read(%struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @png_get_uint_16(i32*) #2

declare dso_local i32 @png_set_hIST(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
