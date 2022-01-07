; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_functional_type.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_functional_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64, i32, i64, i64 }

@IFRTYPE_FUNCTIONAL_UNKNOWN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_LOOPBACK = common dso_local global i32 0, align 4
@IFNET_SUBFAMILY_WIFI = common dso_local global i64 0, align 8
@IFEF_AWDL = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_WIFI_AWDL = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_WIFI_INFRA = common dso_local global i32 0, align 4
@IFT_CELLULAR = common dso_local global i64 0, align 8
@IFRTYPE_FUNCTIONAL_CELLULAR = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_INTCOPROC = common dso_local global i32 0, align 4
@IFNET_FAMILY_ETHERNET = common dso_local global i64 0, align 8
@IFNET_FAMILY_BOND = common dso_local global i64 0, align 8
@IFNET_FAMILY_VLAN = common dso_local global i64 0, align 8
@IFNET_FAMILY_FIREWIRE = common dso_local global i64 0, align 8
@IFRTYPE_FUNCTIONAL_WIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_functional_type(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @IFRTYPE_FUNCTIONAL_UNKNOWN, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = icmp ne %struct.ifnet* %7, null
  br i1 %8, label %9, label %111

9:                                                ; preds = %2
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_LOOPBACK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @IFRTYPE_FUNCTIONAL_LOOPBACK, align 4
  store i32 %17, i32* %5, align 4
  br label %110

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IFNET_SUBFAMILY_WIFI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %32 = call i64 @IFNET_IS_WIFI(%struct.ifnet* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %21
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IFEF_AWDL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @IFRTYPE_FUNCTIONAL_WIFI_AWDL, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @IFRTYPE_FUNCTIONAL_WIFI_INFRA, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %109

46:                                               ; preds = %30, %27
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IFT_CELLULAR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = call i64 @IFNET_IS_CELLULAR(%struct.ifnet* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %49
  %63 = load i32, i32* @IFRTYPE_FUNCTIONAL_CELLULAR, align 4
  store i32 %63, i32* %5, align 4
  br label %108

64:                                               ; preds = %58, %55
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = call i64 @IFNET_IS_INTCOPROC(%struct.ifnet* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @IFRTYPE_FUNCTIONAL_INTCOPROC, align 4
  store i32 %69, i32* %5, align 4
  br label %107

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IFNET_FAMILY_ETHERNET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %104, label %79

79:                                               ; preds = %73
  %80 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IFNET_FAMILY_BOND, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %104, label %85

85:                                               ; preds = %79
  %86 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IFNET_FAMILY_VLAN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %104, label %91

91:                                               ; preds = %85
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IFNET_FAMILY_FIREWIRE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %91, %70
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %102 = call i64 @IFNET_IS_WIRED(%struct.ifnet* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100, %91, %85, %79, %73
  %105 = load i32, i32* @IFRTYPE_FUNCTIONAL_WIRED, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %100, %97
  br label %107

107:                                              ; preds = %106, %68
  br label %108

108:                                              ; preds = %107, %62
  br label %109

109:                                              ; preds = %108, %45
  br label %110

110:                                              ; preds = %109, %16
  br label %111

111:                                              ; preds = %110, %2
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i64 @IFNET_IS_WIFI(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_INTCOPROC(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIRED(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
