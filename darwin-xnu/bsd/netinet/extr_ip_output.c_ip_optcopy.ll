; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_output.c_ip_optcopy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_output.c_ip_optcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }

@IPOPT_EOL = common dso_local global i32 0, align 4
@IPOPT_NOP = common dso_local global i32 0, align 4
@IPOPT_OLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip*, %struct.ip*)* @ip_optcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_optcopy(%struct.ip* %0, %struct.ip* %1) #0 {
  %3 = alloca %struct.ip*, align 8
  %4 = alloca %struct.ip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip* %0, %struct.ip** %3, align 8
  store %struct.ip* %1, %struct.ip** %4, align 8
  %10 = load %struct.ip*, %struct.ip** %3, align 8
  %11 = getelementptr inbounds %struct.ip, %struct.ip* %10, i64 1
  %12 = bitcast %struct.ip* %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load %struct.ip*, %struct.ip** %4, align 8
  %14 = getelementptr inbounds %struct.ip, %struct.ip* %13, i64 1
  %15 = bitcast %struct.ip* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.ip*, %struct.ip** %3, align 8
  %17 = getelementptr inbounds %struct.ip, %struct.ip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IP_VHL_HL(i32 %18)
  %20 = shl i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %68, %2
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IPOPT_EOL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %76

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IPOPT_NOP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @IPOPT_NOP, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %8, align 4
  br label %68

43:                                               ; preds = %35
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @IPOPT_OLEN, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %43
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @IPOPT_COPIED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @bcopy(i32* %59, i32* %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %6, align 8
  br label %67

67:                                               ; preds = %58, %54
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %5, align 8
  br label %24

76:                                               ; preds = %34, %24
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.ip*, %struct.ip** %4, align 8
  %79 = getelementptr inbounds %struct.ip, %struct.ip* %78, i64 1
  %80 = bitcast %struct.ip* %79 to i32*
  %81 = ptrtoint i32* %77 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %94, %76
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @IPOPT_EOL, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %86

97:                                               ; preds = %86
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @IP_VHL_HL(i32) #1

declare dso_local i64 @IPOPT_COPIED(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
