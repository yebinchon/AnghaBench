; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtrequest_scoped_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtrequest_scoped_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rtentry = type { i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@RTF_IFSCOPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtrequest_scoped_locked(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4, %struct.rtentry** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtentry**, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.rtentry** %5, %struct.rtentry*** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFSCOPE_NONE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = load i32, i32* @RTF_IFSCOPE, align 4
  %20 = load i32, i32* %12, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %12, align 4
  br label %27

22:                                               ; preds = %7
  %23 = load i32, i32* @RTF_IFSCOPE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.rtentry**, %struct.rtentry*** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @rtrequest_common_locked(i32 %28, %struct.sockaddr* %29, %struct.sockaddr* %30, %struct.sockaddr* %31, i32 %32, %struct.rtentry** %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @rtrequest_common_locked(i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.rtentry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
