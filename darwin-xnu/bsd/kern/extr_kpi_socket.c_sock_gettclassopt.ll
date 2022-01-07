; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_gettclassopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_gettclassopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.sockopt = type { i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@SOPT_GET = common dso_local global i32 0, align 4
@kernproc = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_TCLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sock_gettclassopt(%struct.TYPE_9__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockopt, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i64*, i64** %7, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %3
  %19 = load i64, i64* @EINVAL, align 8
  store i64 %19, i64* %4, align 8
  br label %78

20:                                               ; preds = %15
  %21 = load i32, i32* @SOPT_GET, align 4
  %22 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @CAST_USER_ADDR_T(i8* %23)
  %25 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @kernproc, align 4
  %30 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = call i32 @socket_lock(%struct.TYPE_9__* %31, i32 1)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %20
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37, %20
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = call i32 @socket_unlock(%struct.TYPE_9__* %45, i32 1)
  %47 = load i64, i64* @EINVAL, align 8
  store i64 %47, i64* %4, align 8
  br label %78

48:                                               ; preds = %37
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = call i32 @SOCK_DOM(%struct.TYPE_9__* %49)
  switch i32 %50, label %61 [
    i32 129, label %51
    i32 128, label %56
  ]

51:                                               ; preds = %48
  %52 = load i32, i32* @IPPROTO_IP, align 4
  %53 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IP_TOS, align 4
  %55 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  br label %65

56:                                               ; preds = %48
  %57 = load i32, i32* @IPPROTO_IPV6, align 4
  %58 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IPV6_TCLASS, align 4
  %60 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  br label %65

61:                                               ; preds = %48
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = call i32 @socket_unlock(%struct.TYPE_9__* %62, i32 1)
  %64 = load i64, i64* @EINVAL, align 8
  store i64 %64, i64* %4, align 8
  br label %78

65:                                               ; preds = %56, %51
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = call i64 @sogetoptlock(%struct.TYPE_9__* %66, %struct.sockopt* %9, i32 0)
  store i64 %67, i64* %8, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = call i32 @socket_unlock(%struct.TYPE_9__* %68, i32 1)
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %76, %61, %44, %18
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @socket_lock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @socket_unlock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SOCK_DOM(%struct.TYPE_9__*) #1

declare dso_local i64 @sogetoptlock(%struct.TYPE_9__*, %struct.sockopt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
