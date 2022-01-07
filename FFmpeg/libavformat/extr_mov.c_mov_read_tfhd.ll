; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_tfhd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_tfhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i8* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not find corresponding trex (id %u)\0A\00", align 1
@MOV_TFHD_BASE_DATA_OFFSET = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_BASE_IS_MOOF = common dso_local global i32 0, align 4
@MOV_TFHD_STSD_ID = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_DURATION = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_SIZE = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"frag flags 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @mov_read_tfhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_tfhd(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @avio_r8(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @avio_rb24(i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @avio_rb32(i32* %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %4, align 4
  br label %171

26:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %9, align 8
  br label %55

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %27

55:                                               ; preds = %44, %27
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AV_LOG_WARNING, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @av_log(i32 %61, i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %4, align 4
  br label %171

65:                                               ; preds = %55
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @set_frag_stream(i32* %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MOV_TFHD_BASE_DATA_OFFSET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @avio_rb64(i32* %81)
  br label %98

83:                                               ; preds = %65
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MOV_TFHD_DEFAULT_BASE_IS_MOOF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  br label %96

92:                                               ; preds = %83
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %91, %88 ], [ %95, %92 ]
  br label %98

98:                                               ; preds = %96, %80
  %99 = phi i32 [ %82, %80 ], [ %97, %96 ]
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @MOV_TFHD_STSD_ID, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32*, i32** %6, align 8
  %108 = call i8* @avio_rb32(i32* %107)
  br label %113

109:                                              ; preds = %98
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i8* [ %108, %106 ], [ %112, %109 ]
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @MOV_TFHD_DEFAULT_DURATION, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32*, i32** %6, align 8
  %123 = call i8* @avio_rb32(i32* %122)
  br label %128

124:                                              ; preds = %113
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i8* [ %123, %121 ], [ %127, %124 ]
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @MOV_TFHD_DEFAULT_SIZE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32*, i32** %6, align 8
  %138 = call i8* @avio_rb32(i32* %137)
  br label %143

139:                                              ; preds = %128
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i8* [ %138, %136 ], [ %142, %139 ]
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @MOV_TFHD_DEFAULT_FLAGS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load i32*, i32** %6, align 8
  %153 = call i8* @avio_rb32(i32* %152)
  br label %158

154:                                              ; preds = %143
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  br label %158

158:                                              ; preds = %154, %151
  %159 = phi i8* [ %153, %151 ], [ %157, %154 ]
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AV_LOG_TRACE, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @av_log(i32 %165, i32 %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %158, %58, %24
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @set_frag_stream(i32*, i32) #1

declare dso_local i32 @avio_rb64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
