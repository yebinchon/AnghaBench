; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c__redisContextConnectTcp.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c__redisContextConnectTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.timeval = type { i32 }
%struct.addrinfo = type { i32, i32, %struct.addrinfo*, i32, i32, i32 }

@REDIS_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@REDIS_ERR_OTHER = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't get addr: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't bind socket: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@REDIS_CONNECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Can't create socket: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, %struct.timeval*, i8*)* @_redisContextConnectTcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_redisContextConnectTcp(%struct.TYPE_8__* %0, i8* %1, i32 %2, %struct.timeval* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca %struct.addrinfo*, align 8
  %19 = alloca %struct.addrinfo*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [128 x i8], align 16
  %23 = alloca [128 x i8], align 16
  %24 = alloca [128 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.timeval* %3, %struct.timeval** %10, align 8
  store i8* %4, i8** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REDIS_BLOCK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %20, align 4
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @memset(%struct.addrinfo* %15, i32 0, i32 32)
  %34 = load i32, i32* @AF_INET, align 4
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 5
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %40 = call i32 @getaddrinfo(i8* %38, i8* %39, %struct.addrinfo* %15, %struct.addrinfo** %16)
  store i32 %40, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %5
  %43 = load i32, i32* @AF_INET6, align 4
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 5
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %47 = call i32 @getaddrinfo(i8* %45, i8* %46, %struct.addrinfo* %15, %struct.addrinfo** %16)
  store i32 %47, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i8* @gai_strerror(i32 %52)
  %54 = call i32 @__redisSetError(%struct.TYPE_8__* %50, i32 %51, i8* %53)
  %55 = load i32, i32* @REDIS_ERR, align 4
  store i32 %55, i32* %6, align 4
  br label %216

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %5
  %58 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  store %struct.addrinfo* %58, %struct.addrinfo** %18, align 8
  br label %59

59:                                               ; preds = %193, %57
  %60 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %61 = icmp ne %struct.addrinfo* %60, null
  br i1 %61, label %62, label %197

62:                                               ; preds = %59
  %63 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @socket(i32 %65, i32 %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %193

75:                                               ; preds = %62
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = call i32 @redisSetBlocking(%struct.TYPE_8__* %79, i32 0)
  %81 = load i32, i32* @REDIS_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %210

84:                                               ; preds = %75
  %85 = load i8*, i8** %11, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %136

87:                                               ; preds = %84
  store i32 0, i32* %21, align 4
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @getaddrinfo(i8* %88, i8* null, %struct.addrinfo* %15, %struct.addrinfo** %17)
  store i32 %89, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %93 = load i32, i32* %13, align 4
  %94 = call i8* @gai_strerror(i32 %93)
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %92, i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %99 = call i32 @__redisSetError(%struct.TYPE_8__* %96, i32 %97, i8* %98)
  br label %210

100:                                              ; preds = %87
  %101 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  store %struct.addrinfo* %101, %struct.addrinfo** %19, align 8
  br label %102

102:                                              ; preds = %117, %100
  %103 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %104 = icmp ne %struct.addrinfo* %103, null
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @bind(i32 %106, i32 %109, i32 %112)
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  store i32 1, i32* %21, align 4
  br label %121

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 2
  %120 = load %struct.addrinfo*, %struct.addrinfo** %119, align 8
  store %struct.addrinfo* %120, %struct.addrinfo** %19, align 8
  br label %102

121:                                              ; preds = %115, %102
  %122 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %123 = call i32 @freeaddrinfo(%struct.addrinfo* %122)
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %128 = load i64, i64* @errno, align 8
  %129 = call i8* @strerror(i64 %128)
  %130 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %127, i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %134 = call i32 @__redisSetError(%struct.TYPE_8__* %131, i32 %132, i8* %133)
  br label %210

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %84
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %142 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @connect(i32 %137, i32 %140, i32 %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %171

146:                                              ; preds = %136
  %147 = load i64, i64* @errno, align 8
  %148 = load i64, i64* @EHOSTUNREACH, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = call i32 @redisContextCloseFd(%struct.TYPE_8__* %151)
  br label %193

153:                                              ; preds = %146
  %154 = load i64, i64* @errno, align 8
  %155 = load i64, i64* @EINPROGRESS, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %20, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %169

161:                                              ; preds = %157, %153
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %163 = load %struct.timeval*, %struct.timeval** %10, align 8
  %164 = call i32 @redisContextWaitReady(%struct.TYPE_8__* %162, %struct.timeval* %163)
  %165 = load i32, i32* @REDIS_OK, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %210

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %160
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170, %136
  %172 = load i32, i32* %20, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = call i32 @redisSetBlocking(%struct.TYPE_8__* %175, i32 1)
  %177 = load i32, i32* @REDIS_OK, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %210

180:                                              ; preds = %174, %171
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %182 = call i32 @redisSetTcpNoDelay(%struct.TYPE_8__* %181)
  %183 = load i32, i32* @REDIS_OK, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %210

186:                                              ; preds = %180
  %187 = load i32, i32* @REDIS_CONNECTED, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* @REDIS_OK, align 4
  store i32 %192, i32* %13, align 4
  br label %212

193:                                              ; preds = %150, %74
  %194 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %195 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %194, i32 0, i32 2
  %196 = load %struct.addrinfo*, %struct.addrinfo** %195, align 8
  store %struct.addrinfo* %196, %struct.addrinfo** %18, align 8
  br label %59

197:                                              ; preds = %59
  %198 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %199 = icmp eq %struct.addrinfo* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %202 = load i64, i64* @errno, align 8
  %203 = call i8* @strerror(i64 %202)
  %204 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %201, i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %203)
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %207 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %208 = call i32 @__redisSetError(%struct.TYPE_8__* %205, i32 %206, i8* %207)
  br label %210

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209, %200, %185, %179, %167, %126, %91, %83
  %211 = load i32, i32* @REDIS_ERR, align 4
  store i32 %211, i32* %13, align 4
  br label %212

212:                                              ; preds = %210, %186
  %213 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %214 = call i32 @freeaddrinfo(%struct.addrinfo* %213)
  %215 = load i32, i32* %13, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %212, %49
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @__redisSetError(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @redisSetBlocking(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bind(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @redisContextCloseFd(%struct.TYPE_8__*) #1

declare dso_local i32 @redisContextWaitReady(%struct.TYPE_8__*, %struct.timeval*) #1

declare dso_local i32 @redisSetTcpNoDelay(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
