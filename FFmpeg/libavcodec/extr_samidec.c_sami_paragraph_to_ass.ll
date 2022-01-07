; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_samidec.c_sami_paragraph_to_ass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_samidec.c_sami_paragraph_to_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"<P\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ID=Source\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ID=\22Source\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"&nbsp;\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"<BR\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"{\\i1}%s{\\i0}\\N\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @sami_paragraph_to_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sami_paragraph_to_ass(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @av_strdup(i8* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %250

31:                                               ; preds = %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = call i32 @av_bprint_clear(%struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = call i32 @av_bprint_clear(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = call i32 @av_bprint_clear(%struct.TYPE_12__* %39)
  br label %41

41:                                               ; preds = %198, %61, %31
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %15, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @av_stristr(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %199

49:                                               ; preds = %41
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 62
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @av_isspace(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  br label %41

64:                                               ; preds = %55, %49
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %71 = call i32 (%struct.TYPE_12__*, i8*, ...) @av_bprintf(%struct.TYPE_12__* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i8*, i8** %10, align 8
  %74 = call i8* @av_strtok(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %13)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %13, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %72
  br label %199

81:                                               ; preds = %77
  %82 = load i8*, i8** %13, align 8
  store i8* %82, i8** %10, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i8* @av_stristr(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i8* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @av_stristr(i8* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %81
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %15, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %94 = call i32 @av_bprint_clear(%struct.TYPE_12__* %93)
  br label %95

95:                                               ; preds = %90, %86
  br label %96

96:                                               ; preds = %101, %95
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @av_isspace(i8 signext %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  br label %96

104:                                              ; preds = %96
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @strncmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 -1, i32* %7, align 4
  br label %246

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %192, %174, %109
  %111 = load i8*, i8** %10, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %198

114:                                              ; preds = %110
  %115 = load i8*, i8** %10, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 60
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @av_strncasecmp(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 62
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @av_isspace(i8 signext %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %123
  br label %198

136:                                              ; preds = %129, %119
  br label %137

137:                                              ; preds = %136, %114
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @av_strncasecmp(i8* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %175, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %143 = call i32 (%struct.TYPE_12__*, i8*, ...) @av_bprintf(%struct.TYPE_12__* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %10, align 8
  br label %146

146:                                              ; preds = %158, %141
  %147 = load i8*, i8** %10, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i8*, i8** %10, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 62
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ false, %146 ], [ %155, %151 ]
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %10, align 8
  br label %146

161:                                              ; preds = %156
  %162 = load i8*, i8** %10, align 8
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  br label %198

166:                                              ; preds = %161
  %167 = load i8*, i8** %10, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 62
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %10, align 8
  br label %174

174:                                              ; preds = %171, %166
  br label %110

175:                                              ; preds = %137
  %176 = load i8*, i8** %10, align 8
  %177 = load i8, i8* %176, align 1
  %178 = call i32 @av_isspace(i8 signext %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load i8, i8* %182, align 1
  %184 = call i32 @av_bprint_chars(%struct.TYPE_12__* %181, i8 signext %183, i32 1)
  br label %192

185:                                              ; preds = %175
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %190 = call i32 @av_bprint_chars(%struct.TYPE_12__* %189, i8 signext 32, i32 1)
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %180
  %193 = load i8*, i8** %10, align 8
  %194 = load i8, i8* %193, align 1
  %195 = call i32 @av_isspace(i8 signext %194)
  store i32 %195, i32* %14, align 4
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %10, align 8
  br label %110

198:                                              ; preds = %165, %135, %110
  br label %41

199:                                              ; preds = %80, %48
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = call i32 @av_bprint_clear(%struct.TYPE_12__* %201)
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %199
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ff_htmlmarkup_to_ass(%struct.TYPE_11__* %209, %struct.TYPE_12__* %210, i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  br label %246

219:                                              ; preds = %208
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (%struct.TYPE_12__*, i8*, ...) @av_bprintf(%struct.TYPE_12__* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %219, %199
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @ff_htmlmarkup_to_ass(%struct.TYPE_11__* %228, %struct.TYPE_12__* %229, i32 %233)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  br label %246

238:                                              ; preds = %227
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 (%struct.TYPE_12__*, i8*, ...) @av_bprintf(%struct.TYPE_12__* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %238, %237, %218, %108
  %247 = load i8*, i8** %9, align 8
  %248 = call i32 @av_free(i8* %247)
  %249 = load i32, i32* %7, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %246, %28
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bprint_clear(%struct.TYPE_12__*) #1

declare dso_local i8* @av_stristr(i8*, i8*) #1

declare dso_local i32 @av_isspace(i8 signext) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @av_bprint_chars(%struct.TYPE_12__*, i8 signext, i32) #1

declare dso_local i32 @ff_htmlmarkup_to_ass(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
