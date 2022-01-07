; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@stdout = common dso_local global i32* null, align 8
@PNG_ALL_FILTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"--small\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--tRNS\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--sRGB\00", align 1
@PNG_DEFAULT_sRGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"--linear\00", align 1
@PNG_FP_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"--1.8\00", align 1
@PNG_GAMMA_MAC_18 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"--nofilters\00", align 1
@PNG_FILTER_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"--color=\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"--insert\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"makepng: %s: invalid option\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"makepng: %s: not a valid color type\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"makepng: %s: not a valid bit depth\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"%s: %s: could not open\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"makepng: %s: unknown argument\0A\00", align 1
@.str.20 = private unnamed_addr constant [187 x i8] c"usage: makepng [--small] [--sRGB|--linear|--1.8] [--color=...] color-type bit-depth [file-name]\0A  Make a test PNG file, by default writes to stdout.\0A  Other options are available, UTSL.\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"makepng: --color=...: %u out of range [0..%u]\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"makepng: --color --small: only one at a time!\0A\00", align 1
@PNG_COLOR_MASK_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_FILTER_AVG = common dso_local global i32 0, align 4
@PNG_FILTER_SUB = common dso_local global i32 0, align 4
@PNG_FILTER_PAETH = common dso_local global i32 0, align 4
@main.copyright = internal global [2 x i8*] [i8* inttoptr (i64 129 to i8*), i8* null], align 16
@main.licensing = internal global [2 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null], align 16
@.str.23 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Licensing\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"en\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32*, i32** @stdout, align 8
  store i32* %25, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 8, i32* %8, align 4
  store i32 32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @PNG_ALL_FILTERS, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__** %15, %struct.TYPE_6__*** %16, align 8
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %28 = call i32 @memset(i32* %27, i32 0, i32 20)
  br label %29

29:                                               ; preds = %259, %243, %213, %181, %164, %150, %133, %121, %105, %74, %68, %62, %56, %50, %45, %40, %2
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %266

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %17, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %29

41:                                               ; preds = %33
  %42 = load i8*, i8** %17, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  br label %29

46:                                               ; preds = %41
  %47 = load i8*, i8** %17, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @PNG_DEFAULT_sRGB, align 4
  store i32 %51, i32* %14, align 4
  br label %29

52:                                               ; preds = %46
  %53 = load i8*, i8** %17, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @PNG_FP_1, align 4
  store i32 %57, i32* %14, align 4
  br label %29

58:                                               ; preds = %52
  %59 = load i8*, i8** %17, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @PNG_GAMMA_MAC_18, align 4
  store i32 %63, i32* %14, align 4
  br label %29

64:                                               ; preds = %58
  %65 = load i8*, i8** %17, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @PNG_FILTER_NONE, align 4
  store i32 %69, i32* %13, align 4
  br label %29

70:                                               ; preds = %64
  %71 = load i8*, i8** %17, align 8
  %72 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i8*, i8** %17, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %78 = call i32 @parse_color(i8* %76, i32* %77)
  br label %29

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  %81 = icmp sge i32 %80, 3
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = load i8*, i8** %17, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %5, align 8
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %18, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %5, align 8
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %19, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, 2
  store i32 %94, i32* %4, align 4
  %95 = load i8*, i8** %18, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = call %struct.TYPE_6__* @find_insert(i8* %95, i8* %96)
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %20, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %99 = icmp ne %struct.TYPE_6__* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %86
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %102 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store %struct.TYPE_6__** %104, %struct.TYPE_6__*** %16, align 8
  br label %105

105:                                              ; preds = %100, %86
  br label %29

106:                                              ; preds = %82, %79
  %107 = load i8*, i8** %17, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 45
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** %17, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %114)
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %106
  %118 = load i8*, i8** %17, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  store i32 %122, i32* %8, align 4
  br label %29

123:                                              ; preds = %117
  %124 = load i8*, i8** %17, align 8
  %125 = call i64 @strncmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %123
  %128 = load i8*, i8** %17, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  store i32 %134, i32* %8, align 4
  br label %29

135:                                              ; preds = %127
  %136 = load i8*, i8** %17, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 4
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %17, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %17, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 4
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145, %140, %135
  %151 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  store i32 %151, i32* %8, align 4
  br label %29

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %123
  %155 = load i8*, i8** %17, align 8
  %156 = call i64 @strncmp(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = load i8*, i8** %17, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  store i32 %165, i32* %8, align 4
  br label %29

166:                                              ; preds = %158
  %167 = load i8*, i8** %17, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  %169 = call i64 @strcmp(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %17, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 3
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load i8*, i8** %17, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 3
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176, %171, %166
  %182 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  store i32 %182, i32* %8, align 4
  br label %29

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %154
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 8
  br i1 %187, label %188, label %214

188:                                              ; preds = %185
  %189 = load i8*, i8** %17, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = call i64 @isdigit(i8 signext %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %188
  %195 = load i8*, i8** %17, align 8
  %196 = call i32 @atoi(i8* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %8, align 4
  %201 = icmp sgt i32 %200, 6
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %8, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 5
  br i1 %207, label %208, label %213

208:                                              ; preds = %205, %202, %199, %194
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** %17, align 8
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i8* %210)
  %212 = call i32 @exit(i32 1) #3
  unreachable

213:                                              ; preds = %205
  br label %29

214:                                              ; preds = %188, %185
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, 32
  br i1 %216, label %217, label %244

217:                                              ; preds = %214
  %218 = load i8*, i8** %17, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = call i64 @isdigit(i8 signext %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %217
  %224 = load i8*, i8** %17, align 8
  %225 = call i32 @atoi(i8* %224)
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp sle i32 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %9, align 4
  %230 = icmp sgt i32 %229, 16
  br i1 %230, label %238, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %9, align 4
  %234 = sub nsw i32 0, %233
  %235 = and i32 %232, %234
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %231, %228, %223
  %239 = load i32, i32* @stderr, align 4
  %240 = load i8*, i8** %17, align 8
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i8* %240)
  %242 = call i32 @exit(i32 1) #3
  unreachable

243:                                              ; preds = %231
  br label %29

244:                                              ; preds = %217, %214
  %245 = load i32, i32* %4, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %261

247:                                              ; preds = %244
  %248 = load i8*, i8** %17, align 8
  %249 = call i32* @fopen(i8* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i32* %249, i32** %6, align 8
  %250 = load i32*, i32** %6, align 8
  %251 = icmp eq i32* %250, null
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load i32, i32* @stderr, align 4
  %254 = load i8*, i8** %17, align 8
  %255 = load i32, i32* @errno, align 4
  %256 = call i8* @strerror(i32 %255)
  %257 = call i32 (i32, i8*, ...) @fprintf(i32 %253, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* %254, i8* %256)
  %258 = call i32 @exit(i32 1) #3
  unreachable

259:                                              ; preds = %247
  %260 = load i8*, i8** %17, align 8
  store i8* %260, i8** %7, align 8
  br label %29

261:                                              ; preds = %244
  %262 = load i32, i32* @stderr, align 4
  %263 = load i8*, i8** %17, align 8
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %263)
  %265 = call i32 @exit(i32 1) #3
  unreachable

266:                                              ; preds = %29
  %267 = load i32, i32* %8, align 4
  %268 = icmp eq i32 %267, 8
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %9, align 4
  %271 = icmp eq i32 %270, 32
  br i1 %271, label %272, label %276

272:                                              ; preds = %269, %266
  %273 = load i32, i32* @stderr, align 4
  %274 = call i32 (i32, i8*, ...) @fprintf(i32 %273, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.20, i64 0, i64 0))
  %275 = call i32 @exit(i32 1) #3
  unreachable

276:                                              ; preds = %269
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %285

281:                                              ; preds = %276
  %282 = load i32, i32* %9, align 4
  %283 = shl i32 1, %282
  %284 = sub i32 %283, 1
  br label %285

285:                                              ; preds = %281, %280
  %286 = phi i32 [ 255, %280 ], [ %284, %281 ]
  store i32 %286, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %287

287:                                              ; preds = %309, %285
  %288 = load i32, i32* %22, align 4
  %289 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %290 = load i32, i32* %289, align 16
  %291 = icmp ule i32 %288, %290
  br i1 %291, label %292, label %312

292:                                              ; preds = %287
  %293 = load i32, i32* %22, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %21, align 4
  %298 = icmp ugt i32 %296, %297
  br i1 %298, label %299, label %308

299:                                              ; preds = %292
  %300 = load i32, i32* @stderr, align 4
  %301 = load i32, i32* %22, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %21, align 4
  %306 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 %304, i32 %305)
  %307 = call i32 @exit(i32 1) #3
  unreachable

308:                                              ; preds = %292
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %22, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %22, align 4
  br label %287

312:                                              ; preds = %287
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %312
  %316 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %317 = load i32, i32* %316, align 16
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = load i32, i32* @stderr, align 4
  %321 = call i32 (i32, i8*, ...) @fprintf(i32 %320, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  %322 = call i32 @exit(i32 1) #3
  unreachable

323:                                              ; preds = %315, %312
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* @PNG_ALL_FILTERS, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %367

327:                                              ; preds = %323
  %328 = load i32, i32* %10, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %367, label %330

330:                                              ; preds = %327
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* @PNG_COLOR_MASK_PALETTE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %330
  %336 = load i32, i32* %9, align 4
  %337 = icmp slt i32 %336, 8
  br i1 %337, label %338, label %340

338:                                              ; preds = %335, %330
  %339 = load i32, i32* @PNG_FILTER_NONE, align 4
  store i32 %339, i32* %13, align 4
  br label %366

340:                                              ; preds = %335
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %360

345:                                              ; preds = %340
  %346 = load i32, i32* %9, align 4
  %347 = icmp eq i32 %346, 8
  br i1 %347, label %348, label %355

348:                                              ; preds = %345
  %349 = load i32, i32* @PNG_FILTER_NONE, align 4
  %350 = load i32, i32* @PNG_FILTER_AVG, align 4
  %351 = or i32 %349, %350
  %352 = xor i32 %351, -1
  %353 = load i32, i32* %13, align 4
  %354 = and i32 %353, %352
  store i32 %354, i32* %13, align 4
  br label %359

355:                                              ; preds = %345
  %356 = load i32, i32* @PNG_FILTER_SUB, align 4
  %357 = load i32, i32* @PNG_FILTER_PAETH, align 4
  %358 = or i32 %356, %357
  store i32 %358, i32* %13, align 4
  br label %359

359:                                              ; preds = %355, %348
  br label %365

360:                                              ; preds = %340
  %361 = load i32, i32* @PNG_FILTER_NONE, align 4
  %362 = xor i32 %361, -1
  %363 = load i32, i32* %13, align 4
  %364 = and i32 %363, %362
  store i32 %364, i32* %13, align 4
  br label %365

365:                                              ; preds = %360, %359
  br label %366

366:                                              ; preds = %365, %338
  br label %367

367:                                              ; preds = %366, %327, %323
  %368 = call %struct.TYPE_6__* @add_tEXt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.copyright, i64 0, i64 0))
  store %struct.TYPE_6__* %368, %struct.TYPE_6__** %23, align 8
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %370 = icmp ne %struct.TYPE_6__* %369, null
  br i1 %370, label %371, label %376

371:                                              ; preds = %367
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %373 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  store %struct.TYPE_6__* %372, %struct.TYPE_6__** %373, align 8
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  store %struct.TYPE_6__** %375, %struct.TYPE_6__*** %16, align 8
  br label %376

376:                                              ; preds = %371, %367
  %377 = call %struct.TYPE_6__* @add_iTXt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32* null, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.licensing, i64 0, i64 0))
  store %struct.TYPE_6__* %377, %struct.TYPE_6__** %23, align 8
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %379 = icmp ne %struct.TYPE_6__* %378, null
  br i1 %379, label %380, label %385

380:                                              ; preds = %376
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %382 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  store %struct.TYPE_6__* %381, %struct.TYPE_6__** %382, align 8
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  store %struct.TYPE_6__** %384, %struct.TYPE_6__*** %16, align 8
  br label %385

385:                                              ; preds = %380, %376
  %386 = load i32*, i32** %6, align 8
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* %9, align 4
  %389 = load i32, i32* %14, align 4
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %391 = load i32, i32* %13, align 4
  %392 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* %11, align 4
  %395 = call i32 @write_png(i8** %7, i32* %386, i32 %387, i32 %388, i32 %389, %struct.TYPE_6__* %390, i32 %391, i32* %392, i32 %393, i32 %394)
  store i32 %395, i32* %24, align 4
  %396 = load i32, i32* %24, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %385
  %399 = load i8*, i8** %7, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load i8*, i8** %7, align 8
  %403 = call i32 @remove(i8* %402)
  br label %404

404:                                              ; preds = %401, %398, %385
  %405 = load i32, i32* %24, align 4
  ret i32 %405
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_color(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @find_insert(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local %struct.TYPE_6__* @add_tEXt(i8*, i8**) #1

declare dso_local %struct.TYPE_6__* @add_iTXt(i8*, i8*, i32*, i8**) #1

declare dso_local i32 @write_png(i8**, i32*, i32, i32, i32, %struct.TYPE_6__*, i32, i32*, i32, i32) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
