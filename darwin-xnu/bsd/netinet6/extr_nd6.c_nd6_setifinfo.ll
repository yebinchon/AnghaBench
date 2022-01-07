; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_setifinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_setifinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@ND6_IFF_PROXY_PREFIXES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_setifinfo(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @nd6_if_disable(%struct.ifnet* %30, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %74

40:                                               ; preds = %29, %19
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ND6_IFF_PROXY_PREFIXES, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ND6_IFF_PROXY_PREFIXES, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ND6_IFF_PROXY_PREFIXES, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ND6_IFF_PROXY_PREFIXES, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %51
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @nd6_if_prproxy(%struct.ifnet* %62, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %74

72:                                               ; preds = %61, %51
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %71, %39
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i32 @nd6_if_disable(%struct.ifnet*, i32) #1

declare dso_local i32 @nd6_if_prproxy(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
