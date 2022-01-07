; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_if_module.c_ether_check_multi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_if_module.c_ether_check_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32* }
%struct.sockaddr_dl = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ether_check_multi(i32 %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %7 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 129, label %25
  ]

11:                                               ; preds = %2
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %22, i32* %5, align 4
  br label %24

23:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %21
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %27 = ptrtoint %struct.sockaddr* %26 to i64
  %28 = inttoptr i64 %27 to %struct.sockaddr_dl*
  %29 = call i32* @CONST_LLADDR(%struct.sockaddr_dl* %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %35
  br label %39

39:                                               ; preds = %2, %38, %24
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32* @CONST_LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
