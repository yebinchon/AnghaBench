; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_printsub.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_printsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s IAC SB \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RCVD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SENT\00", align 1
@CURL_IAC = common dso_local global i32 0, align 4
@CURL_SE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"(terminated by \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c", not IAC SE!) \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"(Empty suboption?)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%s (unsupported)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%d (unknown)\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Width: %d ; Height: %d\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" IS\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" SEND\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c" INFO/REPLY\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" NAME\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" %.2x\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*, i32, i8*, i64)* @printsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printsub(%struct.Curl_easy* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %12 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %279

16:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %16
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 60
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i64, i64* %8, align 8
  %27 = icmp uge i64 %26, 3
  br i1 %27, label %28, label %104

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %30, 2
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CURL_IAC, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @CURL_SE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %103

48:                                               ; preds = %44, %28
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %50 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %9, align 4
  %52 = trunc i32 %51 to i8
  %53 = call i64 @CURL_TELOPT_OK(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = trunc i32 %57 to i8
  %59 = call i32 @CURL_TELOPT(i8 zeroext %58)
  %60 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %75

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @CURL_TELCMD_OK(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @CURL_TELCMD(i32 %67)
  %69 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %74

70:                                               ; preds = %61
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32, i32* %10, align 4
  %77 = trunc i32 %76 to i8
  %78 = call i64 @CURL_TELOPT_OK(i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i32 @CURL_TELOPT(i8 zeroext %83)
  %85 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %100

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @CURL_TELCMD_OK(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @CURL_TELCMD(i32 %92)
  %94 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %99

95:                                               ; preds = %86
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %80
  %101 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %102 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %44
  br label %104

104:                                              ; preds = %103, %19
  %105 = load i64, i64* %8, align 8
  %106 = sub i64 %105, 2
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %104, %16
  %108 = load i64, i64* %8, align 8
  %109 = icmp ult i64 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %112 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %279

113:                                              ; preds = %107
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @CURL_TELOPT_OK(i8 zeroext %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %113
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  switch i32 %123, label %131 [
    i32 133, label %124
    i32 132, label %124
    i32 134, label %124
    i32 135, label %124
  ]

124:                                              ; preds = %119, %119, %119, %119
  %125 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @CURL_TELOPT(i8 zeroext %128)
  %130 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  br label %138

131:                                              ; preds = %119
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @CURL_TELOPT(i8 zeroext %135)
  %137 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %131, %124
  br label %148

139:                                              ; preds = %113
  %140 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %139, %138
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  switch i32 %152, label %180 [
    i32 135, label %153
  ]

153:                                              ; preds = %148
  %154 = load i64, i64* %8, align 8
  %155 = icmp ugt i64 %154, 4
  br i1 %155, label %156, label %179

156:                                              ; preds = %153
  %157 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, 8
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %162, %166
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 3
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl i32 %171, 8
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 4
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %172, %176
  %178 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %167, i32 %177)
  br label %179

179:                                              ; preds = %156, %153
  br label %272

180:                                              ; preds = %148
  %181 = load i8*, i8** %7, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  switch i32 %184, label %197 [
    i32 130, label %185
    i32 128, label %188
    i32 131, label %191
    i32 129, label %194
  ]

185:                                              ; preds = %180
  %186 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %187 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %197

188:                                              ; preds = %180
  %189 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %190 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %197

191:                                              ; preds = %180
  %192 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %193 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %197

194:                                              ; preds = %180
  %195 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %196 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %197

197:                                              ; preds = %180, %194, %191, %188, %185
  %198 = load i8*, i8** %7, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  switch i32 %201, label %252 [
    i32 133, label %202
    i32 132, label %202
    i32 134, label %210
  ]

202:                                              ; preds = %197, %197
  %203 = load i8*, i8** %7, align 8
  %204 = load i64, i64* %8, align 8
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8 0, i8* %205, align 1
  %206 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 2
  %209 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %208)
  br label %271

210:                                              ; preds = %197
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 130
  br i1 %215, label %216, label %251

216:                                              ; preds = %210
  %217 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %218 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i32 3, i32* %9, align 4
  br label %219

219:                                              ; preds = %247, %216
  %220 = load i32, i32* %9, align 4
  %221 = zext i32 %220 to i64
  %222 = load i64, i64* %8, align 8
  %223 = icmp ult i64 %221, %222
  br i1 %223, label %224, label %250

224:                                              ; preds = %219
  %225 = load i8*, i8** %7, align 8
  %226 = load i32, i32* %9, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  switch i32 %230, label %237 [
    i32 136, label %231
    i32 137, label %234
  ]

231:                                              ; preds = %224
  %232 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %233 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %246

234:                                              ; preds = %224
  %235 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %236 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %246

237:                                              ; preds = %224
  %238 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = load i32, i32* %9, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %237, %234, %231
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %9, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %9, align 4
  br label %219

250:                                              ; preds = %219
  br label %251

251:                                              ; preds = %250, %210
  br label %271

252:                                              ; preds = %197
  store i32 2, i32* %9, align 4
  br label %253

253:                                              ; preds = %267, %252
  %254 = load i32, i32* %9, align 4
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %8, align 8
  %257 = icmp ult i64 %255, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %253
  %259 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %260 = load i8*, i8** %7, align 8
  %261 = load i32, i32* %9, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %258
  %268 = load i32, i32* %9, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %253

270:                                              ; preds = %253
  br label %271

271:                                              ; preds = %270, %251, %202
  br label %272

272:                                              ; preds = %271, %179
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %277 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %278

278:                                              ; preds = %275, %272
  br label %279

279:                                              ; preds = %110, %278, %4
  ret void
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i64 @CURL_TELOPT_OK(i8 zeroext) #1

declare dso_local i32 @CURL_TELOPT(i8 zeroext) #1

declare dso_local i64 @CURL_TELCMD_OK(i32) #1

declare dso_local i32 @CURL_TELCMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
