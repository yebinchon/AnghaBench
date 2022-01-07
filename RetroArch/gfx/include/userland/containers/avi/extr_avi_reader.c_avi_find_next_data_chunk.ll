; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_find_next_data_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_find_next_data_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk size\00", align 1
@VC_CONTAINER_ERROR_EOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"rec \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"movi\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"AVIX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*)* @avi_find_next_data_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_find_next_data_chunk(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x i64], align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %12, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %123, %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @READ_FOURCC(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %15, i64* %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @READ_U32(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %17, i64* %10, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @STREAM_STATUS(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %128

23:                                               ; preds = %13
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @VC_FOURCC(i8 signext 76, i8 signext 73, i8 signext 83, i8 signext 84)
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %30 = bitcast i64* %29 to i32*
  %31 = call i32 @PEEK_BYTES(i32* %28, i32* %30, i32 4)
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %34, i32* %4, align 4
  br label %130

35:                                               ; preds = %27
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @VC_FOURCC(i8 signext 114, i8 signext 101, i8 signext 99, i8 signext 32)
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @SKIP_FOURCC(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %56

43:                                               ; preds = %35
  %44 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 111, i8 signext 118, i8 signext 105)
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @SKIP_FOURCC(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %55

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @AVI_SKIP_CHUNK(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %40
  br label %123

57:                                               ; preds = %23
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @VC_FOURCC(i8 signext 82, i8 signext 73, i8 signext 70, i8 signext 70)
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %64 = bitcast i64* %63 to i32*
  %65 = call i32 @PEEK_BYTES(i32* %62, i32* %64, i32 4)
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %68, i32* %4, align 4
  br label %130

69:                                               ; preds = %61
  %70 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @VC_FOURCC(i8 signext 65, i8 signext 86, i8 signext 73, i8 signext 88)
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @SKIP_FOURCC(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %81

77:                                               ; preds = %69
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @AVI_SKIP_CHUNK(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %74
  br label %123

82:                                               ; preds = %57
  %83 = load i64, i64* %9, align 8
  %84 = ashr i64 %83, 16
  %85 = call i32 @AVI_TWOCC(i8 signext 100, i8 signext 99)
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %106, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %9, align 8
  %90 = ashr i64 %89, 16
  %91 = call i32 @AVI_TWOCC(i8 signext 100, i8 signext 98)
  %92 = sext i32 %91 to i64
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* %9, align 8
  %96 = ashr i64 %95, 16
  %97 = call i32 @AVI_TWOCC(i8 signext 100, i8 signext 100)
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load i64, i64* %9, align 8
  %102 = ashr i64 %101, 16
  %103 = call i32 @AVI_TWOCC(i8 signext 119, i8 signext 98)
  %104 = sext i32 %103 to i64
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100, %94, %88, %82
  %107 = load i64, i64* %9, align 8
  %108 = load i64*, i64** %6, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64*, i64** %7, align 8
  store i64 %109, i64* %110, align 8
  br label %128

111:                                              ; preds = %100
  %112 = load i64, i64* %10, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i64, i64* %9, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %118, i32* %4, align 4
  br label %130

119:                                              ; preds = %114, %111
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @AVI_SKIP_CHUNK(i32* %120, i64 %121)
  br label %123

123:                                              ; preds = %119, %81, %56
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @STREAM_STATUS(i32* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %13, label %128

128:                                              ; preds = %123, %106, %22
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %117, %67, %33
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @READ_FOURCC(i32*, i8*) #1

declare dso_local i64 @READ_U32(i32*, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @PEEK_BYTES(i32*, i32*, i32) #1

declare dso_local i32 @SKIP_FOURCC(i32*, i8*) #1

declare dso_local i32 @AVI_SKIP_CHUNK(i32*, i64) #1

declare dso_local i32 @AVI_TWOCC(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
