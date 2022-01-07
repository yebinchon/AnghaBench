; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_trak_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_trak_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { i32, i32, i64, i64, i64, %struct.TYPE_26__*, i64, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }

@FF_MOV_FLAG_EMPTY_MOOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"trak\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@MODE_PSP = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Not writing any edit list even though one would have been required\0A\00", align 1
@MODE_MOV = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_29__*)* @mov_write_trak_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_trak_tag(i32* %0, i32* %1, %struct.TYPE_28__* %2, %struct.TYPE_27__* %3, %struct.TYPE_29__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_29__* %4, %struct.TYPE_29__** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @avio_tell(i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FF_MOV_FLAG_EMPTY_MOOV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %5
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @avio_wb32(i32* %37, i32 0)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @ffio_wfourcc(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %45 = call i32 @mov_write_tkhd_tag(i32* %41, %struct.TYPE_28__* %42, %struct.TYPE_27__* %43, %struct.TYPE_29__* %44)
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @av_assert2(i32 %50)
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %98

57:                                               ; preds = %36
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %66 = call i32 @mov_write_edts_tag(i32* %63, %struct.TYPE_28__* %64, %struct.TYPE_27__* %65)
  br label %97

67:                                               ; preds = %57
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 7
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MODE_PSP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %88 = call i64 @is_clcp_track(%struct.TYPE_27__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %80, %72
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AV_LOG_WARNING, align 4
  %95 = call i32 @av_log(i32 %93, i32 %94, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %86
  br label %97

97:                                               ; preds = %96, %62
  br label %98

98:                                               ; preds = %97, %36
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %106 = call i32 @mov_write_tref_tag(i32* %104, %struct.TYPE_27__* %105)
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %112 = call i32 @mov_write_mdia_tag(i32* %108, i32* %109, %struct.TYPE_28__* %110, %struct.TYPE_27__* %111)
  store i32 %112, i32* %15, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %6, align 4
  br label %198

116:                                              ; preds = %107
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MODE_PSP, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32*, i32** %8, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %125 = call i32 @mov_write_uuid_tag_psp(i32* %123, %struct.TYPE_27__* %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32*, i32** %8, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %135 = call i32 @mov_write_udta_sdp(i32* %133, %struct.TYPE_27__* %134)
  br label %136

136:                                              ; preds = %132, %126
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MODE_MOV, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %184

142:                                              ; preds = %136
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %142
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call double @av_q2d(i64 %154)
  store double %155, double* %16, align 8
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %150
  %162 = load double, double* %16, align 8
  %163 = fcmp une double 1.000000e+00, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32*, i32** %8, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %167 = call i32 @mov_write_tapt_tag(i32* %165, %struct.TYPE_27__* %166)
  br label %168

168:                                              ; preds = %164, %161, %150
  br label %169

169:                                              ; preds = %168, %142
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %171 = call i64 @is_clcp_track(%struct.TYPE_27__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load i32*, i32** %8, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %182 = call i32 @mov_write_tapt_tag(i32* %180, %struct.TYPE_27__* %181)
  br label %183

183:                                              ; preds = %179, %173, %169
  br label %184

184:                                              ; preds = %183, %136
  %185 = load i32*, i32** %8, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %188 = call i32 @mov_write_track_udta_tag(i32* %185, %struct.TYPE_28__* %186, %struct.TYPE_29__* %187)
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @update_size(i32* %195, i32 %196)
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %184, %114
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_write_tkhd_tag(i32*, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_29__*) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @mov_write_edts_tag(i32*, %struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i64 @is_clcp_track(%struct.TYPE_27__*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @mov_write_tref_tag(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @mov_write_mdia_tag(i32*, i32*, %struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mov_write_uuid_tag_psp(i32*, %struct.TYPE_27__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mov_write_udta_sdp(i32*, %struct.TYPE_27__*) #1

declare dso_local double @av_q2d(i64) #1

declare dso_local i32 @mov_write_tapt_tag(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @mov_write_track_udta_tag(i32*, %struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
