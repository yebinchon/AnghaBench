; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_addr2string.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_addr2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@MAX_IPADR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_addr2string(%struct.sockaddr* %0, i32 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i16, align 2
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %39 [
    i32 130, label %16
  ]

16:                                               ; preds = %4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = bitcast %struct.sockaddr* %17 to i8*
  %19 = bitcast i8* %18 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %10, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 1
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @MAX_IPADR_LEN, align 4
  %27 = call i32 @Curl_inet_ntop(i32 %22, i32* %24, i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %16
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call zeroext i16 @ntohs(i32 %32)
  store i16 %33, i16* %11, align 2
  %34 = load i16, i16* %11, align 2
  %35 = zext i16 %34 to i64
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %5, align 4
  br label %46

38:                                               ; preds = %16
  br label %40

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 1
  %43 = load i64*, i64** %9, align 8
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %44, i32* @errno, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %29
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @Curl_inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local zeroext i16 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
