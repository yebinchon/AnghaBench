; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"-H1\00", align 1
@Devices_atari_h_dir = common dso_local global i32* null, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"-H2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-H3\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-H4\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-Hpath\00", align 1
@Devices_h_exe_path = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"-hreadonly\00", align 1
@Devices_h_read_only = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"-hreadwrite\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"-devbug\00", align 1
@devbug = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\09-H1 <path>       Set path for H1: device\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\09-H2 <path>       Set path for H2: device\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"\09-H3 <path>       Set path for H3: device\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\09-H4 <path>       Set path for H4: device\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"\09-Hpath <path>    Set path for Atari executables on the H: device\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"\09-hreadonly       Enable read-only mode for H: device\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"\09-hreadwrite      Disable read-only mode for H: device\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"\09-devbug          Debugging messages for H: and P: devices\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Devices_Initialise(i32* %0, i8** %1) #0 {
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

10:                                               ; preds = %227, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %230

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
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32*, i32** @Devices_atari_h_dir, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @FILENAME_MAX, align 4
  %44 = call i32 @Util_strlcpy(i32 %36, i8* %42, i32 %43)
  br label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %33
  br label %215

48:                                               ; preds = %15
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32*, i32** @Devices_atari_h_dir, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @FILENAME_MAX, align 4
  %70 = call i32 @Util_strlcpy(i32 %62, i8* %68, i32 %69)
  br label %73

71:                                               ; preds = %56
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %59
  br label %214

74:                                               ; preds = %48
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32*, i32** @Devices_atari_h_dir, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @FILENAME_MAX, align 4
  %96 = call i32 @Util_strlcpy(i32 %88, i8* %94, i32 %95)
  br label %99

97:                                               ; preds = %82
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %85
  br label %213

100:                                              ; preds = %74
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i32*, i32** @Devices_atari_h_dir, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @FILENAME_MAX, align 4
  %122 = call i32 @Util_strlcpy(i32 %114, i8* %120, i32 %121)
  br label %125

123:                                              ; preds = %108
  %124 = load i32, i32* @TRUE, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %123, %111
  br label %212

126:                                              ; preds = %100
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %126
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i32, i32* @Devices_h_exe_path, align 4
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* @FILENAME_MAX, align 4
  %146 = call i32 @Util_strlcpy(i32 %138, i8* %144, i32 %145)
  br label %149

147:                                              ; preds = %134
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %147, %137
  br label %211

150:                                              ; preds = %126
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* @Devices_h_read_only, align 4
  br label %210

160:                                              ; preds = %150
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* @Devices_h_read_only, align 4
  br label %209

170:                                              ; preds = %160
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = load i32, i32* @TRUE, align 4
  store i32 %179, i32* @devbug, align 4
  br label %208

180:                                              ; preds = %170
  %181 = load i8**, i8*** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strcmp(i8* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %180
  %189 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %190 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %191 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %192 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %193 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0))
  %194 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  %195 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  %196 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0))
  br label %197

197:                                              ; preds = %188, %180
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8*, i8** %203, i64 %206
  store i8* %202, i8** %207, align 8
  br label %208

208:                                              ; preds = %197, %178
  br label %209

209:                                              ; preds = %208, %168
  br label %210

210:                                              ; preds = %209, %158
  br label %211

211:                                              ; preds = %210, %149
  br label %212

212:                                              ; preds = %211, %125
  br label %213

213:                                              ; preds = %212, %99
  br label %214

214:                                              ; preds = %213, %73
  br label %215

215:                                              ; preds = %214, %47
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load i8**, i8*** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %223)
  %225 = load i32, i32* @FALSE, align 4
  store i32 %225, i32* %3, align 4
  br label %235

226:                                              ; preds = %215
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %10

230:                                              ; preds = %10
  %231 = load i32, i32* %7, align 4
  %232 = load i32*, i32** %4, align 8
  store i32 %231, i32* %232, align 4
  %233 = call i32 (...) @Devices_H_Init()
  %234 = load i32, i32* @TRUE, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %230, %218
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @Devices_H_Init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
