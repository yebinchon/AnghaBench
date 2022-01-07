; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_parse_page_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_parse_page_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, i8*, i8* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Page time out %ds, state %d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"duplicate region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Region %d, (%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32, i32*, i32*)* @dvbsub_parse_page_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsub_parse_page_segment(%struct.TYPE_15__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %12, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %16, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %6, align 4
  br label %207

32:                                               ; preds = %5
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %19, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %20, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  %42 = load i32, i32* %40, align 4
  %43 = ashr i32 %42, 2
  %44 = and i32 %43, 3
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %20, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %207

51:                                               ; preds = %32
  %52 = load i32, i32* %19, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i32 (%struct.TYPE_15__*, i8*, i32, i32, ...) @ff_dlog(%struct.TYPE_15__* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @save_subtitle_set(%struct.TYPE_15__* %69, i32* %70, i32* %71)
  br label %73

73:                                               ; preds = %68, %51
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %86

79:                                               ; preds = %76, %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = call i32 @delete_regions(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = call i32 @delete_objects(%struct.TYPE_14__* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %85 = call i32 @delete_cluts(%struct.TYPE_14__* %84)
  br label %86

86:                                               ; preds = %79, %76
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %14, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %91, align 8
  br label %92

92:                                               ; preds = %158, %86
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = load i32*, i32** %16, align 8
  %96 = icmp ult i32* %94, %95
  br i1 %96, label %97, label %196

97:                                               ; preds = %92
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %8, align 8
  %100 = load i32, i32* %98, align 4
  store i32 %100, i32* %17, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32* %102, i32** %8, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %13, align 8
  br label %106

106:                                              ; preds = %117, %97
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = icmp ne %struct.TYPE_13__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %112, %113
  br label %115

115:                                              ; preds = %109, %106
  %116 = phi i1 [ false, %106 ], [ %114, %109 ]
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %13, align 8
  br label %106

121:                                              ; preds = %115
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %123 = icmp ne %struct.TYPE_13__* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = load i32, i32* @AV_LOG_ERROR, align 4
  %127 = call i32 @av_log(%struct.TYPE_15__* %125, i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %196

128:                                              ; preds = %121
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %129, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__** %14, %struct.TYPE_13__*** %15, align 8
  br label %130

130:                                              ; preds = %141, %128
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %132 = icmp ne %struct.TYPE_13__* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %136, %137
  br label %139

139:                                              ; preds = %133, %130
  %140 = phi i1 [ false, %130 ], [ %138, %133 ]
  br i1 %140, label %141, label %147

141:                                              ; preds = %139
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store %struct.TYPE_13__** %143, %struct.TYPE_13__*** %15, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %13, align 8
  br label %130

147:                                              ; preds = %139
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %149 = icmp ne %struct.TYPE_13__* %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = call %struct.TYPE_13__* @av_mallocz(i32 32)
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %13, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %153 = icmp ne %struct.TYPE_13__* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = call i32 @AVERROR(i32 %155)
  store i32 %156, i32* %6, align 4
  br label %207

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %147
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = call i8* @AV_RB16(i32* %162)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  store i32* %167, i32** %8, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = call i8* @AV_RB16(i32* %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32* %173, i32** %8, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %15, align 8
  store %struct.TYPE_13__* %176, %struct.TYPE_13__** %177, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %182, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  store %struct.TYPE_13__* %183, %struct.TYPE_13__** %185, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %187 = load i32, i32* %17, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (%struct.TYPE_15__*, i8*, i32, i32, ...) @ff_dlog(%struct.TYPE_15__* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %191, i8* %194)
  br label %92

196:                                              ; preds = %124, %92
  br label %197

197:                                              ; preds = %200, %196
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %199 = icmp ne %struct.TYPE_13__* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %201, %struct.TYPE_13__** %13, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %14, align 8
  %205 = call i32 @av_freep(%struct.TYPE_13__** %13)
  br label %197

206:                                              ; preds = %197
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %206, %154, %50, %30
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i32 @ff_dlog(%struct.TYPE_15__*, i8*, i32, i32, ...) #1

declare dso_local i32 @save_subtitle_set(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @delete_regions(%struct.TYPE_14__*) #1

declare dso_local i32 @delete_objects(%struct.TYPE_14__*) #1

declare dso_local i32 @delete_cluts(%struct.TYPE_14__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local %struct.TYPE_13__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @AV_RB16(i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
