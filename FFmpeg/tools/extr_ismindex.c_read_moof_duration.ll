; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_read_moof_duration.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_read_moof_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@MOV_TFHD_BASE_DATA_OFFSET = common dso_local global i32 0, align 4
@MOV_TFHD_STSD_ID = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_DURATION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Couldn't find trun\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Couldn't find traf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @read_moof_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_moof_duration(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i32 @avio_seek(i32* %15, i64 %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @avio_rb32(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @avio_rb32(i32* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @MKBETAG(i8 signext 109, i8 signext 111, i8 zeroext 111, i8 signext 102)
  %25 = call i64 @expect_tag(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %127

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %117, %28
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %31, %32
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %124

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @avio_tell(i32* %36)
  store i64 %37, i64* %10, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @avio_rb32(i32* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @avio_rb32(i32* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @MKBETAG(i8 signext 116, i8 signext 114, i8 zeroext 97, i8 signext 102)
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %117

45:                                               ; preds = %35
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %107, %45
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @avio_tell(i32* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @avio_rb32(i32* %57)
  store i64 %58, i64* %8, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @avio_rb32(i32* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @MKBETAG(i8 signext 116, i8 signext 102, i8 zeroext 104, i8 signext 100)
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @avio_r8(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @avio_rb24(i32* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @avio_rb32(i32* %69)
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @MOV_TFHD_BASE_DATA_OFFSET, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @avio_rb64(i32* %76)
  br label %78

78:                                               ; preds = %75, %64
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @MOV_TFHD_STSD_ID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 @avio_rb32(i32* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @MOV_TFHD_DEFAULT_DURATION, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @avio_rb32(i32* %92)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %95, %54
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @MKBETAG(i8 signext 116, i8 signext 114, i8 zeroext 117, i8 signext 110)
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @read_trun_duration(i32* %101, i32 %102, i64 %105)
  store i64 %106, i64* %3, align 8
  br label %129

107:                                              ; preds = %96
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* @SEEK_SET, align 4
  %113 = call i32 @avio_seek(i32* %108, i64 %111, i32 %112)
  br label %48

114:                                              ; preds = %48
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %127

117:                                              ; preds = %35
  %118 = load i32*, i32** %4, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %8, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i32, i32* @SEEK_SET, align 4
  %123 = call i32 @avio_seek(i32* %118, i64 %121, i32 %122)
  br label %29

124:                                              ; preds = %29
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 @fprintf(i32 %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %114, %27
  %128 = load i64, i64* %6, align 8
  store i64 %128, i64* %3, align 8
  br label %129

129:                                              ; preds = %127, %100
  %130 = load i64, i64* %3, align 8
  ret i64 %130
}

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i64 @avio_rb32(i32*) #1

declare dso_local i64 @expect_tag(i64, i64) #1

declare dso_local i64 @MKBETAG(i8 signext, i8 signext, i8 zeroext, i8 signext) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i64 @read_trun_duration(i32*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
