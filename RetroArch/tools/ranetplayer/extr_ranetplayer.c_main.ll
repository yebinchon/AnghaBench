; ModuleID = '/home/carl/AnghaBench/RetroArch/tools/ranetplayer/extr_ranetplayer.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tools/ranetplayer/extr_ranetplayer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8, i32* }
%struct.addrinfo = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@RARCH_DEFAULT_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ahead\00", align 1
@__const.main.opt = private unnamed_addr constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 72 to i32*) }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 80 to i32*) }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 112 to i32*) }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 114 to i32*) }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 97 to i32*) }], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"H:P:p:r:a:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@payload_size = common dso_local global i32 0, align 4
@payload = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@ranp_in = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@ranp_out = common dso_local global i32 0, align 4
@SOCKET_PROTOCOL_TCP = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Failed to receive connection header.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Password required but unsupported.\0A\00", align 1
@NETPLAY_CMD_NICK = common dso_local global i32 0, align 4
@cmd = common dso_local global i32 0, align 4
@cmd_size = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"RANetplayer\00", align 1
@NETPLAY_CMD_INFO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"Failed to receive INFO.\00", align 1
@frame_offset = common dso_local global i8* null, align 8
@NETPLAY_CMD_PLAY = common dso_local global i32 0, align 4
@NETPLAY_CMD_MODE_BIT_PLAYING = common dso_local global i32 0, align 4
@NETPLAY_CMD_MODE_BIT_YOU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [5 x %struct.option], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %22 = load i32, i32* @RARCH_DEFAULT_PORT, align 4
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %23 = bitcast [5 x %struct.option]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([5 x %struct.option]* @__const.main.opt to i8*), i64 120, i1 false)
  br label %24

24:                                               ; preds = %2, %48
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %18, i64 0, i64 0
  %28 = call i32 @getopt_long(i32 %25, i8** %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.option* %27, i32* null)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %49

32:                                               ; preds = %24
  %33 = load i32, i32* %19, align 4
  switch i32 %33, label %46 [
    i32 72, label %34
    i32 80, label %36
    i32 112, label %39
    i32 114, label %41
    i32 97, label %43
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %9, align 8
  br label %48

36:                                               ; preds = %32
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %12, align 4
  br label %48

39:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %10, align 8
  br label %48

41:                                               ; preds = %32
  store i32 1, i32* %15, align 4
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** %11, align 8
  br label %48

43:                                               ; preds = %32
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @atoi(i8* %44)
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %32
  %47 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %297

48:                                               ; preds = %43, %41, %39, %36, %34
  br label %24

49:                                               ; preds = %31
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @optind, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  store i32 1, i32* %13, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* @optind, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @optind, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %56, %52, %49
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %297

71:                                               ; preds = %66, %63
  store i32 4096, i32* @payload_size, align 4
  %72 = load i32, i32* @payload_size, align 4
  %73 = call i64* @malloc(i32 %72)
  store i64* %73, i64** @payload, align 8
  %74 = load i64*, i64** @payload, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

78:                                               ; preds = %71
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* @O_RDONLY, align 4
  %84 = call i32 (i8*, i32, ...) @open(i8* %82, i32 %83)
  store i32 %84, i32* @ranp_in, align 4
  %85 = load i32, i32* @ranp_in, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @perror(i8* %88)
  store i32 1, i32* %3, align 4
  br label %297

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* @O_WRONLY, align 4
  %97 = load i32, i32* @O_CREAT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @O_EXCL, align 4
  %100 = or i32 %98, %99
  %101 = call i32 (i8*, i32, ...) @open(i8* %95, i32 %100, i32 438)
  store i32 %101, i32* @ranp_out, align 4
  %102 = load i32, i32* @ranp_out, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @perror(i8* %105)
  store i32 1, i32* %3, align 4
  br label %297

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %91
  %109 = bitcast %struct.addrinfo** %6 to i8**
  %110 = load i32, i32* %12, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* @SOCKET_PROTOCOL_TCP, align 4
  %113 = call i32 @socket_init(i8** %109, i32 %110, i8* %111, i32 %112)
  store i32 %113, i32* @sock, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

117:                                              ; preds = %108
  %118 = load i32, i32* @sock, align 4
  %119 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %120 = call i64 @socket_connect(i32 %118, %struct.addrinfo* %119, i32 0)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

124:                                              ; preds = %117
  %125 = load i32, i32* @sock, align 4
  %126 = load i64*, i64** @payload, align 8
  %127 = call i32 @socket_receive_all_blocking(i32 %125, i64* %126, i32 24)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

132:                                              ; preds = %124
  %133 = load i64*, i64** @payload, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 @fprintf(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

140:                                              ; preds = %132
  %141 = load i32, i32* @sock, align 4
  %142 = load i64*, i64** @payload, align 8
  %143 = call i32 @socket_send_all_blocking(i32 %141, i64* %142, i32 24, i32 1)
  %144 = load i32, i32* @NETPLAY_CMD_NICK, align 4
  store i32 %144, i32* @cmd, align 4
  store i32 32, i32* @cmd_size, align 4
  %145 = load i64*, i64** @payload, align 8
  %146 = bitcast i64* %145 to i8*
  %147 = call i32 @strcpy(i8* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %148 = call i32 (...) @SEND()
  %149 = call i32 (...) @RECV()
  %150 = call i32 (...) @RECV()
  %151 = load i32, i32* @cmd, align 4
  %152 = load i32, i32* @NETPLAY_CMD_INFO, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %140
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 @fprintf(i32 %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

157:                                              ; preds = %140
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (...) @WRITE()
  br label %162

162:                                              ; preds = %160, %157
  %163 = call i32 (...) @SEND()
  %164 = call i32 (...) @RECV()
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  store i32 1, i32* %16, align 4
  %171 = load i64*, i64** @payload, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @ntohl(i64 %173)
  store i8* %174, i8** @frame_offset, align 8
  br label %175

175:                                              ; preds = %170, %167, %162
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32, i32* @NETPLAY_CMD_PLAY, align 4
  store i32 %179, i32* @cmd, align 4
  store i32 4, i32* @cmd_size, align 4
  %180 = call i64 @htonl(i32 1)
  %181 = load i64*, i64** @payload, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  store i64 %180, i64* %182, align 8
  %183 = call i32 (...) @SEND()
  br label %184

184:                                              ; preds = %178, %175
  br label %185

185:                                              ; preds = %184, %296
  %186 = call i32 (...) @RECV()
  %187 = call i32 @frame_offset_cmd(i32 1)
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, i32* %16, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i32 (...) @WRITE()
  br label %195

195:                                              ; preds = %193, %190, %185
  %196 = load i32, i32* @cmd, align 4
  switch i32 %196, label %296 [
    i32 129, label %197
    i32 130, label %236
    i32 128, label %236
  ]

197:                                              ; preds = %195
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %235

200:                                              ; preds = %197
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %235, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* @cmd_size, align 4
  %205 = sext i32 %204 to i64
  %206 = icmp ult i64 %205, 8
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %296

208:                                              ; preds = %203
  %209 = load i64*, i64** @payload, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = call i8* @ntohl(i64 %211)
  %213 = ptrtoint i8* %212 to i32
  store i32 %213, i32* %20, align 4
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* @NETPLAY_CMD_MODE_BIT_PLAYING, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %208
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* @NETPLAY_CMD_MODE_BIT_YOU, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %218
  store i32 1, i32* %14, align 4
  %224 = call i32 @frame_offset_cmd(i32 0)
  %225 = load i64*, i64** @payload, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = call i8* @ntohl(i64 %227)
  store i8* %228, i8** @frame_offset, align 8
  %229 = load i32, i32* %15, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  store i32 1, i32* %16, align 4
  br label %232

232:                                              ; preds = %231, %223
  %233 = call i32 @send_input(i32 0)
  br label %234

234:                                              ; preds = %232, %218, %208
  br label %235

235:                                              ; preds = %234, %200, %197
  br label %296

236:                                              ; preds = %195, %195
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* %14, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %239, %236
  br label %296

243:                                              ; preds = %239
  %244 = load i32, i32* @cmd_size, align 4
  %245 = sext i32 %244 to i64
  %246 = icmp ult i64 %245, 4
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %296

248:                                              ; preds = %243
  %249 = load i64*, i64** @payload, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  %251 = load i64, i64* %250, align 8
  %252 = call i8* @ntohl(i64 %251)
  %253 = ptrtoint i8* %252 to i32
  store i32 %253, i32* %21, align 4
  %254 = load i32, i32* @cmd, align 4
  %255 = icmp eq i32 %254, 130
  br i1 %255, label %256, label %267

256:                                              ; preds = %248
  %257 = load i32, i32* @cmd_size, align 4
  %258 = sext i32 %257 to i64
  %259 = icmp ult i64 %258, 8
  br i1 %259, label %266, label %260

260:                                              ; preds = %256
  %261 = load i64*, i64** @payload, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 1
  %263 = load i64, i64* %262, align 8
  %264 = call i8* @ntohl(i64 %263)
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %260, %256
  br label %296

267:                                              ; preds = %260, %248
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp sgt i32 %268, %269
  br i1 %270, label %271, label %295

271:                                              ; preds = %267
  %272 = load i32, i32* %21, align 4
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp sge i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %21, align 4
  %277 = load i32, i32* %8, align 4
  %278 = sub nsw i32 0, %277
  %279 = icmp sge i32 %276, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %275, %271
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %281, %282
  %284 = call i32 @send_input(i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %280
  %287 = load i32, i32* %15, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* @sock, align 4
  %291 = call i32 @socket_close(i32 %290)
  br label %292

292:                                              ; preds = %289, %286
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %293

293:                                              ; preds = %292, %280
  br label %294

294:                                              ; preds = %293, %275
  br label %295

295:                                              ; preds = %294, %267
  br label %296

296:                                              ; preds = %195, %295, %266, %247, %242, %235, %207
  br label %185

297:                                              ; preds = %154, %137, %129, %122, %115, %104, %87, %76, %69, %46
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64* @malloc(i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i32 @socket_init(i8**, i32, i8*, i32) #2

declare dso_local i64 @socket_connect(i32, %struct.addrinfo*, i32) #2

declare dso_local i32 @socket_receive_all_blocking(i32, i64*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @socket_send_all_blocking(i32, i64*, i32, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @SEND(...) #2

declare dso_local i32 @RECV(...) #2

declare dso_local i32 @WRITE(...) #2

declare dso_local i8* @ntohl(i64) #2

declare dso_local i64 @htonl(i32) #2

declare dso_local i32 @frame_offset_cmd(i32) #2

declare dso_local i32 @send_input(i32) #2

declare dso_local i32 @socket_close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
