; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_main.c_main_init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_main.c_main_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i8, i8, i8, i8, i8, i8, i32 (%struct.TYPE_8__*)*, i32, i32* }
%struct.TYPE_8__ = type { i8*, i8* }

@main_init.inited = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-g2\00", align 1
@glevel = common dso_local global i32 0, align 4
@comment = common dso_local global i8* null, align 8
@stabIR = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@IR = common dso_local global %struct.TYPE_10__* null, align 8
@stabline = common dso_local global i32* null, align 8
@stabend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@xref = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@Aflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@Pflag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@wflag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@YYnull = common dso_local global %struct.TYPE_8__* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"_YYnull\00", align 1
@globals = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i32 0, align 4
@PERM = common dso_local global i32 0, align 4
@voidptype = common dso_local global i32 0, align 4
@EXTERN = common dso_local global i8* null, align 8
@YYcheck = common dso_local global %struct.TYPE_8__* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@rcsid = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@density = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"-errout=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: can't write errors to `%s'\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@errlimit = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"-little_endian=\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"-mulops_calls=\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"-wants_callb=\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"-wants_argb=\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"-left_to_right=\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"-wants_dag=\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [21 x i8] c"%s: can't read `%s'\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [22 x i8] c"%s: can't write `%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load i32, i32* @main_init.inited, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %566

15:                                               ; preds = %2
  store i32 1, i32* @main_init.inited, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = call i32 @type_init(i32 %16, i8** %17)
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %521, %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %524

23:                                               ; preds = %19
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %23
  store i32 2, i32* @glevel, align 4
  br label %520

40:                                               ; preds = %31
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %40
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 44)
  store i8* %54, i8** %8, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = call i32 @atoi(i8* %60)
  store i32 %61, i32* @glevel, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %48
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** @comment, align 8
  %67 = load i32, i32* @glevel, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* @glevel, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stabIR, i32 0, i32 1), align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stabIR, i32 0, i32 1), align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stabIR, i32 0, i32 0), align 8
  %80 = load i32*, i32** @stabline, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 8
  store i32* %80, i32** %82, align 8
  %83 = load i32, i32* @stabend, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %73, %70
  br label %87

87:                                               ; preds = %86, %48
  br label %519

88:                                               ; preds = %40
  %89 = load i8**, i8*** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* @xref, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @xref, align 4
  br label %518

99:                                               ; preds = %88
  %100 = load i8**, i8*** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @Aflag, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @Aflag, align 4
  br label %517

110:                                              ; preds = %99
  %111 = load i8**, i8*** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @Pflag, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @Pflag, align 4
  br label %516

121:                                              ; preds = %110
  %122 = load i8**, i8*** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* @wflag, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @wflag, align 4
  br label %515

132:                                              ; preds = %121
  %133 = load i8**, i8*** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %132
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYnull, align 8
  %142 = icmp ne %struct.TYPE_8__* %141, null
  br i1 %142, label %161, label %143

143:                                              ; preds = %140
  %144 = call i8* @string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32, i32* @GLOBAL, align 4
  %146 = load i32, i32* @PERM, align 4
  %147 = call i8* @install(i8* %144, i32* @globals, i32 %145, i32 %146)
  %148 = bitcast i8* %147 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** @YYnull, align 8
  %149 = load i32, i32* @voidptype, align 4
  %150 = call i8* @func(i32 %149, i32* null, i32 1)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYnull, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** @EXTERN, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYnull, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 6
  %158 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYnull, align 8
  %160 = call i32 %158(%struct.TYPE_8__* %159)
  br label %161

161:                                              ; preds = %143, %140
  br label %514

162:                                              ; preds = %132
  %163 = load i8**, i8*** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @strncmp(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %243

170:                                              ; preds = %162
  %171 = load i8**, i8*** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 44)
  store i8* %176, i8** %9, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %217

179:                                              ; preds = %170
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = call i8* @string(i8* %181)
  %183 = load i32, i32* @GLOBAL, align 4
  %184 = load i32, i32* @PERM, align 4
  %185 = call i8* @install(i8* %182, i32* @globals, i32 %183, i32 %184)
  %186 = bitcast i8* %185 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %186, %struct.TYPE_8__** @YYcheck, align 8
  %187 = load i32, i32* @voidptype, align 4
  %188 = call i8* @func(i32 %187, i32* null, i32 1)
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYcheck, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** @EXTERN, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYcheck, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 6
  %196 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %195, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYcheck, align 8
  %198 = call i32 %196(%struct.TYPE_8__* %197)
  %199 = load i8**, i8*** %4, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  %205 = load i8*, i8** %9, align 8
  %206 = load i8**, i8*** %4, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 2
  %212 = ptrtoint i8* %205 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  %216 = call i8* @stringn(i8* %204, i32 %215)
  store i8* %216, i8** %9, align 8
  br label %225

217:                                              ; preds = %170
  %218 = load i8**, i8*** %4, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = call i8* @string(i8* %223)
  store i8* %224, i8** %9, align 8
  br label %225

225:                                              ; preds = %217, %179
  %226 = load i8*, i8** %9, align 8
  %227 = load i32, i32* @GLOBAL, align 4
  %228 = load i32, i32* @PERM, align 4
  %229 = call i8* @install(i8* %226, i32* @globals, i32 %227, i32 %228)
  %230 = bitcast i8* %229 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %230, %struct.TYPE_8__** @YYnull, align 8
  %231 = load i32, i32* @voidptype, align 4
  %232 = call i8* @func(i32 %231, i32* null, i32 1)
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYnull, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** @EXTERN, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYnull, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 6
  %240 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %239, align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** @YYnull, align 8
  %242 = call i32 %240(%struct.TYPE_8__* %241)
  br label %513

243:                                              ; preds = %162
  %244 = load i8**, i8*** %4, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @strcmp(i8* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %243
  %252 = load i32, i32* @stderr, align 4
  %253 = load i8**, i8*** %4, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 0
  %255 = load i8*, i8** %254, align 8
  %256 = load i8*, i8** @rcsid, align 8
  %257 = call i32 @fprint(i32 %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %255, i8* %256)
  br label %512

258:                                              ; preds = %243
  %259 = load i8**, i8*** %4, align 8
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i64 @strncmp(i8* %263, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %258
  %267 = load i8**, i8*** %4, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 2
  %273 = call i32 @strtod(i8* %272, i32* null)
  store i32 %273, i32* @density, align 4
  br label %511

274:                                              ; preds = %258
  %275 = load i8**, i8*** %4, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = call i64 @strncmp(i8* %279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %319

282:                                              ; preds = %274
  %283 = load i8**, i8*** %4, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 8
  %289 = call i32* @fopen(i8* %288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %289, i32** %10, align 8
  %290 = load i32*, i32** %10, align 8
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %306

292:                                              ; preds = %282
  %293 = load i32, i32* @stderr, align 4
  %294 = load i8**, i8*** %4, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 0
  %296 = load i8*, i8** %295, align 8
  %297 = load i8**, i8*** %4, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 8
  %303 = call i32 @fprint(i32 %293, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %296, i8* %302)
  %304 = load i32, i32* @EXIT_FAILURE, align 4
  %305 = call i32 @exit(i32 %304) #3
  unreachable

306:                                              ; preds = %282
  %307 = load i32*, i32** %10, align 8
  %308 = call i32 @fclose(i32* %307)
  %309 = load i8**, i8*** %4, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %309, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 8
  %315 = load i32, i32* @stderr, align 4
  %316 = call i32* @freopen(i8* %314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %315)
  store i32* %316, i32** %10, align 8
  %317 = load i32*, i32** %10, align 8
  %318 = call i32 @assert(i32* %317)
  br label %510

319:                                              ; preds = %274
  %320 = load i8**, i8*** %4, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %320, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = call i64 @strncmp(i8* %324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2)
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %319
  %328 = load i8**, i8*** %4, align 8
  %329 = load i32, i32* %7, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8*, i8** %328, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 2
  %334 = call i32 @strtol(i8* %333, i32* null, i32 0)
  store i32 %334, i32* %11, align 4
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %327
  %337 = load i32, i32* %11, align 4
  store i32 %337, i32* @errlimit, align 4
  br label %338

338:                                              ; preds = %336, %327
  br label %509

339:                                              ; preds = %319
  %340 = load i8**, i8*** %4, align 8
  %341 = load i32, i32* %7, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %340, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = call i64 @strncmp(i8* %344, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 15)
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %360

347:                                              ; preds = %339
  %348 = load i8**, i8*** %4, align 8
  %349 = load i32, i32* %7, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 15
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = sub nsw i32 %355, 48
  %357 = trunc i32 %356 to i8
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  store i8 %357, i8* %359, align 8
  br label %508

360:                                              ; preds = %339
  %361 = load i8**, i8*** %4, align 8
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8*, i8** %361, i64 %363
  %365 = load i8*, i8** %364, align 8
  %366 = call i64 @strncmp(i8* %365, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 18)
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %360
  %369 = load i8**, i8*** %4, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  %373 = load i8*, i8** %372, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 18
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = sub nsw i32 %376, 48
  %378 = trunc i32 %377 to i8
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 1
  store i8 %378, i8* %380, align 1
  br label %507

381:                                              ; preds = %360
  %382 = load i8**, i8*** %4, align 8
  %383 = load i32, i32* %7, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8*, i8** %382, i64 %384
  %386 = load i8*, i8** %385, align 8
  %387 = call i64 @strncmp(i8* %386, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 13)
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %389, label %402

389:                                              ; preds = %381
  %390 = load i8**, i8*** %4, align 8
  %391 = load i32, i32* %7, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8*, i8** %390, i64 %392
  %394 = load i8*, i8** %393, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 13
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = sub nsw i32 %397, 48
  %399 = trunc i32 %398 to i8
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 2
  store i8 %399, i8* %401, align 2
  br label %506

402:                                              ; preds = %381
  %403 = load i8**, i8*** %4, align 8
  %404 = load i32, i32* %7, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8*, i8** %403, i64 %405
  %407 = load i8*, i8** %406, align 8
  %408 = call i64 @strncmp(i8* %407, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 12)
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %402
  %411 = load i8**, i8*** %4, align 8
  %412 = load i32, i32* %7, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8*, i8** %411, i64 %413
  %415 = load i8*, i8** %414, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 12
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = sub nsw i32 %418, 48
  %420 = trunc i32 %419 to i8
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 3
  store i8 %420, i8* %422, align 1
  br label %505

423:                                              ; preds = %402
  %424 = load i8**, i8*** %4, align 8
  %425 = load i32, i32* %7, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8*, i8** %424, i64 %426
  %428 = load i8*, i8** %427, align 8
  %429 = call i64 @strncmp(i8* %428, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 15)
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %444

431:                                              ; preds = %423
  %432 = load i8**, i8*** %4, align 8
  %433 = load i32, i32* %7, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8*, i8** %432, i64 %434
  %436 = load i8*, i8** %435, align 8
  %437 = getelementptr inbounds i8, i8* %436, i64 15
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = sub nsw i32 %439, 48
  %441 = trunc i32 %440 to i8
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 4
  store i8 %441, i8* %443, align 4
  br label %504

444:                                              ; preds = %423
  %445 = load i8**, i8*** %4, align 8
  %446 = load i32, i32* %7, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8*, i8** %445, i64 %447
  %449 = load i8*, i8** %448, align 8
  %450 = call i64 @strncmp(i8* %449, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 11)
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %452, label %465

452:                                              ; preds = %444
  %453 = load i8**, i8*** %4, align 8
  %454 = load i32, i32* %7, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8*, i8** %453, i64 %455
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 11
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = sub nsw i32 %460, 48
  %462 = trunc i32 %461 to i8
  %463 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IR, align 8
  %464 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %463, i32 0, i32 5
  store i8 %462, i8* %464, align 1
  br label %503

465:                                              ; preds = %444
  %466 = load i8**, i8*** %4, align 8
  %467 = load i32, i32* %7, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8*, i8** %466, i64 %468
  %470 = load i8*, i8** %469, align 8
  %471 = load i8, i8* %470, align 1
  %472 = sext i8 %471 to i32
  %473 = icmp ne i32 %472, 45
  br i1 %473, label %482, label %474

474:                                              ; preds = %465
  %475 = load i8**, i8*** %4, align 8
  %476 = load i32, i32* %7, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8*, i8** %475, i64 %477
  %479 = load i8*, i8** %478, align 8
  %480 = call i64 @strcmp(i8* %479, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %502

482:                                              ; preds = %474, %465
  %483 = load i8*, i8** %5, align 8
  %484 = icmp eq i8* %483, null
  br i1 %484, label %485, label %491

485:                                              ; preds = %482
  %486 = load i8**, i8*** %4, align 8
  %487 = load i32, i32* %7, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8*, i8** %486, i64 %488
  %490 = load i8*, i8** %489, align 8
  store i8* %490, i8** %5, align 8
  br label %501

491:                                              ; preds = %482
  %492 = load i8*, i8** %6, align 8
  %493 = icmp eq i8* %492, null
  br i1 %493, label %494, label %500

494:                                              ; preds = %491
  %495 = load i8**, i8*** %4, align 8
  %496 = load i32, i32* %7, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i8*, i8** %495, i64 %497
  %499 = load i8*, i8** %498, align 8
  store i8* %499, i8** %6, align 8
  br label %500

500:                                              ; preds = %494, %491
  br label %501

501:                                              ; preds = %500, %485
  br label %502

502:                                              ; preds = %501, %474
  br label %503

503:                                              ; preds = %502, %452
  br label %504

504:                                              ; preds = %503, %431
  br label %505

505:                                              ; preds = %504, %410
  br label %506

506:                                              ; preds = %505, %389
  br label %507

507:                                              ; preds = %506, %368
  br label %508

508:                                              ; preds = %507, %347
  br label %509

509:                                              ; preds = %508, %338
  br label %510

510:                                              ; preds = %509, %306
  br label %511

511:                                              ; preds = %510, %266
  br label %512

512:                                              ; preds = %511, %251
  br label %513

513:                                              ; preds = %512, %225
  br label %514

514:                                              ; preds = %513, %161
  br label %515

515:                                              ; preds = %514, %129
  br label %516

516:                                              ; preds = %515, %118
  br label %517

517:                                              ; preds = %516, %107
  br label %518

518:                                              ; preds = %517, %96
  br label %519

519:                                              ; preds = %518, %87
  br label %520

520:                                              ; preds = %519, %39
  br label %521

521:                                              ; preds = %520
  %522 = load i32, i32* %7, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %7, align 4
  br label %19

524:                                              ; preds = %19
  %525 = load i8*, i8** %5, align 8
  %526 = icmp ne i8* %525, null
  br i1 %526, label %527, label %545

527:                                              ; preds = %524
  %528 = load i8*, i8** %5, align 8
  %529 = call i64 @strcmp(i8* %528, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %545

531:                                              ; preds = %527
  %532 = load i8*, i8** %5, align 8
  %533 = load i32, i32* @stdin, align 4
  %534 = call i32* @freopen(i8* %532, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 %533)
  %535 = icmp eq i32* %534, null
  br i1 %535, label %536, label %545

536:                                              ; preds = %531
  %537 = load i32, i32* @stderr, align 4
  %538 = load i8**, i8*** %4, align 8
  %539 = getelementptr inbounds i8*, i8** %538, i64 0
  %540 = load i8*, i8** %539, align 8
  %541 = load i8*, i8** %5, align 8
  %542 = call i32 @fprint(i32 %537, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %540, i8* %541)
  %543 = load i32, i32* @EXIT_FAILURE, align 4
  %544 = call i32 @exit(i32 %543) #3
  unreachable

545:                                              ; preds = %531, %527, %524
  %546 = load i8*, i8** %6, align 8
  %547 = icmp ne i8* %546, null
  br i1 %547, label %548, label %566

548:                                              ; preds = %545
  %549 = load i8*, i8** %6, align 8
  %550 = call i64 @strcmp(i8* %549, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %566

552:                                              ; preds = %548
  %553 = load i8*, i8** %6, align 8
  %554 = load i32, i32* @stdout, align 4
  %555 = call i32* @freopen(i8* %553, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %554)
  %556 = icmp eq i32* %555, null
  br i1 %556, label %557, label %566

557:                                              ; preds = %552
  %558 = load i32, i32* @stderr, align 4
  %559 = load i8**, i8*** %4, align 8
  %560 = getelementptr inbounds i8*, i8** %559, i64 0
  %561 = load i8*, i8** %560, align 8
  %562 = load i8*, i8** %6, align 8
  %563 = call i32 @fprint(i32 %558, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* %561, i8* %562)
  %564 = load i32, i32* @EXIT_FAILURE, align 4
  %565 = call i32 @exit(i32 %564) #3
  unreachable

566:                                              ; preds = %14, %552, %548, %545
  ret void
}

declare dso_local i32 @type_init(i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @install(i8*, i32*, i32, i32) #1

declare dso_local i8* @string(i8*) #1

declare dso_local i8* @func(i32, i32*, i32) #1

declare dso_local i8* @stringn(i8*, i32) #1

declare dso_local i32 @fprint(i32, i8*, i8*, i8*) #1

declare dso_local i32 @strtod(i8*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
