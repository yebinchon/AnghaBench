; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_receive_all_nonblocking.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_receive_all_nonblocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @socket_receive_all_nonblocking(i32 %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @recv(i32 %14, i8* %16, i64 %17, i32 0)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %5, align 8
  br label %36

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  store i32 1, i32* %27, align 4
  store i64 -1, i64* %5, align 8
  br label %36

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @isagain(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %36

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  store i32 1, i32* %35, align 4
  store i64 -1, i64* %5, align 8
  br label %36

36:                                               ; preds = %34, %33, %26, %21
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

declare dso_local i64 @isagain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
