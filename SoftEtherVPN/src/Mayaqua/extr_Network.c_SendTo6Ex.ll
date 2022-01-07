; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SendTo6Ex.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SendTo6Ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@SOCK_UDP = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
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
define dso_local i32 @SendTo6Ex(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in6, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %6
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35, %27, %24
  store i32 0, i32* %7, align 4
  br label %187

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %43, 65536
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %187

51:                                               ; preds = %45, %42
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOCK_UDP, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @INVALID_SOCKET, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %51
  store i32 0, i32* %7, align 4
  br label %187

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %187

68:                                               ; preds = %64
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = call i32 @IsIP6(%struct.TYPE_9__* %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %187

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %14, align 8
  %77 = call i32 @Zero(%struct.sockaddr_in6* %16, i32 16)
  %78 = load i32, i32* @AF_INET6, align 4
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @htons(i32 %85)
  %87 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %73
  %89 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = call i32 @IPToInAddr6(i32* %89, %struct.TYPE_9__* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = call i32 @GetIPAddrType6(%struct.TYPE_9__* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102, %88
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  store i32 1, i32* %18, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  store i32 1, i32* %112, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i32, i32* @SOL_SOCKET, align 4
  %115 = load i32, i32* @SO_BROADCAST, align 4
  %116 = bitcast i32* %18 to i8*
  %117 = call i32 @setsockopt(i64 %113, i32 %114, i32 %115, i8* %116, i32 4)
  br label %118

118:                                              ; preds = %110, %105
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i64, i64* %14, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %12, align 4
  %123 = bitcast %struct.sockaddr_in6* %16 to %struct.sockaddr*
  %124 = call i32 @sendto(i64 %120, i8* %121, i32 %122, i32 0, %struct.sockaddr* %123, i32 16)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %165

128:                                              ; preds = %119
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load i64, i64* @errno, align 8
  %132 = load i64, i64* @ECONNREFUSED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %154, label %134

134:                                              ; preds = %128
  %135 = load i64, i64* @errno, align 8
  %136 = load i64, i64* @ECONNRESET, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %154, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @EMSGSIZE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* @errno, align 8
  %144 = load i64, i64* @ENOBUFS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = load i64, i64* @errno, align 8
  %148 = load i64, i64* @ENOMEM, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* @errno, align 8
  %152 = load i64, i64* @EINTR, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150, %146, %142, %138, %134, %128
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %164

157:                                              ; preds = %150
  %158 = load i64, i64* @errno, align 8
  %159 = load i64, i64* @EAGAIN, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @SOCK_LATER, align 4
  store i32 %162, i32* %7, align 4
  br label %187

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %154
  store i32 0, i32* %7, align 4
  br label %187

165:                                              ; preds = %119
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @Lock(i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %171
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @Unlock(i32 %184)
  %186 = load i32, i32* %15, align 4
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %165, %164, %161, %72, %67, %63, %50, %41
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32 @IsIP6(%struct.TYPE_9__*) #1

declare dso_local i32 @Zero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @IPToInAddr6(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @GetIPAddrType6(%struct.TYPE_9__*) #1

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
