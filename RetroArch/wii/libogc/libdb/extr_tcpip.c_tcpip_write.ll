; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpip_sock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@UIP_ERR_OK = common dso_local global i64 0, align 8
@UIP_TF_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcpip_write(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tcpip_sock*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.tcpip_sock* @tcpip_getsocket(i32 %12)
  store %struct.tcpip_sock* %13, %struct.tcpip_sock** %11, align 8
  %14 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %15 = icmp ne %struct.tcpip_sock* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %86

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %76, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %24, %21
  %23 = call i32 (...) @__tcpip_poll()
  br label %24

24:                                               ; preds = %22
  %25 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %26 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i64 @uip_tcp_sndbuf(%struct.TYPE_4__* %27)
  store i64 %28, i64* %9, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %22, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %10, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %40 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @uip_tcp_write(%struct.TYPE_4__* %41, i8* %42, i64 %43, i32 1)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @UIP_ERR_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %38
  %49 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %50 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %57 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @UIP_TF_NODELAY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %66 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %64, %55, %48
  %72 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %73 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @uip_tcpoutput(%struct.TYPE_4__* %74)
  br label %76

76:                                               ; preds = %71, %64, %38
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr i8, i8* %77, i64 %78
  store i8* %79, i8** %6, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %7, align 8
  br label %18

83:                                               ; preds = %18
  %84 = load i64, i64* @UIP_ERR_OK, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %16
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.tcpip_sock* @tcpip_getsocket(i32) #1

declare dso_local i32 @__tcpip_poll(...) #1

declare dso_local i64 @uip_tcp_sndbuf(%struct.TYPE_4__*) #1

declare dso_local i64 @uip_tcp_write(%struct.TYPE_4__*, i8*, i64, i32) #1

declare dso_local i32 @uip_tcpoutput(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
