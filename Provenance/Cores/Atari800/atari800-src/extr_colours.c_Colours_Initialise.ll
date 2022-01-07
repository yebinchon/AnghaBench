; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_Colours_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_Colours_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"-saturation\00", align 1
@COLOURS_PAL_setup = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"-contrast\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"-brightness\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-gamma\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-tint\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"-colors-preset\00", align 1
@preset_cfg_strings = common dso_local global i32 0, align 4
@COLOURS_PRESET_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Invalid value for -colors-preset\00", align 1
@presets = common dso_local global %struct.TYPE_4__* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\09-colors-preset standard|deep-black|vibrant\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\09                       Use one of predefined color adjustments\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\09-saturation <num>      Set color saturation\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\09-contrast <num>        Set contrast\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"\09-brightness <num>      Set brightness\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"\09-gamma <num>           Set color gamma factor\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\09-tint <num>            Set tint\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@Atari800_tv_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Colours_Initialise(i32* %0, i8** %1) #0 {
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

11:                                               ; preds = %214, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %217

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
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
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
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_setup, i32 0, i32 4), align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 4), align 8
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %34
  br label %202

45:                                               ; preds = %16
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
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
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_setup, i32 0, i32 3), align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 3), align 8
  br label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %56
  br label %201

67:                                               ; preds = %45
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
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
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_setup, i32 0, i32 2), align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 2), align 8
  br label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %78
  br label %200

89:                                               ; preds = %67
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
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
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_setup, i32 0, i32 1), align 8
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 1), align 8
  br label %110

108:                                              ; preds = %97
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %108, %100
  br label %199

111:                                              ; preds = %89
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
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
  store i8* %129, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_setup, i32 0, i32 0), align 8
  store i8* %129, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_setup, i32 0, i32 0), align 8
  br label %132

130:                                              ; preds = %119
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %130, %122
  br label %198

133:                                              ; preds = %111
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %133
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %141
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* @preset_cfg_strings, align 4
  %152 = load i32, i32* @COLOURS_PRESET_SIZE, align 4
  %153 = call i32 @CFG_MatchTextParameter(i8* %150, i32 %151, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %3, align 4
  br label %236

159:                                              ; preds = %144
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @presets, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = bitcast %struct.TYPE_4__* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @COLOURS_PAL_setup to i8*), i8* align 8 %164, i64 40, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @COLOURS_NTSC_setup to i8*), i8* align 8 bitcast (%struct.TYPE_4__* @COLOURS_PAL_setup to i8*), i64 40, i1 false)
  %165 = call i32 (...) @COLOURS_NTSC_RestoreDefaults()
  %166 = call i32 (...) @COLOURS_PAL_RestoreDefaults()
  br label %169

167:                                              ; preds = %141
  %168 = load i32, i32* @TRUE, align 4
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %167, %159
  br label %197

170:                                              ; preds = %133
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %170
  %179 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %180 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0))
  %181 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %182 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %183 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %184 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %185 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  br label %186

186:                                              ; preds = %178, %170
  %187 = load i8**, i8*** %5, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = load i8**, i8*** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8*, i8** %192, i64 %195
  store i8* %191, i8** %196, align 8
  br label %197

197:                                              ; preds = %186, %169
  br label %198

198:                                              ; preds = %197, %132
  br label %199

199:                                              ; preds = %198, %110
  br label %200

200:                                              ; preds = %199, %88
  br label %201

201:                                              ; preds = %200, %66
  br label %202

202:                                              ; preds = %201, %44
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %202
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8* %210)
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %3, align 4
  br label %236

213:                                              ; preds = %202
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %11

217:                                              ; preds = %11
  %218 = load i32, i32* %7, align 4
  %219 = load i32*, i32** %4, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32*, i32** %4, align 8
  %221 = load i8**, i8*** %5, align 8
  %222 = call i32 @COLOURS_NTSC_Initialise(i32* %220, i8** %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %217
  %225 = load i32*, i32** %4, align 8
  %226 = load i8**, i8*** %5, align 8
  %227 = call i32 @COLOURS_PAL_Initialise(i32* %225, i8** %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %224, %217
  %230 = load i32, i32* @FALSE, align 4
  store i32 %230, i32* %3, align 4
  br label %236

231:                                              ; preds = %224
  %232 = load i32, i32* @Atari800_tv_mode, align 4
  %233 = call i32 @UpdateModeDependentPointers(i32 %232)
  %234 = call i32 (...) @UpdatePalette()
  %235 = load i32, i32* @TRUE, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %231, %229, %205, %156
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @atof(i8*) #1

declare dso_local i32 @CFG_MatchTextParameter(i8*, i32, i32) #1

declare dso_local i32 @Log_print(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @COLOURS_NTSC_RestoreDefaults(...) #1

declare dso_local i32 @COLOURS_PAL_RestoreDefaults(...) #1

declare dso_local i32 @COLOURS_NTSC_Initialise(i32*, i8**) #1

declare dso_local i32 @COLOURS_PAL_Initialise(i32*, i8**) #1

declare dso_local i32 @UpdateModeDependentPointers(i32) #1

declare dso_local i32 @UpdatePalette(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
