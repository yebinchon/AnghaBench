; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SmbAuthenticate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SmbAuthenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Sam.c - SmbAuthenticate - wrong password parameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Sam.c - SmbAuthenticate - wrong MsCHAPv2 parameter\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%is\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Sam.c - timeout for ntlm_auth %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ntlm_auth\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"--helper-protocol=ntlm-server-1\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"--require-membership-of=%s\\%s\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Sam.c - SmbCheckLogon - error fork child process (ntlm_auth)\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Sam.c - cant open out pipe (ntlm_auth)\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Sam.c - cant open in pipe (ntlm_auth)\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Username:: \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Username: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"NT-Domain:: \00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"NT-Domain: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Password authentication\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Password:: \00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Password: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"MsChapV2 authentication\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"NT-Response:: \00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"NT-Response:: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"LANMAN-Challenge:: \00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"LANMAN-Challenge:: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Request-User-Session-Key: Yes\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c":: \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Authenticated\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Authenticated!\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"Authentication failed!\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"User-Session-Key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SmbAuthenticate(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca [255 x i8], align 16
  %24 = alloca [32 x i8], align 16
  %25 = alloca [6 x i8*], align 16
  %26 = alloca [352 x i8], align 16
  %27 = alloca [300 x i8], align 16
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %12, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %13, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39, %36, %8
  %46 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %376

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32*, i32** %15, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %16, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %17, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56, %53
  %63 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %376

64:                                               ; preds = %59, %47
  %65 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %66 = call i32 @Zero(i8* %65, i32 255)
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @EnSafeStr(i8* %67, i8 signext 0)
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = icmp sgt i32 %70, 255
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 255
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %72, %64
  %76 = load i32, i32* %14, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %79, 900
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %75
  store i32 999, i32* %14, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %84 = load i32, i32* %14, align 4
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %87 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %88, align 16
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %90 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 1
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %91, align 16
  %92 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 3
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %92, align 8
  %93 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 4
  store i8* null, i8** %93, align 16
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %107

97:                                               ; preds = %82
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @EnSafeStr(i8* %98, i8 signext 0)
  %100 = getelementptr inbounds [352 x i8], [352 x i8]* %26, i64 0, i64 0
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %100, i32 352, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %101, i8* %102)
  %104 = getelementptr inbounds [352 x i8], [352 x i8]* %26, i64 0, i64 0
  %105 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 4
  store i8* %104, i8** %105, align 16
  %106 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 5
  store i8* null, i8** %106, align 8
  br label %107

107:                                              ; preds = %97, %82
  %108 = getelementptr inbounds [6 x i8*], [6 x i8*]* %25, i64 0, i64 0
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %110 = call i64 @OpenChildProcess(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %108, i32* %109)
  store i64 %110, i64* %22, align 8
  %111 = load i64, i64* %22, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %376

115:                                              ; preds = %107
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32* @fdopen(i32 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %118, i32** %20, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i64, i64* %22, align 8
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %124 = call i32 @CloseChildProcess(i64 %122, i32* %123)
  %125 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %376

126:                                              ; preds = %115
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32* @fdopen(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %129, i32** %21, align 8
  %130 = load i32*, i32** %21, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load i32*, i32** %20, align 8
  %134 = call i32 @fclose(i32* %133)
  %135 = load i64, i64* %22, align 8
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %137 = call i32 @CloseChildProcess(i64 %135, i32* %136)
  %138 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %376

139:                                              ; preds = %126
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = call i32 @base64_enc_len(i32 %141)
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %143, 254
  br i1 %144, label %145, label %367

145:                                              ; preds = %139
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @strlen(i8* %146)
  %148 = call i32 @base64_enc_len(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = icmp ult i64 %149, 254
  br i1 %150, label %151, label %367

151:                                              ; preds = %145
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @strlen(i8* %152)
  %154 = call i32 @base64_enc_len(i32 %153)
  %155 = sext i32 %154 to i64
  %156 = icmp ult i64 %155, 254
  br i1 %156, label %157, label %367

157:                                              ; preds = %151
  %158 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %159 = load i8*, i8** %10, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @strlen(i8* %160)
  %162 = call i32 @B64_Encode(i8* %158, i8* %159, i32 %161)
  store i32 %162, i32* %28, align 4
  %163 = load i32, i32* %28, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 %164
  store i8 0, i8* %165, align 1
  %166 = load i32*, i32** %20, align 8
  %167 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* %166)
  %168 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %169 = load i32*, i32** %20, align 8
  %170 = call i32 @fputs(i8* %168, i32* %169)
  %171 = load i32*, i32** %20, align 8
  %172 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %171)
  %173 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %174 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %173)
  %175 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %175, align 16
  %176 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %177 = load i8*, i8** %12, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = call i32 @B64_Encode(i8* %176, i8* %177, i32 %179)
  store i32 %180, i32* %28, align 4
  %181 = load i32, i32* %28, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load i32*, i32** %20, align 8
  %185 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* %184)
  %186 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %187 = load i32*, i32** %20, align 8
  %188 = call i32 @fputs(i8* %186, i32* %187)
  %189 = load i32*, i32** %20, align 8
  %190 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %189)
  %191 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %192 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %191)
  %193 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %193, align 16
  %194 = load i8*, i8** %11, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %157
  %200 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %201 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %202 = load i8*, i8** %11, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = call i32 @strlen(i8* %203)
  %205 = call i32 @B64_Encode(i8* %201, i8* %202, i32 %204)
  store i32 %205, i32* %28, align 4
  %206 = load i32, i32* %28, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 %207
  store i8 0, i8* %208, align 1
  %209 = load i32*, i32** %20, align 8
  %210 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32* %209)
  %211 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %212 = load i32*, i32** %20, align 8
  %213 = call i32 @fputs(i8* %211, i32* %212)
  %214 = load i32*, i32** %20, align 8
  %215 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %214)
  %216 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %217 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %216)
  %218 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %218, align 16
  br label %263

219:                                              ; preds = %157
  %220 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %221 = load i32*, i32** %16, align 8
  %222 = call i8* @CopyBinToStr(i32* %221, i32 24)
  store i8* %222, i8** %29, align 8
  %223 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %224 = load i8*, i8** %29, align 8
  %225 = call i32 @B64_Encode(i8* %223, i8* %224, i32 48)
  store i32 %225, i32* %28, align 4
  %226 = load i32, i32* %28, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 %227
  store i8 0, i8* %228, align 1
  %229 = load i32*, i32** %20, align 8
  %230 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32* %229)
  %231 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %232 = load i32*, i32** %20, align 8
  %233 = call i32 @fputs(i8* %231, i32* %232)
  %234 = load i32*, i32** %20, align 8
  %235 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %234)
  %236 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %237 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %236)
  %238 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %238, align 16
  %239 = load i8*, i8** %29, align 8
  %240 = call i32 @Free(i8* %239)
  %241 = load i32*, i32** %15, align 8
  %242 = call i8* @CopyBinToStr(i32* %241, i32 8)
  store i8* %242, i8** %30, align 8
  %243 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %244 = load i8*, i8** %30, align 8
  %245 = call i32 @B64_Encode(i8* %243, i8* %244, i32 16)
  store i32 %245, i32* %28, align 4
  %246 = load i32, i32* %28, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 %247
  store i8 0, i8* %248, align 1
  %249 = load i32*, i32** %20, align 8
  %250 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32* %249)
  %251 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %252 = load i32*, i32** %20, align 8
  %253 = call i32 @fputs(i8* %251, i32* %252)
  %254 = load i32*, i32** %20, align 8
  %255 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %254)
  %256 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  %257 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* %256)
  %258 = getelementptr inbounds [255 x i8], [255 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %258, align 16
  %259 = load i8*, i8** %30, align 8
  %260 = call i32 @Free(i8* %259)
  %261 = load i32*, i32** %20, align 8
  %262 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32* %261)
  br label %263

263:                                              ; preds = %219, %199
  %264 = load i32*, i32** %20, align 8
  %265 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32* %264)
  %266 = load i32*, i32** %20, align 8
  %267 = call i32 @fflush(i32* %266)
  %268 = getelementptr inbounds [300 x i8], [300 x i8]* %27, i64 0, i64 0
  %269 = call i32 @Zero(i8* %268, i32 300)
  br label %270

270:                                              ; preds = %365, %290, %263
  %271 = getelementptr inbounds [300 x i8], [300 x i8]* %27, i64 0, i64 0
  %272 = load i32*, i32** %21, align 8
  %273 = call i64 @fgets(i8* %271, i32 299, i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %366

275:                                              ; preds = %270
  %276 = getelementptr inbounds [300 x i8], [300 x i8]* %27, i64 0, i64 0
  %277 = call i64 @strncmp(i8* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 299)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %366

280:                                              ; preds = %275
  %281 = getelementptr inbounds [300 x i8], [300 x i8]* %27, i64 0, i64 0
  %282 = call i8* @strstr(i8* %281, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  store i8* %282, i8** %31, align 8
  %283 = load i8*, i8** %31, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %308, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds [300 x i8], [300 x i8]* %27, i64 0, i64 0
  %287 = call i8* @strstr(i8* %286, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  store i8* %287, i8** %31, align 8
  %288 = load i8*, i8** %31, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  br label %270

291:                                              ; preds = %285
  %292 = load i8*, i8** %31, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  store i8 0, i8* %293, align 1
  %294 = load i8*, i8** %31, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %31, align 8
  %296 = load i8*, i8** %31, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 0
  store i8 0, i8* %297, align 1
  %298 = load i8*, i8** %31, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %31, align 8
  %300 = load i8*, i8** %31, align 8
  %301 = call i8* @strstr(i8* %300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %301, i8** %32, align 8
  %302 = load i8*, i8** %32, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %291
  %305 = load i8*, i8** %32, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 0
  store i8 0, i8* %306, align 1
  br label %307

307:                                              ; preds = %304, %291
  br label %328

308:                                              ; preds = %280
  %309 = load i8*, i8** %31, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 0
  store i8 0, i8* %310, align 1
  %311 = load i8*, i8** %31, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %31, align 8
  %313 = load i8*, i8** %31, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 0
  store i8 0, i8* %314, align 1
  %315 = load i8*, i8** %31, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %31, align 8
  %317 = load i8*, i8** %31, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 0
  store i8 0, i8* %318, align 1
  %319 = load i8*, i8** %31, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %31, align 8
  %321 = load i8*, i8** %31, align 8
  %322 = load i8*, i8** %31, align 8
  %323 = call i32 @Decode64(i8* %321, i8* %322)
  store i32 %323, i32* %28, align 4
  %324 = load i8*, i8** %31, align 8
  %325 = load i32, i32* %28, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  store i8 0, i8* %327, align 1
  br label %328

328:                                              ; preds = %308, %307
  %329 = getelementptr inbounds [300 x i8], [300 x i8]* %27, i64 0, i64 0
  %330 = call i64 @strncmp(i8* %329, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 299)
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %346

332:                                              ; preds = %328
  %333 = load i8*, i8** %31, align 8
  %334 = call i64 @strcmp(i8* %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %332
  %337 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %345

338:                                              ; preds = %332
  %339 = load i8*, i8** %31, align 8
  %340 = call i64 @strcmp(i8* %339, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %344

344:                                              ; preds = %342, %338
  br label %345

345:                                              ; preds = %344, %336
  br label %365

346:                                              ; preds = %328
  %347 = getelementptr inbounds [300 x i8], [300 x i8]* %27, i64 0, i64 0
  %348 = call i64 @strncmp(i8* %347, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i32 299)
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %364

350:                                              ; preds = %346
  %351 = load i32*, i32** %17, align 8
  %352 = icmp ne i32* %351, null
  br i1 %352, label %353, label %363

353:                                              ; preds = %350
  %354 = load i8*, i8** %31, align 8
  %355 = call %struct.TYPE_4__* @StrToBin(i8* %354)
  store %struct.TYPE_4__* %355, %struct.TYPE_4__** %33, align 8
  %356 = load i32*, i32** %17, align 8
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @Copy(i32* %356, i32 %359, i32 16)
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %362 = call i32 @FreeBuf(%struct.TYPE_4__* %361)
  br label %363

363:                                              ; preds = %353, %350
  br label %364

364:                                              ; preds = %363, %346
  br label %365

365:                                              ; preds = %364, %345
  br label %270

366:                                              ; preds = %279, %270
  br label %367

367:                                              ; preds = %366, %151, %145, %139
  %368 = load i32*, i32** %21, align 8
  %369 = call i32 @fclose(i32* %368)
  %370 = load i32*, i32** %20, align 8
  %371 = call i32 @fclose(i32* %370)
  %372 = load i64, i64* %22, align 8
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %374 = call i32 @CloseChildProcess(i64 %372, i32* %373)
  %375 = load i32, i32* %18, align 4
  store i32 %375, i32* %9, align 4
  br label %376

376:                                              ; preds = %367, %132, %121, %113, %62, %45
  %377 = load i32, i32* %9, align 4
  ret i32 %377
}

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @EnSafeStr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @OpenChildProcess(i8*, i8**, i32*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @CloseChildProcess(i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @base64_enc_len(i32) #1

declare dso_local i32 @B64_Encode(i8*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @CopyBinToStr(i32*, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @Decode64(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @StrToBin(i8*) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
