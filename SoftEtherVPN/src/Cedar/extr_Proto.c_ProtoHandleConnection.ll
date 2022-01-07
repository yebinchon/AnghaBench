; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto.c_ProtoHandleConnection.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto.c_ProtoHandleConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 (...)*, i32 (i8**, %struct.TYPE_24__*, i32*, i32*)*, i32 (i8*, %struct.TYPE_20__*, i32*)*, i32 (i8*)*, i64 (i8*)*, i32 (i8*)*, i32 (i8*, i32)*, i32 (...)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }

@OPENVPN_NEW_SESSION_DEADLINE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"ProtoHandleConnection(): unrecognized protocol\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"OpenVPN\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"ProtoHandleConnection(): OpenVPN detected, but it's disabled\0A\00", align 1
@PROTO_MODE_TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"ProtoHandleConnection(): failed to initialize %s\0A\00", align 1
@TIMEOUT_INFINITE = common dso_local global i32 0, align 4
@PROTO_TCP_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"ProtoHandleConnection(): entering main loop\0A\00", align 1
@SOCK_LATER = common dso_local global i64 0, align 8
@MAX_BUFFERING_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [81 x i8] c"ProtoHandleConnection(): I waited too much for the session to start, I give up!\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"ProtoHandleConnection(): implementation not OK, stopping the server\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"ProtoHandleConnection(): breaking main loop\0A\00", align 1
@UDPLISTENER_WAIT_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProtoHandleConnection(%struct.TYPE_24__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %19 = call i64 (...) @Tick64()
  %20 = load i64, i64* @OPENVPN_NEW_SESSION_DEADLINE_TIMEOUT, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = icmp eq %struct.TYPE_24__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %234

28:                                               ; preds = %24
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = call %struct.TYPE_23__* @ProtoDetect(%struct.TYPE_21__* %29)
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %8, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %32 = icmp eq %struct.TYPE_23__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %234

35:                                               ; preds = %28
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %7, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 7
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = call i32 (...) %41()
  %43 = call i64 @StrCmp(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %234

54:                                               ; preds = %45, %35
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32 (...)*, i32 (...)** %56, align 8
  %58 = call i32 (...) %57()
  %59 = load i32, i32* @PROTO_MODE_TCP, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %234

63:                                               ; preds = %54
  %64 = call i32* (...) @NewInterruptManager()
  store i32* %64, i32** %12, align 8
  %65 = call i32* (...) @NewSockEvent()
  store i32* %65, i32** %13, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32 (i8**, %struct.TYPE_24__*, i32*, i32*)*, i32 (i8**, %struct.TYPE_24__*, i32*, i32*)** %67, align 8
  %69 = icmp ne i32 (i8**, %struct.TYPE_24__*, i32*, i32*)* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load i32 (i8**, %struct.TYPE_24__*, i32*, i32*)*, i32 (i8**, %struct.TYPE_24__*, i32*, i32*)** %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 %73(i8** %6, %struct.TYPE_24__* %74, i32* %75, i32* %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 7
  %82 = load i32 (...)*, i32 (...)** %81, align 8
  %83 = call i32 (...) %82()
  %84 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @FreeInterruptManager(i32* %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @ReleaseSockEvent(i32* %87)
  store i32 0, i32* %3, align 4
  br label %234

89:                                               ; preds = %70, %63
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = load i32, i32* @TIMEOUT_INFINITE, align 4
  %92 = call i32 @SetTimeout(%struct.TYPE_21__* %90, i32 %91)
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @JoinSockToSockEvent(%struct.TYPE_21__* %93, i32* %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.TYPE_20__* @NewTcpRawData(i32* %97, i32 %100, i32* %102, i32 %105)
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %10, align 8
  %107 = call i32* (...) @NewFifoFast()
  store i32* %107, i32** %11, align 8
  %108 = load i32, i32* @PROTO_TCP_BUFFER_SIZE, align 4
  %109 = call i32* @Malloc(i32 %108)
  store i32* %109, i32** %9, align 8
  %110 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %89, %209
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %111, %133
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* @PROTO_TCP_BUFFER_SIZE, align 4
  %116 = call i64 @Recv(%struct.TYPE_21__* %113, i32* %114, i32 %115, i32 0)
  store i64 %116, i64* %17, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* @SOCK_LATER, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %134

121:                                              ; preds = %112
  %122 = load i64, i64* %17, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 1, i32* %16, align 4
  br label %134

125:                                              ; preds = %121
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = load i64, i64* %17, align 8
  %131 = call i32 @WriteFifo(i32 %128, i32* %129, i64 %130)
  br label %132

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132
  br label %112

134:                                              ; preds = %124, %120
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 2
  %137 = load i32 (i8*, %struct.TYPE_20__*, i32*)*, i32 (i8*, %struct.TYPE_20__*, i32*)** %136, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 %137(i8* %138, %struct.TYPE_20__* %139, i32* %140)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i32 1, i32* %16, align 4
  br label %144

144:                                              ; preds = %143, %134
  br label %145

145:                                              ; preds = %169, %144
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @FifoSize(i32* %146)
  %148 = icmp sge i32 %147, 1
  br i1 %148, label %149, label %170

149:                                              ; preds = %145
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @FifoPtr(i32* %151)
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @FifoSize(i32* %153)
  %155 = call i64 @Send(%struct.TYPE_21__* %150, i32 %152, i32 %154, i32 0)
  store i64 %155, i64* %18, align 8
  %156 = load i64, i64* %18, align 8
  %157 = load i64, i64* @SOCK_LATER, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %170

160:                                              ; preds = %149
  %161 = load i64, i64* %18, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 1, i32* %16, align 4
  br label %170

164:                                              ; preds = %160
  %165 = load i32*, i32** %11, align 8
  %166 = load i64, i64* %18, align 8
  %167 = call i32 @ReadFifo(i32* %165, i32* null, i64 %166)
  br label %168

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168
  br label %145

170:                                              ; preds = %163, %159, %145
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 6
  %173 = load i32 (i8*, i32)*, i32 (i8*, i32)** %172, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @FifoSize(i32* %175)
  %177 = load i32, i32* @MAX_BUFFERING_PACKET_SIZE, align 4
  %178 = icmp sgt i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 %173(i8* %174, i32 %179)
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 3
  %183 = load i32 (i8*)*, i32 (i8*)** %182, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = call i32 %183(i8* %184)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %170
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 4
  %190 = load i64 (i8*)*, i64 (i8*)** %189, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = call i64 %190(i8* %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = call i64 (...) @Tick64()
  %196 = load i64, i64* %14, align 8
  %197 = icmp sge i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %200

200:                                              ; preds = %198, %194
  br label %203

201:                                              ; preds = %187
  %202 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %203

203:                                              ; preds = %201, %200
  br label %204

204:                                              ; preds = %203, %170
  %205 = load i32, i32* %16, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %218

209:                                              ; preds = %204
  %210 = load i32*, i32** %12, align 8
  %211 = call i64 @GetNextIntervalForInterrupt(i32* %210)
  store i64 %211, i64* %15, align 8
  %212 = load i64, i64* %15, align 8
  %213 = load i32, i32* @UDPLISTENER_WAIT_INTERVAL, align 4
  %214 = call i64 @MIN(i64 %212, i32 %213)
  store i64 %214, i64* %15, align 8
  %215 = load i32*, i32** %13, align 8
  %216 = load i64, i64* %15, align 8
  %217 = call i32 @WaitSockEvent(i32* %215, i64 %216)
  br label %111

218:                                              ; preds = %207
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 5
  %221 = load i32 (i8*)*, i32 (i8*)** %220, align 8
  %222 = load i8*, i8** %6, align 8
  %223 = call i32 %221(i8* %222)
  %224 = load i32*, i32** %12, align 8
  %225 = call i32 @FreeInterruptManager(i32* %224)
  %226 = load i32*, i32** %13, align 8
  %227 = call i32 @ReleaseSockEvent(i32* %226)
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %229 = call i32 @FreeTcpRawData(%struct.TYPE_20__* %228)
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 @ReleaseFifo(i32* %230)
  %232 = load i32*, i32** %9, align 8
  %233 = call i32 @Free(i32* %232)
  store i32 1, i32* %3, align 4
  br label %234

234:                                              ; preds = %218, %79, %62, %52, %33, %27
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i64 @Tick64(...) #1

declare dso_local %struct.TYPE_23__* @ProtoDetect(%struct.TYPE_21__*) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i64 @StrCmp(i32, i8*) #1

declare dso_local i32* @NewInterruptManager(...) #1

declare dso_local i32* @NewSockEvent(...) #1

declare dso_local i32 @FreeInterruptManager(i32*) #1

declare dso_local i32 @ReleaseSockEvent(i32*) #1

declare dso_local i32 @SetTimeout(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @JoinSockToSockEvent(%struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_20__* @NewTcpRawData(i32*, i32, i32*, i32) #1

declare dso_local i32* @NewFifoFast(...) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i64 @Recv(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @WriteFifo(i32, i32*, i64) #1

declare dso_local i32 @FifoSize(i32*) #1

declare dso_local i64 @Send(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @FifoPtr(i32*) #1

declare dso_local i32 @ReadFifo(i32*, i32*, i64) #1

declare dso_local i64 @GetNextIntervalForInterrupt(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @WaitSockEvent(i32*, i64) #1

declare dso_local i32 @FreeTcpRawData(%struct.TYPE_20__*) #1

declare dso_local i32 @ReleaseFifo(i32*) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
