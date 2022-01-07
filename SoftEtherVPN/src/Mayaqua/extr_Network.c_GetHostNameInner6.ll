; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostNameInner6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostNameInner6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetHostNameInner6(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %54

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @IPToInAddr6(%struct.in6_addr* %8, i32* %25)
  %27 = call i32 @Zero(%struct.sockaddr_in6* %9, i32 24)
  %28 = load i32, i32* @AF_INET6, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  %31 = call i32 @Copy(i32* %30, %struct.in6_addr* %8, i32 4)
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  %34 = trunc i64 %15 to i32
  %35 = call i64 @getnameinfo(%struct.sockaddr* %33, i32 24, i8* %17, i32 %34, i32* null, i32 0, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %54

38:                                               ; preds = %24
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @IPToStr(i8* %39, i32 256, i32* %40)
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %43 = call i64 @StrCmpi(i8* %17, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %54

46:                                               ; preds = %38
  %47 = call i64 @IsEmptyStr(i8* %17)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @StrCpy(i8* %51, i32 %52, i8* %17)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %49, %45, %37, %23
  %55 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPToInAddr6(%struct.in6_addr*, i32*) #2

declare dso_local i32 @Zero(%struct.sockaddr_in6*, i32) #2

declare dso_local i32 @Copy(i32*, %struct.in6_addr*, i32) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i64 @StrCmpi(i8*, i8*) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
