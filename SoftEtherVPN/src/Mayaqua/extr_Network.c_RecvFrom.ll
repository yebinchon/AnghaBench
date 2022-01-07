; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvFrom.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.sockaddr_in = type { i32, i32 }
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
define dso_local i64 @RecvFrom(%struct.TYPE_4__* %0, i32* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 8, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @RecvFrom6(%struct.TYPE_4__* %23, i32* %24, i64* %25, i8* %26, i64 %27)
  store i64 %28, i64* %6, align 8
  br label %148

29:                                               ; preds = %17
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %33

32:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %148

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i64*, i64** %9, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %36, %33
  store i64 0, i64* %6, align 8
  br label %148

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SOCK_UDP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INVALID_SOCKET, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46
  store i64 0, i64* %6, align 8
  br label %148

59:                                               ; preds = %52
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %66 = call i32 @recvfrom(i64 %62, i8* %63, i64 %64, i32 0, %struct.sockaddr* %65, i32* %14)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %59
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %72 = call i32 @InAddrToIP(i32* %70, i32* %71)
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ntohs(i32 %74)
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %69
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %9, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %69
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @Lock(i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @Unlock(i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %6, align 8
  br label %148

109:                                              ; preds = %59
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @ECONNREFUSED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %133, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* @errno, align 8
  %115 = load i64, i64* @ECONNRESET, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %133, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EMSGSIZE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %133, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @ENOBUFS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* @errno, align 8
  %127 = load i64, i64* @ENOMEM, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* @errno, align 8
  %131 = load i64, i64* @EINTR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129, %125, %121, %117, %113, %109
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %147

136:                                              ; preds = %129
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @EAGAIN, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i64, i64* @SOCK_LATER, align 8
  store i64 %141, i64* %6, align 8
  br label %148

142:                                              ; preds = %136
  %143 = load i64, i64* @errno, align 8
  %144 = call i64 @strerror(i64 %143)
  %145 = call i32 @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %133
  store i64 0, i64* %6, align 8
  br label %148

148:                                              ; preds = %147, %140, %86, %58, %45, %32, %22
  %149 = load i64, i64* %6, align 8
  ret i64 %149
}

declare dso_local i64 @RecvFrom6(%struct.TYPE_4__*, i32*, i64*, i8*, i64) #1

declare dso_local i32 @recvfrom(i64, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @InAddrToIP(i32*, i32*) #1

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
