; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_smoothstreamingenc.c_parse_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_smoothstreamingenc.c_parse_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32**, i8*, i32, i32*)* }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@parse_fragment.tfxd = internal constant [16 x i32] [i32 109, i32 29, i32 155, i32 5, i32 66, i32 213, i32 68, i32 230, i32 128, i32 226, i32 20, i32 29, i32 175, i32 247, i32 87, i32 178], align 16
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32*, i32*, i32*, i32)* @parse_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fragment(%struct.TYPE_5__* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [16 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_5__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_5__*, i32**, i8*, i32, i32*)** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @AVIO_FLAG_READ, align 4
  %27 = call i32 %23(%struct.TYPE_5__* %24, i32** %14, i8* %25, i32 %26, i32* null)
  store i32 %27, i32* %15, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %7, align 4
  br label %143

31:                                               ; preds = %6
  %32 = load i32, i32* @EIO, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @avio_rb32(i32* %34)
  %36 = load i32*, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %31
  br label %139

46:                                               ; preds = %40
  %47 = load i32*, i32** %14, align 8
  %48 = call i64 @avio_rl32(i32* %47)
  %49 = call i32 @MKTAG(i8 zeroext 109, i8 zeroext 111, i8 signext 111, i8 signext 102)
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %139

53:                                               ; preds = %46
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @avio_rb32(i32* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %139

61:                                               ; preds = %53
  %62 = load i32*, i32** %14, align 8
  %63 = call i64 @avio_rl32(i32* %62)
  %64 = call i32 @MKTAG(i8 zeroext 109, i8 zeroext 102, i8 signext 104, i8 signext 100)
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %139

68:                                               ; preds = %61
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 %70, 8
  %72 = load i32, i32* @SEEK_CUR, align 4
  %73 = call i32 @avio_seek(i32* %69, i32 %71, i32 %72)
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @avio_rb32(i32* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = call i64 @avio_rl32(i32* %76)
  %78 = call i32 @MKTAG(i8 zeroext 116, i8 zeroext 114, i8 signext 97, i8 signext 102)
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %139

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %133, %82
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @avio_tell(i32* %84)
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %83
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @avio_rb32(i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = call i64 @avio_rl32(i32* %92)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %18, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @avio_tell(i32* %95)
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %96, %97
  %99 = sub nsw i32 %98, 8
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %107, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %17, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %89
  br label %139

108:                                              ; preds = %102
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @MKTAG(i8 zeroext 117, i8 zeroext 117, i8 signext 105, i8 signext 100)
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = load i32*, i32** %14, align 8
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %115 = call i32 @avio_read(i32* %113, i32* %114, i32 16)
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %117 = call i32 @memcmp(i32* %116, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @parse_fragment.tfxd, i64 0, i64 0), i32 16)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %17, align 4
  %121 = icmp sge i32 %120, 44
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* @SEEK_CUR, align 4
  %125 = call i32 @avio_seek(i32* %123, i32 4, i32 %124)
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @avio_rb64(i32* %126)
  %128 = load i32*, i32** %10, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @avio_rb64(i32* %129)
  %131 = load i32*, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  store i32 0, i32* %15, align 4
  br label %138

132:                                              ; preds = %119, %112
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* @SEEK_SET, align 4
  %137 = call i32 @avio_seek(i32* %134, i32 %135, i32 %136)
  br label %83

138:                                              ; preds = %122, %83
  br label %139

139:                                              ; preds = %138, %107, %81, %67, %60, %52, %45
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = call i32 @ff_format_io_close(%struct.TYPE_5__* %140, i32** %14)
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %139, %29
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i32 @MKTAG(i8 zeroext, i8 zeroext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_5__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
