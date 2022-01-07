; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_change_icmp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_change_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_addr*, i32*, %struct.pf_addr*, %struct.pf_addr*, i32, i32*, i32*, i32*, i32*, i32, i32)* @pf_change_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_change_icmp(%struct.pf_addr* %0, i32* %1, %struct.pf_addr* %2, %struct.pf_addr* %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.pf_addr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.pf_addr*, align 8
  %15 = alloca %struct.pf_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.pf_addr, align 8
  %24 = alloca %struct.pf_addr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.pf_addr* %0, %struct.pf_addr** %12, align 8
  store i32* %1, i32** %13, align 8
  store %struct.pf_addr* %2, %struct.pf_addr** %14, align 8
  store %struct.pf_addr* %3, %struct.pf_addr** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %27 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %28 = load i32, i32* %22, align 4
  %29 = call i32 @PF_ACPY(%struct.pf_addr* %23, %struct.pf_addr* %27, i32 %28)
  %30 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %31 = load i32, i32* %22, align 4
  %32 = call i32 @PF_ACPY(%struct.pf_addr* %24, %struct.pf_addr* %30, i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %76

35:                                               ; preds = %11
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %38 = load i32*, i32** %17, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %26, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %16, align 4
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %17, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %25, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @pf_cksum_fixup(i32 %50, i32 %51, i32 %53, i32 %54)
  %56 = load i32*, i32** %17, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32*, i32** %19, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %25, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pf_cksum_fixup(i32 %59, i32 %60, i32 %62, i32 0)
  %64 = load i32*, i32** %19, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %17, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %26, align 4
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pf_cksum_fixup(i32 %69, i32 %70, i32 %72, i32 0)
  %74 = load i32*, i32** %19, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %57
  br label %76

76:                                               ; preds = %75, %11
  %77 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %78 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %79 = load i32, i32* %22, align 4
  %80 = call i32 @PF_ACPY(%struct.pf_addr* %77, %struct.pf_addr* %78, i32 %79)
  %81 = load i32, i32* %22, align 4
  switch i32 %81, label %82 [
  ]

82:                                               ; preds = %76
  %83 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %84 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %85 = load i32, i32* %22, align 4
  %86 = call i32 @PF_ACPY(%struct.pf_addr* %83, %struct.pf_addr* %84, i32 %85)
  %87 = load i32, i32* %22, align 4
  switch i32 %87, label %88 [
  ]

88:                                               ; preds = %82
  ret void
}

declare dso_local i32 @PF_ACPY(%struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local i32 @pf_cksum_fixup(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
