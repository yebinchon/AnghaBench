; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug_net.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug_net.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AI_CANONNAME = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"failed to bind\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"failed to listen\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"failed to accept\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"client1 connected\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"client2 connected\0A\00", align 1
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"recv1\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"recv1 %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"recv2\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"recv2 %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%d: CPU %d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%d: header\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%d: %3s: %08x %08x\0A\00", align 1
@regnames = common dso_local global i8** null, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"--\0ACPU %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"trace%d: \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"%3s: %08x %08x\0A\00", align 1
@tmp_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x [4 x i32]], align 16
  %7 = alloca [5 x i32], align 16
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in6, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 20, i1 false)
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %21, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %21, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 40)
  %36 = load i32, i32* @AI_CANONNAME, align 4
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 6
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @PF_UNSPEC, align 4
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = call i32 @getaddrinfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.addrinfo* %10, %struct.addrinfo** %9)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %345

46:                                               ; preds = %34
  %47 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %47, %struct.addrinfo** %8, align 8
  br label %48

48:                                               ; preds = %80, %46
  %49 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %50 = icmp ne %struct.addrinfo* %49, null
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @socket(i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %80

65:                                               ; preds = %51
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bind(i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @close(i32 %77)
  store i32 -1, i32* %11, align 4
  br label %80

79:                                               ; preds = %65
  br label %84

80:                                               ; preds = %76, %64
  %81 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 5
  %83 = load %struct.addrinfo*, %struct.addrinfo** %82, align 8
  store %struct.addrinfo* %83, %struct.addrinfo** %8, align 8
  br label %48

84:                                               ; preds = %79, %48
  %85 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %86 = call i32 @freeaddrinfo(%struct.addrinfo* %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %345

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @SOMAXCONN, align 4
  %94 = call i32 @listen(i32 %92, i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %345

99:                                               ; preds = %91
  store i32 4, i32* %22, align 4
  %100 = load i32, i32* %11, align 4
  %101 = bitcast %struct.sockaddr_in6* %14 to %struct.sockaddr*
  %102 = call i32 @accept(i32 %100, %struct.sockaddr* %101, i32* %22)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %345

107:                                              ; preds = %99
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* %22, align 4
  %109 = load i32, i32* %11, align 4
  %110 = bitcast %struct.sockaddr_in6* %14 to %struct.sockaddr*
  %111 = call i32 @accept(i32 %109, %struct.sockaddr* %110, i32* %22)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %345

116:                                              ; preds = %107
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %118

118:                                              ; preds = %256, %116
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @MSG_WAITALL, align 4
  %121 = call i32 @recv(i32 %119, %struct.TYPE_7__* %15, i32 112, i32 %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 112
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load i32, i32* %18, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %18, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %127
  store i32 -1, i32* %3, align 4
  br label %345

133:                                              ; preds = %118
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @MSG_WAITALL, align 4
  %136 = call i32 @recv(i32 %134, %struct.TYPE_7__* %16, i32 112, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 112
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load i32, i32* %18, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %18, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %144, %142
  store i32 -1, i32* %3, align 4
  br label %345

148:                                              ; preds = %133
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %20, align 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 8, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %21, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = load i32, i32* %21, align 4
  store i32 %161, i32* %23, align 4
  br label %162

162:                                              ; preds = %160, %148
  %163 = load i32, i32* %23, align 4
  %164 = call i64 @memcmp(%struct.TYPE_7__* %15, %struct.TYPE_7__* %16, i32 %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %6, i64 0, i64 %172
  %174 = load i32, i32* %20, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = and i32 %177, 3
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %173, i64 0, i64 %180
  store i32 %170, i32* %181, align 4
  br label %256

182:                                              ; preds = %162
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %185, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %182
  %191 = load i32, i32* %19, align 4
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 255
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, 255
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %191, i32 %195, i32 %199)
  br label %213

201:                                              ; preds = %182
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %203 = bitcast %struct.TYPE_6__* %202 to i32*
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %206 = bitcast %struct.TYPE_6__* %205 to i32*
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %204, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load i32, i32* %19, align 4
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %209, %201
  br label %213

213:                                              ; preds = %212, %190
  store i32 0, i32* %17, align 4
  br label %214

214:                                              ; preds = %252, %213
  %215 = load i32, i32* %17, align 4
  %216 = icmp slt i32 %215, 27
  br i1 %216, label %217, label %255

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %223, %229
  br i1 %230, label %231, label %251

231:                                              ; preds = %217
  %232 = load i32, i32* %19, align 4
  %233 = load i8**, i8*** @regnames, align 8
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %232, i8* %237, i32 %243, i32 %249)
  br label %251

251:                                              ; preds = %231, %217
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %17, align 4
  br label %214

255:                                              ; preds = %214
  br label %259

256:                                              ; preds = %166
  %257 = load i32, i32* %19, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %19, align 4
  br label %118

259:                                              ; preds = %255
  %260 = load i32, i32* %20, align 4
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %260)
  store i32 0, i32* %20, align 4
  br label %262

262:                                              ; preds = %315, %259
  %263 = load i32, i32* %20, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %318

265:                                              ; preds = %262
  %266 = load i32, i32* %20, align 4
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %266)
  store i32 0, i32* %17, align 4
  br label %268

268:                                              ; preds = %285, %265
  %269 = load i32, i32* %17, align 4
  %270 = icmp slt i32 %269, 4
  br i1 %270, label %271, label %288

271:                                              ; preds = %268
  %272 = load i32, i32* %20, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %6, i64 0, i64 %273
  %275 = load i32, i32* %20, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %277, align 4
  %280 = and i32 %278, 3
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %274, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %271
  %286 = load i32, i32* %17, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %17, align 4
  br label %268

288:                                              ; preds = %268
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %20, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %298)
  br label %313

300:                                              ; preds = %288
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %20, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %306, %300
  br label %313

313:                                              ; preds = %312, %294
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %315

315:                                              ; preds = %313
  %316 = load i32, i32* %20, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %20, align 4
  br label %262

318:                                              ; preds = %262
  store i32 0, i32* %17, align 4
  br label %319

319:                                              ; preds = %341, %318
  %320 = load i32, i32* %17, align 4
  %321 = icmp slt i32 %320, 25
  br i1 %321, label %322, label %344

322:                                              ; preds = %319
  %323 = load i8**, i8*** @regnames, align 8
  %324 = load i32, i32* %17, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  %327 = load i8*, i8** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %17, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %327, i32 %333, i32 %339)
  br label %341

341:                                              ; preds = %322
  %342 = load i32, i32* %17, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %17, align 4
  br label %319

344:                                              ; preds = %319
  store i32 0, i32* %3, align 4
  br label %345

345:                                              ; preds = %344, %147, %132, %114, %105, %97, %89, %45
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @bind(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @recv(i32, %struct.TYPE_7__*, i32, i32) #2

declare dso_local i64 @memcmp(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
