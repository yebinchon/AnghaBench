; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_send_all_nonblocking.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_send_all_nonblocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_NOSIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @socket_send_all_nonblocking(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %45, %4
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @MSG_NOSIGNAL, align 4
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = call i64 @send(i32 %19, i8* %21, i64 %22, i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @isagain(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %55

39:                                               ; preds = %33
  store i64 -1, i64* %5, align 8
  br label %57

40:                                               ; preds = %28
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %55

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %12, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %11, align 8
  br label %15

55:                                               ; preds = %43, %38, %15
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %55, %39
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i64 @send(i32, i8*, i64, i32) #1

declare dso_local i64 @isagain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
