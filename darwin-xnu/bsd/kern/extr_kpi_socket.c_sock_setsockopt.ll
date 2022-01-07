; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_setsockopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i32 0, align 4
@kernproc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_setsockopt(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockopt, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i8*, i8** %10, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %36

20:                                               ; preds = %15
  %21 = load i32, i32* @SOPT_SET, align 4
  %22 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @CAST_USER_ADDR_T(i8* %27)
  %29 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @kernproc, align 4
  %33 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @sosetoptlock(i32* %34, %struct.sockopt* %12, i32 1)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @sosetoptlock(i32*, %struct.sockopt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
