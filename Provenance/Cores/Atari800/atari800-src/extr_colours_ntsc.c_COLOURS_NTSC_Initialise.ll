; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_COLOURS_NTSC_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_COLOURS_NTSC_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"-ntsc-saturation\00", align 1
@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"-ntsc-contrast\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"-ntsc-brightness\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"-ntsc-gamma\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"-ntsc-tint\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"-ntsc-colordelay\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-paletten\00", align 1
@COLOURS_NTSC_external = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"-paletten-adjust\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\09-ntsc-saturation <num>  Set NTSC color saturation\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\09-ntsc-contrast <num>    Set NTSC contrast\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\09-ntsc-brightness <num>  Set NTSC brightness\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"\09-ntsc-gamma <num>       Set NTSC color gamma factor\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"\09-ntsc-tint <num>        Set NTSC tint\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"\09-ntsc-colordelay <num>  Set NTSC GTIA color delay\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"\09-paletten <filename>    Load NTSC external palette\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"\09-paletten-adjust        Apply adjustments to NTSC external palette\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Cannot read NTSC palette from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @COLOURS_NTSC_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %235, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %238

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @atof(i8* %39)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 5), align 8
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %33
  br label %223

44:                                               ; preds = %15
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @atof(i8* %61)
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 4), align 8
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %55
  br label %222

66:                                               ; preds = %44
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @atof(i8* %83)
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 3), align 8
  br label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %77
  br label %221

88:                                               ; preds = %66
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %88
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @atof(i8* %105)
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 2), align 8
  br label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %99
  br label %220

110:                                              ; preds = %88
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %110
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @atof(i8* %127)
  store i8* %128, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 1), align 8
  br label %131

129:                                              ; preds = %118
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %129, %121
  br label %219

132:                                              ; preds = %110
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @atof(i8* %149)
  store i8* %150, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 0), align 8
  br label %153

151:                                              ; preds = %140
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %151, %143
  br label %218

154:                                              ; preds = %132
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %154
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @COLOURS_NTSC_external, i32 0, i32 0), align 8
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @Util_strlcpy(i8* %166, i8* %172, i32 8)
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @COLOURS_NTSC_external, i32 0, i32 1), align 8
  br label %177

175:                                              ; preds = %162
  %176 = load i32, i32* @TRUE, align 4
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %175, %165
  br label %217

178:                                              ; preds = %154
  %179 = load i8**, i8*** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @COLOURS_NTSC_external, i32 0, i32 2), align 4
  br label %216

188:                                              ; preds = %178
  %189 = load i8**, i8*** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %198 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %199 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %200 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  %201 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %202 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %203 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  %204 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0))
  br label %205

205:                                              ; preds = %196, %188
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = load i8**, i8*** %5, align 8
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8*, i8** %211, i64 %214
  store i8* %210, i8** %215, align 8
  br label %216

216:                                              ; preds = %205, %186
  br label %217

217:                                              ; preds = %216, %177
  br label %218

218:                                              ; preds = %217, %153
  br label %219

219:                                              ; preds = %218, %131
  br label %220

220:                                              ; preds = %219, %109
  br label %221

221:                                              ; preds = %220, %87
  br label %222

222:                                              ; preds = %221, %65
  br label %223

223:                                              ; preds = %222, %43
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load i8**, i8*** %5, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %231)
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %3, align 4
  br label %251

234:                                              ; preds = %223
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %10

238:                                              ; preds = %10
  %239 = load i32, i32* %7, align 4
  %240 = load i32*, i32** %4, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @COLOURS_NTSC_external, i32 0, i32 1), align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = call i32 @COLOURS_EXTERNAL_Read(%struct.TYPE_5__* @COLOURS_NTSC_external)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @COLOURS_NTSC_external, i32 0, i32 0), align 8
  %248 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* %247)
  br label %249

249:                                              ; preds = %246, %243, %238
  %250 = load i32, i32* @TRUE, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %249, %226
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @atof(i8*) #1

declare dso_local i32 @Util_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @COLOURS_EXTERNAL_Read(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
