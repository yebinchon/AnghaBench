; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_read_config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"atari800.cfg\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"Error opening configuration file.\0AExecute this utility from atari800 dir after configuring it!\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"JOYSTICK_\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error in config lines: %s\0A\00", align 1
@JOYSTICKTYPES = common dso_local global i32 0, align 4
@joyparams = common dso_local global i32* null, align 8
@joytypes = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Unrecognized joystick type %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"KEYSET_\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Error in config line: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%d %d %d %d %d %d %d %d %d\00", align 1
@keysets = common dso_local global i32** null, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"Not enough parametres for KEYSET_x: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Invalid %i. scancode in KEYSET parameter: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_config() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @exit(i32 1) #3
  unreachable

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %252, %12
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @fgets(i8* %14, i32 256, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %253

18:                                               ; preds = %13
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 13
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  br label %69

44:                                               ; preds = %31, %23, %18
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 13
  br i1 %62, label %63, label %68

63:                                               ; preds = %55, %47
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %63, %55, %44
  br label %69

69:                                               ; preds = %68, %39
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %71 = call i8* @strchr(i8* %70, i8 signext 61)
  store i8* %71, i8** %3, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %252

74:                                               ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %3, align 8
  store i8 0, i8* %75, align 1
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %126

80:                                               ; preds = %74
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 9
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 48
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = icmp sgt i32 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %80
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  store i32 1, i32* %6, align 4
  br label %125

93:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %114, %93
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @JOYSTICKTYPES, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load i8*, i8** %3, align 8
  %100 = load i32*, i32** @joyparams, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @strcmp(i8* %99, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i32, i32* %4, align 4
  %109 = load i32*, i32** @joytypes, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %117

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %94

117:                                              ; preds = %107, %94
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @JOYSTICKTYPES, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %117
  br label %125

125:                                              ; preds = %124, %90
  br label %251

126:                                              ; preds = %74
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %128 = call i64 @strncmp(i8* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %250

130:                                              ; preds = %126
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 7
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = sub nsw i32 %133, 48
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %5, align 4
  %139 = icmp sgt i32 %138, 4
  br i1 %139, label %140, label %143

140:                                              ; preds = %137, %130
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %141)
  store i32 1, i32* %6, align 4
  br label %249

143:                                              ; preds = %137
  %144 = load i8*, i8** %3, align 8
  %145 = load i32**, i32*** @keysets, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32**, i32*** @keysets, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32**, i32*** @keysets, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32**, i32*** @keysets, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32**, i32*** @keysets, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32**, i32*** @keysets, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  %181 = load i32**, i32*** @keysets, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = load i32**, i32*** @keysets, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 7
  %193 = load i32**, i32*** @keysets, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 8
  %199 = call i32 @sscanf(i8* %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32* %150, i32* %156, i32* %162, i32* %168, i32* %174, i32* %180, i32* %186, i32* %192, i32* %198)
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 9
  br i1 %201, label %202, label %205

202:                                              ; preds = %143
  %203 = load i8*, i8** %3, align 8
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %203)
  store i32 1, i32* %6, align 4
  br label %205

205:                                              ; preds = %202, %143
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %245, %205
  %207 = load i32, i32* %4, align 4
  %208 = icmp slt i32 %207, 9
  br i1 %208, label %209, label %248

209:                                              ; preds = %206
  %210 = load i32**, i32*** @keysets, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %209
  %221 = load i32**, i32*** @keysets, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %229, 255
  br i1 %230, label %231, label %244

231:                                              ; preds = %220, %209
  %232 = load i32**, i32*** @keysets, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %232, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 255, i32* %239, align 4
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 1
  %242 = load i8*, i8** %3, align 8
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %241, i8* %242)
  store i32 1, i32* %6, align 4
  br label %244

244:                                              ; preds = %231, %220
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %4, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %4, align 4
  br label %206

248:                                              ; preds = %206
  br label %249

249:                                              ; preds = %248, %140
  br label %250

250:                                              ; preds = %249, %126
  br label %251

251:                                              ; preds = %250, %125
  br label %252

252:                                              ; preds = %251, %69
  br label %13

253:                                              ; preds = %13
  %254 = load i32*, i32** %1, align 8
  %255 = call i32 @fclose(i32* %254)
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = call i32 @exit(i32 1) #3
  unreachable

260:                                              ; preds = %253
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
