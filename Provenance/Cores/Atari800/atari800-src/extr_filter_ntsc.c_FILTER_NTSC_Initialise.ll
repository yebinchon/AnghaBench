; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"-ntsc-sharpness\00", align 1
@FILTER_NTSC_setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"-ntsc-resolution\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"-ntsc-artifacts\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"-ntsc-fringing\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-ntsc-bleed\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"-ntsc-burstphase\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"-ntsc-filter-preset\00", align 1
@preset_cfg_strings = common dso_local global i32 0, align 4
@FILTER_NTSC_PRESET_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Invalid value for -ntsc-filter-preset\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"\09-ntsc-sharpness <n>   Set sharpness for NTSC filter (default %.2g)\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"\09-ntsc-resolution <n>  Set resolution for NTSC filter (default %.2g)\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"\09-ntsc-artifacts <n>   Set luma artifacts ratio for NTSC filter (default %.2g)\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"\09-ntsc-fringing <n>    Set chroma fringing ratio for NTSC filter (default %.2g)\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"\09-ntsc-bleed <n>       Set bleed for NTSC filter (default %.2g)\00", align 1
@.str.14 = private unnamed_addr constant [89 x i8] c"\09-ntsc-burstphase <n>  Set burst phase (artifact colours) for NTSC filter (default %.2g)\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"\09-ntsc-filter-preset composite|svideo|rgb|monochrome\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"\09                      Use one of predefined NTSC filter adjustments\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FILTER_NTSC_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %239, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %242

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @atof(i8* %40)
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 0), align 8
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %34
  br label %227

45:                                               ; preds = %16
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @atof(i8* %62)
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 1), align 8
  br label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %56
  br label %226

67:                                               ; preds = %45
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @atof(i8* %84)
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 2), align 8
  br label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %78
  br label %225

89:                                               ; preds = %67
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @atof(i8* %106)
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 3), align 8
  br label %110

108:                                              ; preds = %97
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %108, %100
  br label %224

111:                                              ; preds = %89
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @atof(i8* %128)
  store i8* %129, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 4), align 8
  br label %132

130:                                              ; preds = %119
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %130, %122
  br label %223

133:                                              ; preds = %111
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %133
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i8* @atof(i8* %150)
  store i8* %151, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 5), align 8
  br label %154

152:                                              ; preds = %141
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %152, %144
  br label %222

155:                                              ; preds = %133
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %155
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* @preset_cfg_strings, align 4
  %174 = load i32, i32* @FILTER_NTSC_PRESET_SIZE, align 4
  %175 = call i32 @CFG_MatchTextParameter(i8* %172, i32 %173, i32 %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %3, align 4
  br label %246

181:                                              ; preds = %166
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @FILTER_NTSC_SetPreset(i32 %182)
  br label %186

184:                                              ; preds = %163
  %185 = load i32, i32* @TRUE, align 4
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %184, %181
  br label %221

187:                                              ; preds = %155
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %187
  %196 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 0), align 8
  %197 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* %196)
  %198 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 1), align 8
  %199 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0), i8* %198)
  %200 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 2), align 8
  %201 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0), i8* %200)
  %202 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 3), align 8
  %203 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0), i8* %202)
  %204 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 4), align 8
  %205 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0), i8* %204)
  %206 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 5), align 8
  %207 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.14, i64 0, i64 0), i8* %206)
  %208 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0))
  %209 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.16, i64 0, i64 0))
  br label %210

210:                                              ; preds = %195, %187
  %211 = load i8**, i8*** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8*, i8** %216, i64 %219
  store i8* %215, i8** %220, align 8
  br label %221

221:                                              ; preds = %210, %186
  br label %222

222:                                              ; preds = %221, %154
  br label %223

223:                                              ; preds = %222, %132
  br label %224

224:                                              ; preds = %223, %110
  br label %225

225:                                              ; preds = %224, %88
  br label %226

226:                                              ; preds = %225, %66
  br label %227

227:                                              ; preds = %226, %44
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = load i8**, i8*** %5, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %235)
  %237 = load i32, i32* @FALSE, align 4
  store i32 %237, i32* %3, align 4
  br label %246

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %11

242:                                              ; preds = %11
  %243 = load i32, i32* %7, align 4
  %244 = load i32*, i32** %4, align 8
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* @TRUE, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %242, %230, %178
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @atof(i8*) #1

declare dso_local i32 @CFG_MatchTextParameter(i8*, i32, i32) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @FILTER_NTSC_SetPreset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
