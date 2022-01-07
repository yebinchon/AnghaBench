; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/json_compilation_db/extr_json_compilation_db.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/json_compilation_db/extr_json_compilation_db.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".cp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".cpp\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXLOCK = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fstat(%s)\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"fdopen\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"fseeko\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"fputs\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"  \22directory\22: \22%s\22,\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"  \22file\22: \22%s\22,\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"  \22command\22: \22\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%s\\\22%s\\\22\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 4
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %4, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ugt i64 %39, 2
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -2
  %46 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = icmp eq i64 0, %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %41, %23
  %49 = load i64, i64* %16, align 8
  %50 = icmp ugt i64 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 -3
  %56 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = icmp eq i64 0, %56
  br i1 %57, label %69, label %58

58:                                               ; preds = %51, %48
  %59 = load i64, i64* %16, align 8
  %60 = icmp ugt i64 %59, 4
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %16, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 -4
  %66 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = icmp eq i64 0, %66
  br i1 %67, label %69, label %68

68:                                               ; preds = %61, %58
  store i32 0, i32* %3, align 4
  br label %249

69:                                               ; preds = %61, %51, %41
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* @O_RDWR, align 4
  %72 = load i32, i32* @O_CREAT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @O_EXLOCK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @DEFFILEMODE, align 4
  %77 = call i32 @open(i8* %70, i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* @EX_NOINPUT, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 (i32, i8*, ...) @err(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %80, %69
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @fstat(i32 %85, %struct.stat* %6)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @EX_NOINPUT, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 (i32, i8*, ...) @err(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @S_ISREG(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @EX_USAGE, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 (i32, i8*, ...) @err(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %8, align 4
  %104 = call i32* @fdopen(i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %104, i32** %9, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @EX_UNAVAILABLE, align 4
  %109 = call i32 (i32, i8*, ...) @err(i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %112 = load i32*, i32** %9, align 8
  %113 = call i64 @fread(i8* %111, i32 1, i32 2, i32* %112)
  store i64 %113, i64* %14, align 8
  %114 = load i64, i64* %14, align 8
  %115 = icmp ne i64 %114, 2
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %118 = call i64 @memcmp(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %119 = icmp ne i64 0, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %116, %110
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* @SEEK_SET, align 4
  %123 = call i32 @fseeko(i32* %121, i32 0, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* @EX_UNAVAILABLE, align 4
  %128 = call i32 (i32, i8*, ...) @err(i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %120
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EX_UNAVAILABLE, align 4
  %136 = call i32 (i32, i8*, ...) @err(i32 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %129
  br label %156

138:                                              ; preds = %116
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* @SEEK_END, align 4
  %141 = call i32 @fseeko(i32* %139, i32 -3, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @EX_UNAVAILABLE, align 4
  %146 = call i32 (i32, i8*, ...) @err(i32 %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %138
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @EX_UNAVAILABLE, align 4
  %154 = call i32 (i32, i8*, ...) @err(i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  br label %156

156:                                              ; preds = %155, %137
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %161 = load i32*, i32** %9, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %162)
  %164 = load i32*, i32** %9, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %165)
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %169

169:                                              ; preds = %231, %156
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %234

173:                                              ; preds = %169
  %174 = load i8**, i8*** %5, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @strchr(i8* %178, i8 signext 92)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %197, label %181

181:                                              ; preds = %173
  %182 = load i8**, i8*** %5, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strchr(i8* %186, i8 signext 34)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %181
  %190 = load i8**, i8*** %5, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @strchr(i8* %194, i8 signext 32)
  %196 = icmp ne i64 %195, 0
  br label %197

197:                                              ; preds = %189, %181, %173
  %198 = phi i1 [ true, %181 ], [ true, %173 ], [ %196, %189 ]
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %197
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i8* @escape_string(i8* %207)
  store i8* %208, i8** %18, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* %15, align 4
  %211 = icmp eq i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)
  %214 = load i8*, i8** %18, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %213, i8* %214)
  %216 = load i8*, i8** %18, align 8
  %217 = call i32 @free(i8* %216)
  br label %230

218:                                              ; preds = %197
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* %15, align 4
  %221 = icmp eq i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)
  %224 = load i8**, i8*** %5, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %223, i8* %228)
  br label %230

230:                                              ; preds = %218, %202
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %15, align 4
  br label %169

234:                                              ; preds = %169
  %235 = load i32*, i32** %9, align 8
  %236 = call i32 (i32*, i8*, ...) @fprintf(i32* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %237 = load i32*, i32** %9, align 8
  %238 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %239 = load i32*, i32** %9, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 @fclose(i32* %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %234
  %246 = load i32, i32* @EX_UNAVAILABLE, align 4
  %247 = call i32 (i32, i8*, ...) @err(i32 %246, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %248

248:                                              ; preds = %245, %234
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %248, %68
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @escape_string(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
