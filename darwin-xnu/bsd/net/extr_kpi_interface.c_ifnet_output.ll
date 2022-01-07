; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_output(i32* %0, i64 %1, i32* %2, i8* %3, %struct.sockaddr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17, %14, %5
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @mbuf_freem_list(i32* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %35

28:                                               ; preds = %17
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %34 = call i32 @dlil_output(i32* %29, i64 %30, i32* %31, i8* %32, %struct.sockaddr* %33, i32 0, i32* null)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %26
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @mbuf_freem_list(i32*) #1

declare dso_local i32 @dlil_output(i32*, i64, i32*, i8*, %struct.sockaddr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
