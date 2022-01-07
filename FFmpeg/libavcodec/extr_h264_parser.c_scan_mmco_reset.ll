; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parser.c_scan_mmco_reset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parser.c_scan_mmco_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i64 }

@AV_PICTURE_TYPE_B = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"illegal reordering_of_pic_nums_idc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"reference count %d overflow\0A\00", align 1
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@MAX_MMCO_COUNT = common dso_local global i32 0, align 4
@MMCO_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"illegal memory management control operation %d\0A\00", align 1
@MMCO_END = common dso_local global i32 0, align 4
@MMCO_RESET = common dso_local global i32 0, align 4
@MMCO_SHORT2UNUSED = common dso_local global i32 0, align 4
@MMCO_SHORT2LONG = common dso_local global i32 0, align 4
@MMCO_LONG2UNUSED = common dso_local global i32 0, align 4
@MMCO_SET_MAX_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*)* @scan_mmco_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_mmco_reset(%struct.TYPE_8__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 3
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @get_ue_golomb(i32* %33)
  br label %35

35:                                               ; preds = %32, %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @get_bits1(i32* %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @ff_h264_parse_ref_count(i32* %11, i32* %43, i32* %44, %struct.TYPE_9__* %48, i32 %49, i32 %52, i8* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %4, align 4
  br label %218

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %113

62:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %109, %62
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = call i64 @get_bits1(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %104, %71
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @get_ue_golomb_31(i32* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ult i32 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @get_ue_golomb_long(i32* %78)
  br label %90

80:                                               ; preds = %72
  %81 = load i32, i32* %15, align 4
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @av_log(i8* %84, i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %4, align 4
  br label %218

89:                                               ; preds = %80
  br label %107

90:                                               ; preds = %77
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %91, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @av_log(i8* %98, i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %4, align 4
  br label %218

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %72

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %67
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %63

112:                                              ; preds = %63
  br label %113

113:                                              ; preds = %112, %58
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %121, %113
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %150

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %133, %121
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @ff_h264_pred_weight_table(i32* %138, i32 %142, i32* %143, i32 %144, i32* %8, i32 %147, i8* %148)
  br label %150

150:                                              ; preds = %137, %133, %125
  %151 = load i32*, i32** %6, align 8
  %152 = call i64 @get_bits1(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %217

154:                                              ; preds = %150
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %213, %154
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* @MAX_MMCO_COUNT, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %216

159:                                              ; preds = %155
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @get_ue_golomb_31(i32* %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* @MMCO_LONG, align 4
  %164 = icmp ugt i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i8*, i8** %7, align 8
  %167 = load i32, i32* @AV_LOG_ERROR, align 4
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @av_log(i8* %166, i32 %167, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %170, i32* %4, align 4
  br label %218

171:                                              ; preds = %159
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @MMCO_END, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %218

176:                                              ; preds = %171
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @MMCO_RESET, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 1, i32* %4, align 4
  br label %218

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @MMCO_SHORT2UNUSED, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* @MMCO_SHORT2LONG, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186, %182
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 @get_ue_golomb_long(i32* %191)
  br label %193

193:                                              ; preds = %190, %186
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* @MMCO_SHORT2LONG, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %209, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* @MMCO_LONG2UNUSED, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %209, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* @MMCO_LONG, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* @MMCO_SET_MAX_LONG, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %205, %201, %197, %193
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @get_ue_golomb_31(i32* %210)
  br label %212

212:                                              ; preds = %209, %205
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %16, align 4
  br label %155

216:                                              ; preds = %155
  br label %217

217:                                              ; preds = %216, %150
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %180, %175, %165, %97, %83, %56
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @get_ue_golomb(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @ff_h264_parse_ref_count(i32*, i32*, i32*, %struct.TYPE_9__*, i32, i32, i8*) #1

declare dso_local i32 @get_ue_golomb_31(i32*) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

declare dso_local i32 @ff_h264_pred_weight_table(i32*, i32, i32*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
