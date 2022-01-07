; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_do_nat64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_do_nat64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state_key = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pf_pdesc = type { i64, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@PF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state_key*, %struct.pf_pdesc*, i32*, i32)* @pf_do_nat64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_do_nat64(%struct.pf_state_key* %0, %struct.pf_pdesc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_state_key*, align 8
  %7 = alloca %struct.pf_pdesc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.pf_state_key* %0, %struct.pf_state_key** %6, align 8
  store %struct.pf_pdesc* %1, %struct.pf_pdesc** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %11 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %4
  %16 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %17 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %20 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %25 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %29 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %31 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %35 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %49

36:                                               ; preds = %15
  %37 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %38 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %42 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %44 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %48 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %36, %23
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %53 = call i32 @pf_nat64_ipv4(i32* %50, i32 %51, %struct.pf_pdesc* %52)
  store i32 %53, i32* %5, align 4
  br label %102

54:                                               ; preds = %4
  %55 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %56 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_INET6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %54
  %61 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %62 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %65 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %70 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %74 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %76 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %80 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %94

81:                                               ; preds = %60
  %82 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %83 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %87 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %89 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %93 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %81, %68
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %98 = call i32 @pf_nat64_ipv6(i32* %95, i32 %96, %struct.pf_pdesc* %97)
  store i32 %98, i32* %5, align 4
  br label %102

99:                                               ; preds = %54
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* @PF_DROP, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %94, %49
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @pf_nat64_ipv4(i32*, i32, %struct.pf_pdesc*) #1

declare dso_local i32 @pf_nat64_ipv6(i32*, i32, %struct.pf_pdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
