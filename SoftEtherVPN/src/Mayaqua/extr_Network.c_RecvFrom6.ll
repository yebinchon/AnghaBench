; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvFrom6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvFrom6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@SOCK_UDP = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@SOCK_LATER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"RecvFrom(): recvfrom() failed with error: %s\0A\00", align 1
@WSAEADDRNOTAVAIL = common dso_local global i64 0, align 8
@WSAECONNRESET = common dso_local global i64 0, align 8
@WSAEHOSTUNREACH = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEMSGSIZE = common dso_local global i64 0, align 8
@WSAENETRESET = common dso_local global i64 0, align 8
@WSAENETUNREACH = common dso_local global i64 0, align 8
@WSAENOBUFS = common dso_local global i64 0, align 8
@WSAEUSERS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RecvFrom6(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_in6, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 12, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %21

20:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %140

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i64*, i64** %9, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %24, %21
  store i64 0, i64* %6, align 8
  br label %140

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SOCK_UDP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INVALID_SOCKET, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  store i64 0, i64* %6, align 8
  br label %140

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = bitcast %struct.sockaddr_in6* %12 to %struct.sockaddr*
  %54 = call i32 @recvfrom(i64 %50, i8* %51, i64 %52, i32 0, %struct.sockaddr* %53, i32* %14)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %47
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 2
  %60 = call i32 @InAddrToIP6(%struct.TYPE_7__* %58, i32* %59)
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ntohs(i32 %66)
  %68 = load i64*, i64** %9, align 8
  store i64 %67, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %57
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @Lock(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @Unlock(i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %6, align 8
  br label %140

101:                                              ; preds = %47
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @ECONNREFUSED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %125, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* @errno, align 8
  %107 = load i64, i64* @ECONNRESET, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @EMSGSIZE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %125, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* @errno, align 8
  %115 = load i64, i64* @ENOBUFS, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @ENOMEM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @EINTR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121, %117, %113, %109, %105, %101
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  br label %139

128:                                              ; preds = %121
  %129 = load i64, i64* @errno, align 8
  %130 = load i64, i64* @EAGAIN, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i64, i64* @SOCK_LATER, align 8
  store i64 %133, i64* %6, align 8
  br label %140

134:                                              ; preds = %128
  %135 = load i64, i64* @errno, align 8
  %136 = call i64 @strerror(i64 %135)
  %137 = call i32 @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %125
  store i64 0, i64* %6, align 8
  br label %140

140:                                              ; preds = %139, %132, %78, %46, %33, %20
  %141 = load i64, i64* %6, align 8
  ret i64 %141
}

declare dso_local i32 @recvfrom(i64, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @InAddrToIP6(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Debug(i8*, i64) #1

declare dso_local i64 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
