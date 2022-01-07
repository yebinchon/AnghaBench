; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetIP4Inner.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetIP4Inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.in_addr = type { i32 }
%struct.addrinfo = type { i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetIP4Inner(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %82

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @IsEmptyStr(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @StrCmpi(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @SetIP(i32* %26, i32 127, i32 0, i32 0, i32 1)
  store i32 1, i32* %3, align 4
  br label %82

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @StrToIP6(i32* %29, i8* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @StrToIP(i32* %34, i8* %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  %39 = call i32 @Zero(%struct.addrinfo* %8, i32 24)
  %40 = load i64, i64* @AF_INET, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @SOCK_STREAM, align 4
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IPPROTO_TCP, align 4
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @getaddrinfo(i8* %46, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49, %38
  %56 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %57 = icmp ne %struct.addrinfo* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %60 = call i32 @freeaddrinfo(%struct.addrinfo* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @QueryDnsCache(i32* %62, i8* %63)
  store i32 %64, i32* %3, align 4
  br label %82

65:                                               ; preds = %49
  %66 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @Copy(%struct.sockaddr_in* %6, i32* %68, i32 4)
  %70 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %71 = call i32 @freeaddrinfo(%struct.addrinfo* %70)
  %72 = bitcast %struct.in_addr* %7 to %struct.sockaddr_in*
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %74 = call i32 @Copy(%struct.sockaddr_in* %72, i32* %73, i32 4)
  %75 = load i32*, i32** %4, align 8
  %76 = bitcast %struct.in_addr* %7 to %struct.sockaddr_in*
  %77 = call i32 @InAddrToIP(i32* %75, %struct.sockaddr_in* %76)
  br label %78

78:                                               ; preds = %65, %33, %28
  %79 = load i8*, i8** %5, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @NewDnsCache(i8* %79, i32* %80)
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %61, %25, %20, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32 @SetIP(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @StrToIP6(i32*, i8*) #1

declare dso_local i32 @StrToIP(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.addrinfo*, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @QueryDnsCache(i32*, i8*) #1

declare dso_local i32 @Copy(%struct.sockaddr_in*, i32*, i32) #1

declare dso_local i32 @InAddrToIP(i32*, %struct.sockaddr_in*) #1

declare dso_local i32 @NewDnsCache(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
