; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_getsockopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_getsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOPT_GET = common dso_local global i32 0, align 4
@kernproc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_getsockopt(i32* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockopt, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %5
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %49

24:                                               ; preds = %19
  %25 = load i32, i32* @SOPT_GET, align 4
  %26 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @CAST_USER_ADDR_T(i8* %31)
  %33 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @kernproc, align 4
  %38 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @sogetoptlock(i32* %39, %struct.sockopt* %13, i32 1)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %24
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %22
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @sogetoptlock(i32*, %struct.sockopt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
