; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stco.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8** }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Duplicated STCO atom\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reached eof, corrupted STCO atom\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_19__*, i64)* @mov_read_stco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_stco(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %161

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %25, i64 %32
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %8, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %9, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %39 = call i32 @avio_r8(%struct.TYPE_19__* %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = call i32 @avio_rb24(%struct.TYPE_19__* %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = call i8* @avio_rb32(%struct.TYPE_19__* %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %161

48:                                               ; preds = %20
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i32, i32* @AV_LOG_WARNING, align 4
  %58 = call i32 @av_log(%struct.TYPE_14__* %56, i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = call i32 @av_free(i8** %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i8** @av_malloc_array(i32 %66, i32 8)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  store i8** %67, i8*** %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %59
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %4, align 4
  br label %161

77:                                               ; preds = %59
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @MKTAG(i8 signext 115, i8 signext 116, i8 signext 99, i8 signext 111)
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %107, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %86
  %97 = phi i1 [ false, %86 ], [ %95, %90 ]
  br i1 %97, label %98, label %110

98:                                               ; preds = %96
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = call i8* @avio_rb32(%struct.TYPE_19__* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %100, i8** %106, align 8
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %86

110:                                              ; preds = %96
  br label %145

111:                                              ; preds = %77
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @MKTAG(i8 signext 99, i8 signext 111, i8 signext 54, i8 signext 52)
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %138, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi i1 [ false, %117 ], [ %126, %121 ]
  br i1 %128, label %129, label %141

129:                                              ; preds = %127
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = call i8* @avio_rb64(%struct.TYPE_19__* %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* %131, i8** %137, align 8
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %10, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %117

141:                                              ; preds = %127
  br label %144

142:                                              ; preds = %111
  %143 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %143, i32* %4, align 4
  br label %161

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %144, %110
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = load i32, i32* @AV_LOG_WARNING, align 4
  %158 = call i32 @av_log(%struct.TYPE_14__* %156, i32 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %159, i32* %4, align 4
  br label %161

160:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %153, %142, %74, %47, %19
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @avio_r8(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_19__*) #1

declare dso_local i8* @avio_rb32(%struct.TYPE_19__*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @av_free(i8**) #1

declare dso_local i8** @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @avio_rb64(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
