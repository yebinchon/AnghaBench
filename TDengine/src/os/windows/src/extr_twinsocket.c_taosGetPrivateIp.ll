; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twinsocket.c_taosGetPrivateIp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twinsocket.c_taosGetPrivateIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@GAA_FLAG_SKIP_ANYCAST = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 76, i32 111, i32 111, i32 112, i32 98, i32 97, i32 99, i32 107, i32 0], align 4
@IfOperStatusUp = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Call to GetAdaptersAddresses failed.\0A\00", align 1
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"\09Error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosGetPrivateIp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 100, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %15 = call i32 (...) @taosWinSocketInit()
  %16 = load i64, i64* @AF_UNSPEC, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @GetAdaptersAddresses(i64 %16, i32 0, i32* null, %struct.TYPE_11__* %17, i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @malloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %3, align 8
  %22 = load i64, i64* @AF_INET, align 8
  %23 = load i32, i32* @GAA_FLAG_SKIP_ANYCAST, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = call i32 @GetAdaptersAddresses(i64 %22, i32 %23, i32* null, %struct.TYPE_11__* %24, i32* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @NO_ERROR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %120

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %115, %49, %38, %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %119

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @wcsstr(i32 %35, i8* bitcast ([9 x i32]* @.str to i8*))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %3, align 8
  br label %29

42:                                               ; preds = %32
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IfOperStatusUp, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %3, align 8
  br label %29

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %112, %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %115

60:                                               ; preds = %57
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %60
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = bitcast %struct.TYPE_8__* %73 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %74, %struct.sockaddr_in** %12, align 8
  %75 = load i8*, i8** %2, align 8
  %76 = load i64, i64* @AF_INET, align 8
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 0
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @inet_ntop(i64 %76, i32* %78, i8* %79, i32 %80)
  %82 = call i32 @strcpy(i8* %75, i32 %81)
  store i32 0, i32* %10, align 4
  br label %108

83:                                               ; preds = %60
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AF_INET6, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %83
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = bitcast %struct.TYPE_8__* %96 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %97, %struct.sockaddr_in6** %13, align 8
  %98 = load i8*, i8** %2, align 8
  %99 = load i64, i64* @AF_INET6, align 8
  %100 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %100, i32 0, i32 0
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @inet_ntop(i64 %99, i32* %101, i8* %102, i32 %103)
  %105 = call i32 @strcpy(i8* %98, i32 %104)
  store i32 0, i32* %10, align 4
  br label %107

106:                                              ; preds = %83
  br label %107

107:                                              ; preds = %106, %92
  br label %108

108:                                              ; preds = %107, %69
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %11, align 8
  br label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %57

115:                                              ; preds = %57
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %3, align 8
  br label %29

119:                                              ; preds = %29
  br label %140

120:                                              ; preds = %1
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %123 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @LANG_NEUTRAL, align 4
  %129 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %130 = call i32 @MAKELANGID(i32 %128, i32 %129)
  %131 = ptrtoint i8** %14 to i32
  %132 = call i64 @FormatMessage(i32 %126, i32* null, i32 %127, i32 %130, i32 %131, i32 0, i32* null)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %134, %120
  %138 = load i8*, i8** %14, align 8
  %139 = call i32 @LocalFree(i8* %138)
  br label %140

140:                                              ; preds = %137, %119
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = call i32 @free(%struct.TYPE_11__* %141)
  %143 = load i32, i32* %10, align 4
  ret i32 %143
}

declare dso_local i32 @taosWinSocketInit(...) #1

declare dso_local i32 @GetAdaptersAddresses(i64, i32, i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @wcsstr(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @inet_ntop(i64, i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @FormatMessage(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
