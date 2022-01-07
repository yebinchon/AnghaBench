; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_os400_recvfrom.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_os400_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_os400_recvfrom(i32 %0, i8* %1, i32 %2, i32 %3, %struct.sockaddr* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_storage, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 8, i32* %16, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %18 = icmp ne %struct.sockaddr* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i32*, i32** %13, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22, %19, %6
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @recvfrom(i32 %27, i8* %28, i32 %29, i32 %30, %struct.sockaddr* %31, i32* %32)
  store i32 %33, i32* %7, align 4
  br label %68

34:                                               ; preds = %22
  %35 = load i64, i64* @AF_UNSPEC, align 8
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  %42 = call i32 @recvfrom(i32 %37, i8* %38, i32 %39, i32 %40, %struct.sockaddr* %41, i32* %16)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %68

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AF_UNSPEC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  br label %64

53:                                               ; preds = %47
  %54 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @sockaddr2ascii(%struct.sockaddr* %54, i32 %56, %struct.sockaddr_storage* %15, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %68

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %16, align 4
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %61, %45, %26
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @sockaddr2ascii(%struct.sockaddr*, i32, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
