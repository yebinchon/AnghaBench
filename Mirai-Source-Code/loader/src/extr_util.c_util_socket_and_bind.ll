; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_util.c_util_socket_and_bind.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_util.c_util_socket_and_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i32, i32* }
%struct.sockaddr_in = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @util_socket_and_bind(%struct.server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.server* %0, %struct.server** %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %78

15:                                               ; preds = %1
  %16 = load i32, i32* @AF_INET, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = call i32 (...) @rand()
  %20 = load %struct.server*, %struct.server** %3, align 8
  %21 = getelementptr inbounds %struct.server, %struct.server* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %19, %22
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %56, %15
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.server*, %struct.server** %3, align 8
  %27 = getelementptr inbounds %struct.server, %struct.server* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.server*, %struct.server** %3, align 8
  %32 = getelementptr inbounds %struct.server, %struct.server* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %42 = call i32 @bind(i32 %40, %struct.sockaddr* %41, i32 24)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %53

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load %struct.server*, %struct.server** %3, align 8
  %48 = getelementptr inbounds %struct.server, %struct.server* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %44
  br label %55

53:                                               ; preds = %30
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %8, align 4
  br label %59

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %24

59:                                               ; preds = %53, %24
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  store i32 -1, i32* %2, align 4
  br label %78

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @F_SETFL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @F_GETFL, align 4
  %70 = call i32 @fcntl(i32 %68, i32 %69, i32 0)
  %71 = load i32, i32* @O_NONBLOCK, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @fcntl(i32 %66, i32 %67, i32 %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %62, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
