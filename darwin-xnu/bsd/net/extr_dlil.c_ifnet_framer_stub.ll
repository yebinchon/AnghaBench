; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_framer_stub.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_framer_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf**, %struct.sockaddr*, i8*, i8*)* }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_framer_stub(%struct.ifnet* %0, %struct.mbuf** %1, %struct.sockaddr* %2, i8* %3, i8* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %8, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %15 = load i64*, i64** %13, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = load i64*, i64** %13, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %17, %7
  %20 = load i64*, i64** %14, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64*, i64** %14, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32 (%struct.ifnet*, %struct.mbuf**, %struct.sockaddr*, i8*, i8*)*, i32 (%struct.ifnet*, %struct.mbuf**, %struct.sockaddr*, i8*, i8*)** %26, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %29 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 %27(%struct.ifnet* %28, %struct.mbuf** %29, %struct.sockaddr* %30, i8* %31, i8* %32)
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
