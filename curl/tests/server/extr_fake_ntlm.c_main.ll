; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_fake_ntlm.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_fake_ntlm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"--use-cached-creds\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"--helper-protocol\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--username\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"--domain\00", align 1
@.str.5 = private unnamed_addr constant [118 x i8] c"Usage: fake_ntlm [option]\0A --use-cached-creds\0A --helper-protocol [protocol]\0A --username [username]\0A --domain [domain]\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"CURL_NTLM_AUTH_TESTNUM\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Test number not valid in CURL_NTLM_AUTH_TESTNUM\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Test number not specified in CURL_NTLM_AUTH_TESTNUM\00", align 1
@LOGFILE = common dso_local global i32 0, align 4
@serverlogfile = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [65 x i8] c"fake_ntlm (user: %s) (proto: %s) (domain: %s) (cached creds: %s)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"CURL_NTLM_AUTH_SRCDIR\00", align 1
@path = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"fopen() failed with error: %d %s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Error opening file: %s\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Couldn't open test file %ld\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ntlm_auth_type1\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"getpart() type 1 input failed with error: %d\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"ntlm_auth_type3\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"getpart() type 3 input failed with error: %d\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"getpart() type 1 output failed with error: %d\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [46 x i8] c"getpart() type 3 output failed with error: %d\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Unknown request\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"invalid input: '%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"OOM formatting invalid input: '%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i32 1, i32* %18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %27, align 16
  br label %28

28:                                               ; preds = %116, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %117

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %18, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %18, align 4
  br label %116

44:                                               ; preds = %32
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %18, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %20, align 8
  br label %65

65:                                               ; preds = %58, %52
  br label %115

66:                                               ; preds = %44
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %18, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %19, align 8
  br label %87

87:                                               ; preds = %80, %74
  br label %114

88:                                               ; preds = %66
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i8**, i8*** %5, align 8
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %18, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %21, align 8
  br label %109

109:                                              ; preds = %102, %96
  br label %113

110:                                              ; preds = %88
  %111 = call i32 @puts(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.5, i64 0, i64 0))
  %112 = call i32 @exit(i32 1) #3
  unreachable

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114, %65
  br label %116

116:                                              ; preds = %115, %40
  br label %28

117:                                              ; preds = %28
  %118 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i8* %118, i8** %17, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load i8*, i8** %17, align 8
  %123 = call i64 @strtol(i8* %122, i8** %24, i32 10)
  store i64 %123, i64* %25, align 8
  %124 = load i8*, i8** %24, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = call i32 @strlen(i8* %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = icmp ne i8* %124, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %121
  %132 = load i64, i64* %25, align 8
  %133 = icmp slt i64 %132, 1
  br i1 %133, label %134, label %138

134:                                              ; preds = %131, %121
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 @fprintf(i32 %135, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %131
  %139 = load i64, i64* %25, align 8
  store i64 %139, i64* %16, align 8
  br label %144

140:                                              ; preds = %117
  %141 = load i32, i32* @stderr, align 4
  %142 = call i32 @fprintf(i32 %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %138
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %146 = load i32, i32* @LOGFILE, align 4
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @msnprintf(i8* %145, i32 256, i32 %146, i64 %147)
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %149, i8** @serverlogfile, align 8
  %150 = load i8*, i8** %19, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = load i8*, i8** %21, align 8
  %153 = load i32, i32* %22, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %157 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i8* %150, i8* %151, i8* %152, i8* %156)
  %158 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  store i8* %158, i8** %17, align 8
  %159 = load i8*, i8** %17, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %144
  %162 = load i8*, i8** %17, align 8
  store i8* %162, i8** @path, align 8
  br label %163

163:                                              ; preds = %161, %144
  %164 = load i64, i64* %16, align 8
  %165 = call i8* @test2file(i64 %164)
  store i8* %165, i8** %9, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32* @fopen(i8* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32* %167, i32** %8, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %181, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @errno, align 4
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @strerror(i32 %173)
  %175 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %172, i32 %174)
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %176)
  %178 = load i64, i64* %16, align 8
  %179 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i64 %178)
  %180 = call i32 @exit(i32 1) #3
  unreachable

181:                                              ; preds = %163
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @getpart(i8** %11, i64* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @fclose(i32* %184)
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %181
  %189 = load i64, i64* %15, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188, %181
  %192 = load i32, i32* %10, align 4
  %193 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i32 %192)
  %194 = call i32 @exit(i32 1) #3
  unreachable

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195
  %197 = load i8*, i8** %9, align 8
  %198 = call i32* @fopen(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32* %198, i32** %8, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %212, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* @errno, align 4
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @strerror(i32 %204)
  %206 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %203, i32 %205)
  %207 = load i8*, i8** %9, align 8
  %208 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %207)
  %209 = load i64, i64* %16, align 8
  %210 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i64 %209)
  %211 = call i32 @exit(i32 1) #3
  unreachable

212:                                              ; preds = %196
  store i64 0, i64* %15, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = call i32 @getpart(i8** %12, i64* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32* %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32*, i32** %8, align 8
  %216 = call i32 @fclose(i32* %215)
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = load i64, i64* %15, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219, %212
  %223 = load i32, i32* %10, align 4
  %224 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %223)
  %225 = call i32 @exit(i32 1) #3
  unreachable

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %334, %227
  %229 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %230 = load i32, i32* @stdin, align 4
  %231 = call i64 @fgets(i8* %229, i32 1024, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %335

233:                                              ; preds = %228
  %234 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %235 = load i8*, i8** %11, align 8
  %236 = call i64 @strcmp(i8* %234, i8* %235)
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %274

238:                                              ; preds = %233
  %239 = load i8*, i8** %9, align 8
  %240 = call i32* @fopen(i8* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32* %240, i32** %8, align 8
  %241 = load i32*, i32** %8, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %254, label %243

243:                                              ; preds = %238
  %244 = load i32, i32* @errno, align 4
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @strerror(i32 %246)
  %248 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %245, i32 %247)
  %249 = load i8*, i8** %9, align 8
  %250 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %249)
  %251 = load i64, i64* %16, align 8
  %252 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i64 %251)
  %253 = call i32 @exit(i32 1) #3
  unreachable

254:                                              ; preds = %238
  store i64 0, i64* %15, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 @getpart(i8** %13, i64* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32* %255)
  store i32 %256, i32* %10, align 4
  %257 = load i32*, i32** %8, align 8
  %258 = call i32 @fclose(i32* %257)
  %259 = load i32, i32* %10, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %254
  %262 = load i64, i64* %15, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261, %254
  %265 = load i32, i32* %10, align 4
  %266 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i32 %265)
  %267 = call i32 @exit(i32 1) #3
  unreachable

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268
  %270 = load i8*, i8** %13, align 8
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %270)
  %272 = load i32, i32* @stdout, align 4
  %273 = call i32 @fflush(i32 %272)
  br label %334

274:                                              ; preds = %233
  %275 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %276 = load i8*, i8** %12, align 8
  %277 = load i8*, i8** %12, align 8
  %278 = call i32 @strlen(i8* %277)
  %279 = call i64 @strncmp(i8* %275, i8* %276, i32 %278)
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %317

281:                                              ; preds = %274
  %282 = load i8*, i8** %9, align 8
  %283 = call i32* @fopen(i8* %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32* %283, i32** %8, align 8
  %284 = load i32*, i32** %8, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %297, label %286

286:                                              ; preds = %281
  %287 = load i32, i32* @errno, align 4
  store i32 %287, i32* %10, align 4
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %10, align 4
  %290 = call i32 @strerror(i32 %289)
  %291 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %288, i32 %290)
  %292 = load i8*, i8** %9, align 8
  %293 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %292)
  %294 = load i64, i64* %16, align 8
  %295 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i64 %294)
  %296 = call i32 @exit(i32 1) #3
  unreachable

297:                                              ; preds = %281
  store i64 0, i64* %15, align 8
  %298 = load i32*, i32** %8, align 8
  %299 = call i32 @getpart(i8** %14, i64* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32* %298)
  store i32 %299, i32* %10, align 4
  %300 = load i32*, i32** %8, align 8
  %301 = call i32 @fclose(i32* %300)
  %302 = load i32, i32* %10, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %297
  %305 = load i64, i64* %15, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %304, %297
  %308 = load i32, i32* %10, align 4
  %309 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 %308)
  %310 = call i32 @exit(i32 1) #3
  unreachable

311:                                              ; preds = %304
  br label %312

312:                                              ; preds = %311
  %313 = load i8*, i8** %14, align 8
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %313)
  %315 = load i32, i32* @stdout, align 4
  %316 = call i32 @fflush(i32 %315)
  br label %333

317:                                              ; preds = %274
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  %319 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %320 = call i8* @printable(i8* %319, i32 0)
  store i8* %320, i8** %23, align 8
  %321 = load i8*, i8** %23, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %328

323:                                              ; preds = %317
  %324 = load i8*, i8** %23, align 8
  %325 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i8* %324)
  %326 = load i8*, i8** %23, align 8
  %327 = call i32 @free(i8* %326)
  br label %331

328:                                              ; preds = %317
  %329 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %330 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* %329)
  br label %331

331:                                              ; preds = %328, %323
  %332 = call i32 @exit(i32 1) #3
  unreachable

333:                                              ; preds = %312
  br label %334

334:                                              ; preds = %333, %269
  br label %228

335:                                              ; preds = %228
  %336 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  ret i32 1
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @msnprintf(i8*, i32, i32, i64) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i8* @test2file(i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getpart(i8**, i64*, i8*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @printable(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
