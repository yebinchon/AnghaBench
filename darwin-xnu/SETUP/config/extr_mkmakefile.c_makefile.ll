; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_makefile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_makefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt = type { i8*, i8*, %struct.opt* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s/Makefile.template\00", align 1
@config_directory = common dso_local global i8* null, align 8
@VPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Makefile\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Makefile.old\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SOURCE_DIR=%s\0A\00", align 1
@source_directory = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"export CONFIG_DEFINES =\00", align 1
@profiling = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c" -DGPROF\00", align 1
@opt = common dso_local global %struct.opt* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c" -D%s=\22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" -D%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mkopt = common dso_local global %struct.opt* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"COPTS=\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"GPROF.EX=$(SOURCE_DIR)/machdep/%s/gmon.ex\0A\00", align 1
@machinename = common dso_local global i8* null, align 8
@COPTS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"config: out of memory\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%s -pg\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%OBJS\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"OBJS=\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%CFILES\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"CFILES=\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"COBJS=\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%CXXFILES\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"CXXFILES=\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"CXXOBJS=\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"%SFILES\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"SFILES=\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"SOBJS=\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%MACHDEP\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%RULES\0A\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.31 = private unnamed_addr constant [45 x i8] c"Unknown %% construct in generic makefile: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makefile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.opt*, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @BUFSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = call i32 (...) @read_files()
  %17 = load i8*, i8** @config_directory, align 8
  %18 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @VPATH, align 4
  %20 = call i32* @fopenp(i32 %19, i8* %15, i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %0
  %24 = call i32 @perror(i8* %15)
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %0
  %27 = call i8* @path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %3, align 8
  %29 = call i8* @path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i8* @path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @rename(i8* %29, i8* %30)
  %32 = call i8* @path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @unlink(i8* %32)
  %34 = call i8* @path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = call i8* @path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @perror(i8* %39)
  %41 = call i32 @exit(i32 1) #4
  unreachable

42:                                               ; preds = %26
  %43 = load i32*, i32** %2, align 8
  %44 = load i8*, i8** @source_directory, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i64, i64* @profiling, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.opt*, %struct.opt** @opt, align 8
  store %struct.opt* %54, %struct.opt** %7, align 8
  br label %55

55:                                               ; preds = %79, %53
  %56 = load %struct.opt*, %struct.opt** %7, align 8
  %57 = icmp ne %struct.opt* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load %struct.opt*, %struct.opt** %7, align 8
  %60 = getelementptr inbounds %struct.opt, %struct.opt* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32*, i32** %2, align 8
  %65 = load %struct.opt*, %struct.opt** %7, align 8
  %66 = getelementptr inbounds %struct.opt, %struct.opt* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.opt*, %struct.opt** %7, align 8
  %69 = getelementptr inbounds %struct.opt, %struct.opt* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %67, i8* %70)
  br label %78

72:                                               ; preds = %58
  %73 = load i32*, i32** %2, align 8
  %74 = load %struct.opt*, %struct.opt** %7, align 8
  %75 = getelementptr inbounds %struct.opt, %struct.opt* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %72, %63
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.opt*, %struct.opt** %7, align 8
  %81 = getelementptr inbounds %struct.opt, %struct.opt* %80, i32 0, i32 2
  %82 = load %struct.opt*, %struct.opt** %81, align 8
  store %struct.opt* %82, %struct.opt** %7, align 8
  br label %55

83:                                               ; preds = %55
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %86 = load %struct.opt*, %struct.opt** @mkopt, align 8
  store %struct.opt* %86, %struct.opt** %7, align 8
  br label %87

87:                                               ; preds = %111, %83
  %88 = load %struct.opt*, %struct.opt** %7, align 8
  %89 = icmp ne %struct.opt* %88, null
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = load %struct.opt*, %struct.opt** %7, align 8
  %92 = getelementptr inbounds %struct.opt, %struct.opt* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %2, align 8
  %97 = load %struct.opt*, %struct.opt** %7, align 8
  %98 = getelementptr inbounds %struct.opt, %struct.opt* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.opt*, %struct.opt** %7, align 8
  %101 = getelementptr inbounds %struct.opt, %struct.opt* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %99, i8* %102)
  br label %110

104:                                              ; preds = %90
  %105 = load i32*, i32** %2, align 8
  %106 = load %struct.opt*, %struct.opt** %7, align 8
  %107 = getelementptr inbounds %struct.opt, %struct.opt* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %104, %95
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.opt*, %struct.opt** %7, align 8
  %113 = getelementptr inbounds %struct.opt, %struct.opt* %112, i32 0, i32 2
  %114 = load %struct.opt*, %struct.opt** %113, align 8
  store %struct.opt* %114, %struct.opt** %7, align 8
  br label %87

115:                                              ; preds = %87
  br label %116

116:                                              ; preds = %235, %182, %176, %115
  %117 = load i32, i32* @BUFSIZ, align 4
  %118 = load i32*, i32** %1, align 8
  %119 = call i64 @fgets(i8* %15, i32 %117, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %236

121:                                              ; preds = %116
  %122 = load i8, i8* %15, align 16
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 37
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %185

126:                                              ; preds = %121
  %127 = load i64, i64* @profiling, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %182

129:                                              ; preds = %126
  %130 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %182

132:                                              ; preds = %129
  %133 = load i32*, i32** %2, align 8
  %134 = load i8*, i8** @machinename, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %134)
  %136 = call i8* @index(i8* %15, i8 signext 10)
  store i8* %136, i8** %8, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i8*, i8** %8, align 8
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %139, %132
  %142 = getelementptr inbounds i8, i8* %15, i64 6
  store i8* %142, i8** %8, align 8
  br label %143

143:                                              ; preds = %162, %141
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = load i8*, i8** %8, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 32
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** %8, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 9
  br label %158

158:                                              ; preds = %153, %148
  %159 = phi i1 [ true, %148 ], [ %157, %153 ]
  br label %160

160:                                              ; preds = %158, %143
  %161 = phi i1 [ false, %143 ], [ %159, %158 ]
  br i1 %161, label %162, label %165

162:                                              ; preds = %160
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %8, align 8
  br label %143

165:                                              ; preds = %160
  %166 = load i8*, i8** %8, align 8
  %167 = call i64 @strlen(i8* %166)
  %168 = add nsw i64 %167, 1
  %169 = trunc i64 %168 to i32
  %170 = call i64 @malloc(i32 %169)
  store i64 %170, i64* @COPTS, align 8
  %171 = load i64, i64* @COPTS, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %175 = call i32 @exit(i32 1) #4
  unreachable

176:                                              ; preds = %165
  %177 = load i64, i64* @COPTS, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @strcpy(i64 %177, i8* %178)
  %180 = load i32*, i32** %2, align 8
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %15)
  br label %116

182:                                              ; preds = %129, %126
  %183 = load i32*, i32** %2, align 8
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %15)
  br label %116

185:                                              ; preds = %125
  %186 = call i64 @eq(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32*, i32** %2, align 8
  %190 = call i32 @do_objs(i32* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8 signext -1)
  br label %235

191:                                              ; preds = %185
  %192 = call i64 @eq(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32*, i32** %2, align 8
  %196 = call i32 @do_files(i32* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8 signext 99)
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @do_objs(i32* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8 signext 99)
  br label %234

199:                                              ; preds = %191
  %200 = call i64 @eq(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load i32*, i32** %2, align 8
  %204 = call i32 @do_files(i32* %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8 signext 112)
  %205 = load i32*, i32** %2, align 8
  %206 = call i32 @do_objs(i32* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8 signext 112)
  br label %233

207:                                              ; preds = %199
  %208 = call i64 @eq(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load i32*, i32** %2, align 8
  %212 = call i32 @do_files(i32* %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8 signext 115)
  %213 = load i32*, i32** %2, align 8
  %214 = call i32 @do_objs(i32* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8 signext 115)
  br label %232

215:                                              ; preds = %207
  %216 = call i64 @eq(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %2, align 8
  %220 = call i32 @do_machdep(i32* %219)
  br label %231

221:                                              ; preds = %215
  %222 = call i64 @eq(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32*, i32** %2, align 8
  %226 = call i32 @do_rules(i32* %225)
  br label %230

227:                                              ; preds = %221
  %228 = load i32*, i32** @stderr, align 8
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %228, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0), i8* %15)
  br label %230

230:                                              ; preds = %227, %224
  br label %231

231:                                              ; preds = %230, %218
  br label %232

232:                                              ; preds = %231, %210
  br label %233

233:                                              ; preds = %232, %202
  br label %234

234:                                              ; preds = %233, %194
  br label %235

235:                                              ; preds = %234, %188
  br label %116

236:                                              ; preds = %116
  %237 = load i32*, i32** %3, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load i32*, i32** %3, align 8
  %241 = load i32*, i32** %2, align 8
  %242 = call i32 @copy_dependencies(i32* %240, i32* %241)
  %243 = load i32*, i32** %3, align 8
  %244 = call i32 @fclose(i32* %243)
  br label %245

245:                                              ; preds = %239, %236
  %246 = load i32*, i32** %1, align 8
  %247 = call i32 @fclose(i32* %246)
  %248 = load i32*, i32** %2, align 8
  %249 = call i32 @fclose(i32* %248)
  %250 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %250)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_files(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32* @fopenp(i32, i8*, i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @path(i8*) #2

declare dso_local i32 @rename(i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @index(i8*, i8 signext) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @strcpy(i64, i8*) #2

declare dso_local i64 @eq(i8*, i8*) #2

declare dso_local i32 @do_objs(i32*, i8*, i8 signext) #2

declare dso_local i32 @do_files(i32*, i8*, i8 signext) #2

declare dso_local i32 @do_machdep(i32*) #2

declare dso_local i32 @do_rules(i32*) #2

declare dso_local i32 @copy_dependencies(i32*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
