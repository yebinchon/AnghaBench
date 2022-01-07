; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c__inp_restricted_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c__inp_restricted_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.ifnet = type { i32 }

@sorestrictsend = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.ifnet*)* @_inp_restricted_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_inp_restricted_send(%struct.inpcb* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %7 = icmp ne %struct.inpcb* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @VERIFY(i32 %8)
  %10 = load i32, i32* @sorestrictsend, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = icmp eq %struct.ifnet* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %14
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = call i64 @IFNET_IS_CELLULAR(%struct.ifnet* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %25 = call i64 @INP_NO_CELLULAR(%struct.inpcb* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %23, %19
  %30 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %31 = call i64 @IFNET_IS_EXPENSIVE(%struct.ifnet* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %35 = call i64 @INP_NO_EXPENSIVE(%struct.inpcb* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %33, %29
  %40 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %41 = call i64 @IFNET_IS_AWDL_RESTRICTED(%struct.ifnet* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %45 = call i32 @INP_AWDL_UNRESTRICTED(%struct.inpcb* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %61

49:                                               ; preds = %43, %39
  %50 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %51 = call i64 @IFNET_IS_INTCOPROC(%struct.ifnet* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %55 = call i32 @INP_INTCOPROC_ALLOWED(%struct.inpcb* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %53, %49
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %57, %47, %37, %27, %17, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i64 @INP_NO_CELLULAR(%struct.inpcb*) #1

declare dso_local i64 @IFNET_IS_EXPENSIVE(%struct.ifnet*) #1

declare dso_local i64 @INP_NO_EXPENSIVE(%struct.inpcb*) #1

declare dso_local i64 @IFNET_IS_AWDL_RESTRICTED(%struct.ifnet*) #1

declare dso_local i32 @INP_AWDL_UNRESTRICTED(%struct.inpcb*) #1

declare dso_local i64 @IFNET_IS_INTCOPROC(%struct.ifnet*) #1

declare dso_local i32 @INP_INTCOPROC_ALLOWED(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
