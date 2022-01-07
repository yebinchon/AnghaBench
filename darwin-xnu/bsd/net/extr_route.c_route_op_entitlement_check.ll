; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_op_entitlement_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_op_entitlement_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@ROUTE_OP_READ = common dso_local global i32 0, align 4
@PRIV_NET_RESTRICTED_ROUTE_NC_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_op_entitlement_check(%struct.socket* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = icmp ne %struct.socket* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ROUTE_OP_READ, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = load i32, i32* @PRIV_NET_RESTRICTED_ROUTE_NC_READ, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @soopt_cred_check(%struct.socket* %18, i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %52

24:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %52

25:                                               ; preds = %13
  br label %51

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @kauth_cred_getuid(i32* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ROUTE_OP_READ, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @PRIV_NET_RESTRICTED_ROUTE_NC_READ, align 4
  %44 = call i64 @priv_check_cred(i32* %42, i32 %43, i32 0)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %52

47:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %25
  store i32 -1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %47, %46, %24, %23
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @soopt_cred_check(%struct.socket*, i32, i32) #1

declare dso_local i64 @kauth_cred_getuid(i32*) #1

declare dso_local i64 @priv_check_cred(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
