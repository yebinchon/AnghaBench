; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_makeSockaddr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_makeSockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32* }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_ll = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i8*, i64)* @makeSockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeSockaddr(i32 %0, %struct.sockaddr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %36 [
    i32 130, label %10
    i32 129, label %17
    i32 128, label %24
  ]

10:                                               ; preds = %4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @memcpy(i32* %13, i8* %14, i64 %15)
  br label %43

17:                                               ; preds = %4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in6*
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @memcpy(i32* %20, i8* %21, i64 %22)
  br label %43

24:                                               ; preds = %4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_ll*
  %27 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @memcpy(i32* %28, i8* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = bitcast %struct.sockaddr* %33 to %struct.sockaddr_ll*
  %35 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  br label %43

36:                                               ; preds = %4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memcpy(i32* %39, i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %24, %17, %10
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
