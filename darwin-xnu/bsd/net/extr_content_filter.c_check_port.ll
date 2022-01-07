; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_check_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_check_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_port(%struct.sockaddr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %6, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %7, align 8
  %8 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %9 = icmp eq %struct.sockaddr* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %10
  %16 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %59 [
    i32 129, label %19
    i32 128, label %39
  ]

19:                                               ; preds = %15
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = call %struct.sockaddr_in* @satosin(%struct.sockaddr* %20)
  store %struct.sockaddr_in* %21, %struct.sockaddr_in** %6, align 8
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ntohs(i32 %33)
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %29
  br label %60

39:                                               ; preds = %15
  %40 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %41 = call %struct.sockaddr_in6* @satosin6(%struct.sockaddr* %40)
  store %struct.sockaddr_in6* %41, %struct.sockaddr_in6** %7, align 8
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 8
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %39
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %49
  br label %60

59:                                               ; preds = %15
  br label %60

60:                                               ; preds = %59, %58, %38
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %56, %47, %36, %27, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.sockaddr_in* @satosin(%struct.sockaddr*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sockaddr_in6* @satosin6(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
