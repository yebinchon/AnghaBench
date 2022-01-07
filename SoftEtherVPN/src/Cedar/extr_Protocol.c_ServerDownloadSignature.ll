; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ServerDownloadSignature.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ServerDownloadSignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i32, i32, i64, i8*, %struct.TYPE_47__*, %struct.TYPE_45__*, i8* }
%struct.TYPE_47__ = type { %struct.TYPE_44__, i64, i32 }
%struct.TYPE_44__ = type { i32* }
%struct.TYPE_45__ = type { i32, %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32, i32, i64 }
%struct.TYPE_49__ = type { i32, i32, i32 }
%struct.TYPE_46__ = type { i32, i32, %struct.TYPE_49__* }
%struct.TYPE_51__ = type { i32, i32 }

@HTTP_VPN_TARGET2 = common dso_local global i8* null, align 8
@ERR_CLIENT_IS_NOT_VPN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"HTTP_TOO_MANY_REQUEST\00", align 1
@ERR_DISCONNECTED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/api\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/api/\00", align 1
@CONNECTION_TYPE_ADMIN_RPC = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"/admin\00", align 1
@MAX_WATERMARK_SIZE = common dso_local global i64 0, align 8
@HTTP_VPN_TARGET_POSTDATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"POST_Recv_TooLong\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"POST_Recv_Failed\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"POST_Target_Wrong\00", align 1
@WaterMark = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"POST_WaterMark_Error\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"SSTP_DUPLEX_POST\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"b_support_sstp\00", align 1
@SSTP_URI = common dso_local global i8* null, align 8
@CONNECTION_TYPE_OTHER = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"SSTP_ABORT\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SSTP_URL_WRONG\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"HTTP_BAD_METHOD\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"HTTP_ROOT\00", align 1
@HTTP_SAITAMA = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"202\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@HTTP_CONTENT_TYPE3 = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@HTTP_KEEP_ALIVE = common dso_local global i8* null, align 8
@Saitama = common dso_local global i32 0, align 4
@HTTP_PICTURES = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"|Pictures.mht\00", align 1
@HTTP_CONTENT_TYPE5 = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"/api?\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"HTTP_NOT_FOUND\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ServerDownloadSignature(%struct.TYPE_50__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_50__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_49__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_47__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_48__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_46__*, align 8
  %18 = alloca %struct.TYPE_51__*, align 8
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 19, i64* %11, align 8
  %19 = load i8*, i8** @HTTP_VPN_TARGET2, align 8
  store i8* %19, i8** %13, align 8
  %20 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %21 = icmp eq %struct.TYPE_50__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %607

23:                                               ; preds = %2
  %24 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_48__*, %struct.TYPE_48__** %27, align 8
  store %struct.TYPE_48__* %28, %struct.TYPE_48__** %12, align 8
  %29 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  store %struct.TYPE_47__* %31, %struct.TYPE_47__** %9, align 8
  br label %32

32:                                               ; preds = %23, %106, %134, %269, %556, %583, %606
  store i32 0, i32* %14, align 4
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %40 = call i32 @Disconnect(%struct.TYPE_47__* %39)
  %41 = load i8*, i8** @ERR_CLIENT_IS_NOT_VPN, align 8
  %42 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  store i32 0, i32* %3, align 4
  br label %607

45:                                               ; preds = %32
  %46 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %47 = call %struct.TYPE_49__* @RecvHttpHeader(%struct.TYPE_47__* %46)
  store %struct.TYPE_49__* %47, %struct.TYPE_49__** %6, align 8
  %48 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %49 = icmp eq %struct.TYPE_49__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i8*, i8** @ERR_CLIENT_IS_NOT_VPN, align 8
  %52 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i8*, i8** @ERR_DISCONNECTED, align 8
  %60 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %50
  store i32 0, i32* %3, align 4
  br label %607

63:                                               ; preds = %45
  %64 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @StrCmpi(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %240

69:                                               ; preds = %63
  %70 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %71 = call i64 @GetContentLength(%struct.TYPE_49__* %70)
  store i64 %71, i64* %8, align 8
  %72 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %137

76:                                               ; preds = %69
  %77 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @StrCmpi(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @StrCmpi(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %82, %76
  %89 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i8*, i8** @CONNECTION_TYPE_ADMIN_RPC, align 8
  %92 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %95 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %96 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @JsonRpcProcPost(%struct.TYPE_50__* %94, %struct.TYPE_47__* %95, %struct.TYPE_49__* %96, i64 %97)
  %99 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %100 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %99)
  %101 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %88
  store i64 0, i64* %10, align 8
  br label %106

106:                                              ; preds = %105, %88
  br label %32

107:                                              ; preds = %82
  %108 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @StartWith(i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load i8*, i8** @CONNECTION_TYPE_ADMIN_RPC, align 8
  %117 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %120 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %121 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @AdminWebProcPost(%struct.TYPE_50__* %119, %struct.TYPE_47__* %120, %struct.TYPE_49__* %121, i64 %122, i32 %125)
  %127 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %128 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %127)
  %129 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %113
  store i64 0, i64* %10, align 8
  br label %134

134:                                              ; preds = %133, %113
  br label %32

135:                                              ; preds = %107
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %69
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @MAX_WATERMARK_SIZE, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %8, align 8
  %143 = call i64 (...) @SizeOfWaterMark()
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %141, %137
  %146 = load i64, i64* %8, align 8
  %147 = load i32, i32* @HTTP_VPN_TARGET_POSTDATA, align 4
  %148 = call i64 @StrLen(i32 %147)
  %149 = icmp ne i64 %146, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %152 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @HttpSendForbidden(%struct.TYPE_47__* %151, i32 %154, i8* null)
  %156 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %157 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %156)
  %158 = load i8*, i8** @ERR_CLIENT_IS_NOT_VPN, align 8
  %159 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %161, align 8
  store i32 0, i32* %3, align 4
  br label %607

162:                                              ; preds = %145, %141
  %163 = load i64, i64* %8, align 8
  %164 = call i32* @Malloc(i64 %163)
  store i32* %164, i32** %7, align 8
  %165 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @RecvAll(%struct.TYPE_47__* %165, i32* %166, i64 %167, i32 %170)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %162
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @Free(i32* %174)
  %176 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %177 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %176)
  %178 = load i8*, i8** @ERR_DISCONNECTED, align 8
  %179 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %179, i32 0, i32 6
  store i8* %178, i8** %180, align 8
  %181 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %181, align 8
  store i32 0, i32* %3, align 4
  br label %607

182:                                              ; preds = %162
  %183 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %13, align 8
  %187 = call i64 @StrCmpi(i32 %185, i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %189, %182
  %193 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %194 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @HttpSendNotFound(%struct.TYPE_47__* %193, i32 %196)
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @Free(i32* %198)
  %200 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %201 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %200)
  %202 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %202, align 8
  br label %239

203:                                              ; preds = %189
  %204 = load i64, i64* %8, align 8
  %205 = load i32, i32* @HTTP_VPN_TARGET_POSTDATA, align 4
  %206 = call i64 @StrLen(i32 %205)
  %207 = icmp eq i64 %204, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* @HTTP_VPN_TARGET_POSTDATA, align 4
  %211 = load i64, i64* %8, align 8
  %212 = call i64 @Cmp(i32* %209, i32 %210, i64 %211)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %208, %203
  %215 = load i64, i64* %8, align 8
  %216 = call i64 (...) @SizeOfWaterMark()
  %217 = icmp sge i64 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %214
  %219 = load i32*, i32** %7, align 8
  %220 = load i32, i32* @WaterMark, align 4
  %221 = call i64 (...) @SizeOfWaterMark()
  %222 = call i64 @Cmp(i32* %219, i32 %220, i64 %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %218, %208
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @Free(i32* %225)
  %227 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %228 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %227)
  store i32 1, i32* %3, align 4
  br label %607

229:                                              ; preds = %218, %214
  %230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %231 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @HttpSendForbidden(%struct.TYPE_47__* %230, i32 %233, i8* null)
  %235 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %236 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %235)
  %237 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %237, align 8
  br label %238

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %238, %192
  br label %606

240:                                              ; preds = %63
  %241 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @StrCmpi(i32 %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %286

246:                                              ; preds = %240
  %247 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %285

251:                                              ; preds = %246
  %252 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @StrCmpi(i32 %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %269, label %257

257:                                              ; preds = %251
  %258 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @StrCmpi(i32 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %257
  %264 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i64 @StartWith(i32 %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %263, %257, %251
  %270 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %270, i32 0, i32 0
  store i32 1, i32* %271, align 8
  %272 = load i8*, i8** @CONNECTION_TYPE_ADMIN_RPC, align 8
  %273 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %273, i32 0, i32 3
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %276 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %277 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %278 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @JsonRpcProcOptions(%struct.TYPE_50__* %275, %struct.TYPE_47__* %276, %struct.TYPE_49__* %277, i32 %280)
  %282 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %283 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %282)
  store i64 0, i64* %10, align 8
  br label %32

284:                                              ; preds = %263
  br label %285

285:                                              ; preds = %284, %246
  br label %605

286:                                              ; preds = %240
  %287 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = call i64 @StrCmpi(i32 %289, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %346

292:                                              ; preds = %286
  %293 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %292
  %298 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %346

302:                                              ; preds = %297, %292
  %303 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %304 = call i64 @GetServerCapsBool(%struct.TYPE_48__* %303, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %346

306:                                              ; preds = %302
  %307 = call i32 (...) @GetNoSstp()
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %346

309:                                              ; preds = %306
  %310 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %310, i32 0, i32 1
  store i32 1, i32* %311, align 4
  %312 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i8*, i8** @SSTP_URI, align 8
  %316 = call i64 @StrCmpi(i32 %314, i8* %315)
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %336

318:                                              ; preds = %309
  %319 = load i8*, i8** @CONNECTION_TYPE_OTHER, align 8
  %320 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %320, i32 0, i32 3
  store i8* %319, i8** %321, align 8
  %322 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %323 = call i32 @AcceptSstp(%struct.TYPE_50__* %322)
  store i32 %323, i32* %15, align 4
  %324 = load i8*, i8** @ERR_DISCONNECTED, align 8
  %325 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %325, i32 0, i32 6
  store i8* %324, i8** %326, align 8
  %327 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %328 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %327)
  %329 = load i32, i32* %15, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %318
  %332 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %332, align 8
  br label %335

333:                                              ; preds = %318
  %334 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %334, align 8
  br label %335

335:                                              ; preds = %333, %331
  store i32 0, i32* %3, align 4
  br label %607

336:                                              ; preds = %309
  %337 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %338 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @HttpSendNotFound(%struct.TYPE_47__* %337, i32 %340)
  %342 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %342, align 8
  br label %343

343:                                              ; preds = %336
  %344 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %345 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %344)
  br label %604

346:                                              ; preds = %306, %302, %297, %286
  %347 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @StrCmpi(i32 %349, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %377

352:                                              ; preds = %346
  %353 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = call i64 @StrCmpi(i32 %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %377

358:                                              ; preds = %352
  %359 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = call i64 @StrCmpi(i32 %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %377

364:                                              ; preds = %358
  %365 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %366 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @HttpSendNotImplemented(%struct.TYPE_47__* %365, i32 %368, i32 %371, i32 %374)
  %376 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %376, align 8
  br label %601

377:                                              ; preds = %358, %352, %346
  %378 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @StrCmpi(i32 %380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %392

383:                                              ; preds = %377
  %384 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %384, align 8
  %385 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %385, i32 0, i32 4
  %387 = load %struct.TYPE_47__*, %struct.TYPE_47__** %386, align 8
  %388 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @HttpSendForbidden(%struct.TYPE_47__* %387, i32 %390, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  br label %600

392:                                              ; preds = %377
  store i32 0, i32* %16, align 4
  %393 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %393, i32 0, i32 5
  %395 = load %struct.TYPE_45__*, %struct.TYPE_45__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_48__*, %struct.TYPE_48__** %396, align 8
  %398 = icmp ne %struct.TYPE_48__* %397, null
  br i1 %398, label %399, label %435

399:                                              ; preds = %392
  %400 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %400, i32 0, i32 5
  %402 = load %struct.TYPE_45__*, %struct.TYPE_45__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_48__*, %struct.TYPE_48__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %404, i32 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %435

408:                                              ; preds = %399
  %409 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %412, i32 0, i32 5
  %414 = load %struct.TYPE_45__*, %struct.TYPE_45__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = call %struct.TYPE_46__* @WuGetPage(i32 %411, i32 %416)
  store %struct.TYPE_46__* %417, %struct.TYPE_46__** %17, align 8
  %418 = load %struct.TYPE_46__*, %struct.TYPE_46__** %17, align 8
  %419 = icmp ne %struct.TYPE_46__* %418, null
  br i1 %419, label %420, label %434

420:                                              ; preds = %408
  %421 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %422 = load %struct.TYPE_46__*, %struct.TYPE_46__** %17, align 8
  %423 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %422, i32 0, i32 2
  %424 = load %struct.TYPE_49__*, %struct.TYPE_49__** %423, align 8
  %425 = load %struct.TYPE_46__*, %struct.TYPE_46__** %17, align 8
  %426 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_46__*, %struct.TYPE_46__** %17, align 8
  %429 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @PostHttp(%struct.TYPE_47__* %421, %struct.TYPE_49__* %424, i32 %427, i32 %430)
  store i32 1, i32* %16, align 4
  %432 = load %struct.TYPE_46__*, %struct.TYPE_46__** %17, align 8
  %433 = call i32 @WuFreeWebPage(%struct.TYPE_46__* %432)
  br label %434

434:                                              ; preds = %420, %408
  br label %435

435:                                              ; preds = %434, %399, %392
  %436 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %436, i32 0, i32 4
  %438 = load %struct.TYPE_47__*, %struct.TYPE_47__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 0
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 127
  br i1 %444, label %445, label %512

445:                                              ; preds = %435
  %446 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = load i8*, i8** @HTTP_SAITAMA, align 8
  %450 = call i64 @StrCmpi(i32 %448, i8* %449)
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %452, label %472

452:                                              ; preds = %445
  %453 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %454 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %453)
  %455 = call %struct.TYPE_49__* @NewHttpHeader(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  store %struct.TYPE_49__* %455, %struct.TYPE_49__** %6, align 8
  %456 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %457 = load i8*, i8** @HTTP_CONTENT_TYPE3, align 8
  %458 = call i32 @NewHttpValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* %457)
  %459 = call i32 @AddHttpValue(%struct.TYPE_49__* %456, i32 %458)
  %460 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %461 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %462 = call i32 @AddHttpValue(%struct.TYPE_49__* %460, i32 %461)
  %463 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %464 = load i8*, i8** @HTTP_KEEP_ALIVE, align 8
  %465 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %464)
  %466 = call i32 @AddHttpValue(%struct.TYPE_49__* %463, i32 %465)
  %467 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %468 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %469 = load i32, i32* @Saitama, align 4
  %470 = call i32 (...) @SizeOfSaitama()
  %471 = call i32 @PostHttp(%struct.TYPE_47__* %467, %struct.TYPE_49__* %468, i32 %469, i32 %470)
  store i32 1, i32* %16, align 4
  br label %511

472:                                              ; preds = %445
  %473 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = load i8*, i8** @HTTP_PICTURES, align 8
  %477 = call i64 @StartWith(i32 %475, i8* %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %510

479:                                              ; preds = %472
  %480 = call %struct.TYPE_51__* @ReadDump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  store %struct.TYPE_51__* %480, %struct.TYPE_51__** %18, align 8
  %481 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %482 = icmp ne %struct.TYPE_51__* %481, null
  br i1 %482, label %483, label %509

483:                                              ; preds = %479
  %484 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %485 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %484)
  %486 = call %struct.TYPE_49__* @NewHttpHeader(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  store %struct.TYPE_49__* %486, %struct.TYPE_49__** %6, align 8
  %487 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %488 = load i8*, i8** @HTTP_CONTENT_TYPE5, align 8
  %489 = call i32 @NewHttpValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* %488)
  %490 = call i32 @AddHttpValue(%struct.TYPE_49__* %487, i32 %489)
  %491 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %492 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %493 = call i32 @AddHttpValue(%struct.TYPE_49__* %491, i32 %492)
  %494 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %495 = load i8*, i8** @HTTP_KEEP_ALIVE, align 8
  %496 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %495)
  %497 = call i32 @AddHttpValue(%struct.TYPE_49__* %494, i32 %496)
  %498 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %499 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %500 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %501 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %504 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @PostHttp(%struct.TYPE_47__* %498, %struct.TYPE_49__* %499, i32 %502, i32 %505)
  store i32 1, i32* %16, align 4
  %507 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %508 = call i32 @FreeBuf(%struct.TYPE_51__* %507)
  br label %509

509:                                              ; preds = %483, %479
  br label %510

510:                                              ; preds = %509, %472
  br label %511

511:                                              ; preds = %510, %452
  br label %512

512:                                              ; preds = %511, %435
  %513 = load i32, i32* %16, align 4
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %589

515:                                              ; preds = %512
  %516 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %517 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %588

520:                                              ; preds = %515
  %521 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %522 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = call i64 @StartWith(i32 %523, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %538, label %526

526:                                              ; preds = %520
  %527 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = call i64 @StartWith(i32 %529, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %538, label %532

532:                                              ; preds = %526
  %533 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = call i64 @StrCmpi(i32 %535, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %559

538:                                              ; preds = %532, %526, %520
  %539 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %540 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %539, i32 0, i32 0
  store i32 1, i32* %540, align 8
  %541 = load i8*, i8** @CONNECTION_TYPE_ADMIN_RPC, align 8
  %542 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %543 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %542, i32 0, i32 3
  store i8* %541, i8** %543, align 8
  %544 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %545 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %546 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %547 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = call i32 @JsonRpcProcGet(%struct.TYPE_50__* %544, %struct.TYPE_47__* %545, %struct.TYPE_49__* %546, i32 %549)
  %551 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %552 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %551, i32 0, i32 2
  %553 = load i64, i64* %552, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %538
  store i64 0, i64* %10, align 8
  br label %556

556:                                              ; preds = %555, %538
  %557 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %558 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %557)
  br label %32

559:                                              ; preds = %532
  %560 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %561 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = call i64 @StartWith(i32 %562, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %586

565:                                              ; preds = %559
  %566 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %567 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %566, i32 0, i32 0
  store i32 1, i32* %567, align 8
  %568 = load i8*, i8** @CONNECTION_TYPE_ADMIN_RPC, align 8
  %569 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %569, i32 0, i32 3
  store i8* %568, i8** %570, align 8
  %571 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %572 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %573 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %574 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @AdminWebProcGet(%struct.TYPE_50__* %571, %struct.TYPE_47__* %572, %struct.TYPE_49__* %573, i32 %576)
  %578 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %579 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %578, i32 0, i32 2
  %580 = load i64, i64* %579, align 8
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %565
  store i64 0, i64* %10, align 8
  br label %583

583:                                              ; preds = %582, %565
  %584 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %585 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %584)
  br label %32

586:                                              ; preds = %559
  br label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587, %515
  br label %589

589:                                              ; preds = %588, %512
  %590 = load i32, i32* %16, align 4
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %599

592:                                              ; preds = %589
  %593 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %594 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 4
  %597 = call i32 @HttpSendNotFound(%struct.TYPE_47__* %593, i32 %596)
  %598 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8** %598, align 8
  br label %599

599:                                              ; preds = %592, %589
  br label %600

600:                                              ; preds = %599, %383
  br label %601

601:                                              ; preds = %600, %364
  %602 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %603 = call i32 @FreeHttpHeader(%struct.TYPE_49__* %602)
  br label %604

604:                                              ; preds = %601, %343
  br label %605

605:                                              ; preds = %604, %285
  br label %606

606:                                              ; preds = %605, %239
  br label %32

607:                                              ; preds = %335, %224, %173, %150, %62, %38, %22
  %608 = load i32, i32* %3, align 4
  ret i32 %608
}

declare dso_local i32 @Disconnect(%struct.TYPE_47__*) #1

declare dso_local %struct.TYPE_49__* @RecvHttpHeader(%struct.TYPE_47__*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i64 @GetContentLength(%struct.TYPE_49__*) #1

declare dso_local i32 @JsonRpcProcPost(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i64) #1

declare dso_local i32 @FreeHttpHeader(%struct.TYPE_49__*) #1

declare dso_local i64 @StartWith(i32, i8*) #1

declare dso_local i32 @AdminWebProcPost(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i64, i32) #1

declare dso_local i64 @SizeOfWaterMark(...) #1

declare dso_local i64 @StrLen(i32) #1

declare dso_local i32 @HttpSendForbidden(%struct.TYPE_47__*, i32, i8*) #1

declare dso_local i32* @Malloc(i64) #1

declare dso_local i32 @RecvAll(%struct.TYPE_47__*, i32*, i64, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @HttpSendNotFound(%struct.TYPE_47__*, i32) #1

declare dso_local i64 @Cmp(i32*, i32, i64) #1

declare dso_local i32 @JsonRpcProcOptions(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i32) #1

declare dso_local i64 @GetServerCapsBool(%struct.TYPE_48__*, i8*) #1

declare dso_local i32 @GetNoSstp(...) #1

declare dso_local i32 @AcceptSstp(%struct.TYPE_50__*) #1

declare dso_local i32 @HttpSendNotImplemented(%struct.TYPE_47__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_46__* @WuGetPage(i32, i32) #1

declare dso_local i32 @PostHttp(%struct.TYPE_47__*, %struct.TYPE_49__*, i32, i32) #1

declare dso_local i32 @WuFreeWebPage(%struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_49__* @NewHttpHeader(i8*, i8*, i8*) #1

declare dso_local i32 @AddHttpValue(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @NewHttpValue(i8*, i8*) #1

declare dso_local i32 @SizeOfSaitama(...) #1

declare dso_local %struct.TYPE_51__* @ReadDump(i8*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_51__*) #1

declare dso_local i32 @JsonRpcProcGet(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i32) #1

declare dso_local i32 @AdminWebProcGet(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
