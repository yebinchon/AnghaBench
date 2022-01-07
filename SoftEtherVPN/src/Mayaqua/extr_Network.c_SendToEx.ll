; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SendToEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SendToEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@SOCK_UDP = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@SOCK_LATER = common dso_local global i32 0, align 4
@WSAEADDRNOTAVAIL = common dso_local global i64 0, align 8
@WSAECONNRESET = common dso_local global i64 0, align 8
@WSAEHOSTUNREACH = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEINVAL = common dso_local global i64 0, align 8
@WSAEMSGSIZE = common dso_local global i64 0, align 8
@WSAENETRESET = common dso_local global i64 0, align 8
@WSAENETUNREACH = common dso_local global i64 0, align 8
@WSAENOBUFS = common dso_local global i64 0, align 8
@WSAEUSERS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendToEx(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %6
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = icmp eq %struct.TYPE_10__* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %29
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %26, %23
  store i32 0, i32* %7, align 4
  br label %230

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 65536
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %230

50:                                               ; preds = %44, %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SOCK_UDP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @INVALID_SOCKET, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50
  store i32 0, i32* %7, align 4
  br label %230

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %230

67:                                               ; preds = %63
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @SendTo6Ex(%struct.TYPE_9__* %73, %struct.TYPE_10__* %74, i32 %75, i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %230

80:                                               ; preds = %67
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = call i32 @IsIP4(%struct.TYPE_10__* %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %230

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  %89 = call i32 @Zero(%struct.sockaddr_in* %16, i32 12)
  %90 = load i32, i32* @AF_INET, align 4
  %91 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @htons(i32 %97)
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %85
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = call i32 @IPToInAddr(i32* %101, %struct.TYPE_10__* %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 255
  br i1 %109, label %110, label %131

110:                                              ; preds = %100
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 255
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 255
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 255
  br i1 %130, label %148, label %131

131:                                              ; preds = %124, %117, %110, %100
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %136, 224
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sle i32 %143, 239
  br i1 %144, label %148, label %145

145:                                              ; preds = %138, %131
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145, %138, %124
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  store i32 1, i32* %17, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  store i32 1, i32* %155, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load i32, i32* @SOL_SOCKET, align 4
  %158 = load i32, i32* @SO_BROADCAST, align 4
  %159 = bitcast i32* %17 to i8*
  %160 = call i32 @setsockopt(i64 %156, i32 %157, i32 %158, i8* %159, i32 4)
  br label %161

161:                                              ; preds = %153, %148
  br label %162

162:                                              ; preds = %161, %145
  %163 = load i64, i64* %14, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = load i32, i32* %12, align 4
  %166 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %167 = call i32 @sendto(i64 %163, i8* %164, i32 %165, i32 0, %struct.sockaddr* %166, i32 12)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %208

171:                                              ; preds = %162
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load i64, i64* @errno, align 8
  %175 = load i64, i64* @ECONNREFUSED, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %197, label %177

177:                                              ; preds = %171
  %178 = load i64, i64* @errno, align 8
  %179 = load i64, i64* @ECONNRESET, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %197, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* @errno, align 8
  %183 = load i64, i64* @EMSGSIZE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %197, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* @errno, align 8
  %187 = load i64, i64* @ENOBUFS, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* @errno, align 8
  %191 = load i64, i64* @ENOMEM, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i64, i64* @errno, align 8
  %195 = load i64, i64* @EINTR, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193, %189, %185, %181, %177, %171
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  br label %207

200:                                              ; preds = %193
  %201 = load i64, i64* @errno, align 8
  %202 = load i64, i64* @EAGAIN, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @SOCK_LATER, align 4
  store i32 %205, i32* %7, align 4
  br label %230

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %197
  store i32 0, i32* %7, align 4
  br label %230

208:                                              ; preds = %162
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @Lock(i32 %211)
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %214
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 4
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @Unlock(i32 %227)
  %229 = load i32, i32* %15, align 4
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %208, %207, %204, %84, %72, %66, %62, %49, %40
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i32 @SendTo6Ex(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*, i32, i32) #1

declare dso_local i32 @IsIP4(%struct.TYPE_10__*) #1

declare dso_local i32 @Zero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @IPToInAddr(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @sendto(i64, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
