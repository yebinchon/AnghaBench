; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fitsenc.c_write_image_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fitsenc.c_write_image_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__** }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SIMPLE  = \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"XTENSION= 'IMAGE   '\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"BITPIX\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"NAXIS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NAXIS1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NAXIS2\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"NAXIS3\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PCOUNT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"GCOUNT\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"BZERO\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"CTYPE3  = 'RGB     '\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @write_image_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_image_header(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %6, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %47 [
    i32 128, label %29
    i32 129, label %30
    i32 131, label %31
    i32 133, label %31
    i32 130, label %39
    i32 132, label %39
  ]

29:                                               ; preds = %1
  store i32 8, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %50

30:                                               ; preds = %1
  store i32 16, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 32768, i32* %11, align 4
  br label %50

31:                                               ; preds = %1, %1
  store i32 8, i32* %8, align 4
  store i32 3, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 131
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 3, i32* %10, align 4
  br label %38

37:                                               ; preds = %31
  store i32 4, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %50

39:                                               ; preds = %1, %1
  store i32 16, i32* %8, align 4
  store i32 3, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 3, i32* %10, align 4
  br label %46

45:                                               ; preds = %39
  store i32 4, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %44
  store i32 32768, i32* %11, align 4
  br label %50

47:                                               ; preds = %1
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %172

50:                                               ; preds = %46, %38, %30, %29
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %57 = call i32 @memcpy(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 10
  %60 = call i32 @memset(i8* %59, i8 signext 32, i32 70)
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 29
  store i8 84, i8* %61, align 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %66 = call i32 @avio_write(i32 %64, i8* %65, i32 80)
  br label %78

67:                                               ; preds = %50
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %69 = call i32 @memcpy(i8* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 20)
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 20
  %72 = call i32 @memset(i8* %71, i8 signext 32, i32 60)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %77 = call i32 @avio_write(i32 %75, i8* %76, i32 80)
  br label %78

78:                                               ; preds = %67, %55
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @write_keyword_value(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32* %13)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @write_keyword_value(%struct.TYPE_9__* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32* %13)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @write_keyword_value(%struct.TYPE_9__* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32* %13)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @write_keyword_value(%struct.TYPE_9__* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32* %13)
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %78
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @write_keyword_value(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %101, i32* %13)
  br label %103

103:                                              ; preds = %99, %78
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = call i32 @write_keyword_value(%struct.TYPE_9__* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* %13)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = call i32 @write_keyword_value(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 1, i32* %13)
  br label %116

113:                                              ; preds = %103
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @write_keyword_value(%struct.TYPE_9__* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %121, i32* %13)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %128 = call i32 @memcpy(i8* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 20)
  %129 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 20
  %131 = call i32 @memset(i8* %130, i8 signext 32, i32 60)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %136 = call i32 @avio_write(i32 %134, i8* %135, i32 80)
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %126, %123
  %140 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %141 = call i32 @memcpy(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %142 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %143 = getelementptr inbounds i8, i8* %142, i64 3
  %144 = call i32 @memset(i8* %143, i8 signext 32, i32 77)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %149 = call i32 @avio_write(i32 %147, i8* %148, i32 80)
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 35
  %154 = sdiv i32 %153, 36
  %155 = mul nsw i32 %154, 36
  %156 = load i32, i32* %13, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %14, align 4
  %158 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %159 = call i32 @memset(i8* %158, i8 signext 32, i32 80)
  br label %160

160:                                              ; preds = %163, %139
  %161 = load i32, i32* %14, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %168 = call i32 @avio_write(i32 %166, i8* %167, i32 80)
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %14, align 4
  br label %160

171:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %47
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @avio_write(i32, i8*, i32) #1

declare dso_local i32 @write_keyword_value(%struct.TYPE_9__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
