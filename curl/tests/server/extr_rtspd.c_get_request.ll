; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_rtspd.c_get_request.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_rtspd.c_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httprequest = type { i8*, i32, i64, i32, i8*, i64, i64, i64, i32*, i64, i32, i32, i8*, i8*, i8*, i8*, i32, i64, i32 }

@DOCNUMBER_NOTHING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@RCMD_NORMALREQ = common dso_local global i32 0, align 4
@RPROT_NONE = common dso_local global i32 0, align 4
@REQBUFSIZ = common dso_local global i32 0, align 4
@got_exit_signal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Connection closed by client\00", align 1
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"recv() returned error: (%d) %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Read %zd bytes\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Waiting for another piped request\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Request would overflow buffer, closing connection\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Request buffer overflow, closing connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.httprequest*)* @get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_request(i32 %0, %struct.httprequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.httprequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.httprequest* %1, %struct.httprequest** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %14 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %17 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %23 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %11, align 8
  %27 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %28 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %31 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = sub i64 %29, %33
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %20, %2
  %36 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %37 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %39 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @DOCNUMBER_NOTHING, align 4
  %41 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %42 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %41, i32 0, i32 18
  store i32 %40, i32* %42, align 8
  %43 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %44 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %43, i32 0, i32 17
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %47 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %46, i32 0, i32 16
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %50 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %49, i32 0, i32 15
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @FALSE, align 8
  %52 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %53 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %52, i32 0, i32 14
  store i8* %51, i8** %53, align 8
  %54 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %55 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %54, i32 0, i32 3
  store i32 0, i32* %55, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %58 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %57, i32 0, i32 13
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @FALSE, align 8
  %60 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %61 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %60, i32 0, i32 12
  store i8* %59, i8** %61, align 8
  %62 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %63 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %65 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @RCMD_NORMALREQ, align 4
  %67 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %68 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @RPROT_NONE, align 4
  %70 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %71 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 8
  %72 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %73 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %72, i32 0, i32 9
  store i64 0, i64* %73, align 8
  %74 = load i8*, i8** @FALSE, align 8
  %75 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %76 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %78 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %77, i32 0, i32 8
  store i32* null, i32** %78, align 8
  %79 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %80 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %205, %35
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %86 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @REQBUFSIZ, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %87, %90
  br label %92

92:                                               ; preds = %84, %81
  %93 = phi i1 [ false, %81 ], [ %91, %84 ]
  br i1 %93, label %94, label %206

94:                                               ; preds = %92
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @memmove(i8* %101, i8* %102, i64 %103)
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @curlx_uztosz(i64 %105)
  store i64 %106, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %140

107:                                              ; preds = %97, %94
  %108 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %109 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load i32, i32* %4, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %116 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %120 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @sread(i32 %113, i8* %118, i32 %121)
  store i64 %122, i64* %10, align 8
  br label %139

123:                                              ; preds = %107
  %124 = load i32, i32* %4, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %127 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i32, i32* @REQBUFSIZ, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %134 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %132, %135
  %137 = trunc i64 %136 to i32
  %138 = call i64 @sread(i32 %124, i8* %129, i32 %137)
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %123, %112
  br label %140

140:                                              ; preds = %139, %100
  %141 = load i64, i64* @got_exit_signal, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 1, i32* %3, align 4
  br label %269

144:                                              ; preds = %140
  %145 = load i64, i64* %10, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %159

149:                                              ; preds = %144
  %150 = load i64, i64* %10, align 8
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* @SOCKERRNO, align 4
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @strerror(i32 %155)
  %157 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %156)
  store i32 1, i32* %7, align 4
  br label %158

158:                                              ; preds = %152, %149
  br label %159

159:                                              ; preds = %158, %147
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i8*, i8** %9, align 8
  %164 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %165 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8 0, i8* %167, align 1
  %168 = load i8*, i8** %9, align 8
  %169 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %170 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @storerequest(i8* %168, i64 %171)
  store i32 1, i32* %3, align 4
  br label %269

173:                                              ; preds = %159
  %174 = load i64, i64* %10, align 8
  %175 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %174)
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %178 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %183 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  store i8 0, i8* %185, align 1
  %186 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %187 = call i32 @ProcessRequest(%struct.httprequest* %186)
  store i32 %187, i32* %8, align 4
  %188 = load i64, i64* @got_exit_signal, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %173
  store i32 1, i32* %3, align 4
  br label %269

191:                                              ; preds = %173
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %191
  %195 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %196 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %201 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %202 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, -1
  store i64 %204, i64* %202, align 8
  br label %205

205:                                              ; preds = %199, %194, %191
  br label %81

206:                                              ; preds = %92
  %207 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %208 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* @REQBUFSIZ, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %206
  %215 = load i64, i64* %10, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %219 = load i8*, i8** %9, align 8
  %220 = load i32, i32* @REQBUFSIZ, align 4
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  store i8 0, i8* %223, align 1
  store i32 1, i32* %7, align 4
  br label %246

224:                                              ; preds = %214, %206
  %225 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %226 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* @REQBUFSIZ, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = icmp ugt i64 %227, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %224
  %233 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %234 = load i8*, i8** %9, align 8
  %235 = load i32, i32* @REQBUFSIZ, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  store i8 0, i8* %238, align 1
  store i32 1, i32* %7, align 4
  br label %245

239:                                              ; preds = %224
  %240 = load i8*, i8** %9, align 8
  %241 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %242 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  store i8 0, i8* %244, align 1
  br label %245

245:                                              ; preds = %239, %232
  br label %246

246:                                              ; preds = %245, %217
  %247 = load i8*, i8** %9, align 8
  %248 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %249 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %248, i32 0, i32 4
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %246
  %253 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %254 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  br label %261

257:                                              ; preds = %246
  %258 = load %struct.httprequest*, %struct.httprequest** %5, align 8
  %259 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  br label %261

261:                                              ; preds = %257, %252
  %262 = phi i64 [ %256, %252 ], [ %260, %257 ]
  %263 = call i32 @storerequest(i8* %247, i64 %262)
  %264 = load i64, i64* @got_exit_signal, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 1, i32* %3, align 4
  br label %269

267:                                              ; preds = %261
  %268 = load i32, i32* %7, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %267, %266, %190, %162, %143
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @curlx_uztosz(i64) #1

declare dso_local i64 @sread(i32, i8*, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @storerequest(i8*, i64) #1

declare dso_local i32 @ProcessRequest(%struct.httprequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
