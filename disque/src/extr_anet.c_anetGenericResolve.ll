; ModuleID = '/home/carl/AnghaBench/disque/src/extr_anet.c_anetGenericResolve.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_anet.c_anetGenericResolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i64, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@ANET_IP_ONLY = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ANET_ERR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@ANET_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anetGenericResolve(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 24)
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @ANET_IP_ONLY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @AI_NUMERICHOST, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i64, i64* @AF_UNSPEC, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @getaddrinfo(i8* %30, i32* null, %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @gai_strerror(i32 %35)
  %37 = call i32 @anetSetError(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ANET_ERR, align 4
  store i32 %38, i32* %6, align 4
  br label %71

39:                                               ; preds = %25
  %40 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %49, %struct.sockaddr_in** %15, align 8
  %50 = load i64, i64* @AF_INET, align 8
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 0
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @inet_ntop(i64 %50, i32* %52, i8* %53, i64 %54)
  br label %67

56:                                               ; preds = %39
  %57 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %60, %struct.sockaddr_in6** %16, align 8
  %61 = load i64, i64* @AF_INET6, align 8
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 0
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @inet_ntop(i64 %61, i32* %63, i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %56, %45
  %68 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %69 = call i32 @freeaddrinfo(%struct.addrinfo* %68)
  %70 = load i32, i32* @ANET_OK, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %33
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @anetSetError(i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @inet_ntop(i64, i32*, i8*, i64) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
