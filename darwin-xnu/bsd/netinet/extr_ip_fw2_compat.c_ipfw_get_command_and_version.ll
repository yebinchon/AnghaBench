; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_get_command_and_version.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_get_command_and_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i32, i64, i32, i32 }
%struct.ip_fw_64 = type { i64 }

@IP_FW_VERSION_NONE = common dso_local global i64 0, align 8
@IP_OLD_FW_GET = common dso_local global i32 0, align 4
@IP_FW_VERSION_0 = common dso_local global i64 0, align 8
@IP_FW_GET = common dso_local global i32 0, align 4
@IP_OLD_FW_FLUSH = common dso_local global i32 0, align 4
@IP_FW_FLUSH = common dso_local global i32 0, align 4
@IP_OLD_FW_ZERO = common dso_local global i32 0, align 4
@IP_FW_ZERO = common dso_local global i32 0, align 4
@IP_OLD_FW_ADD = common dso_local global i32 0, align 4
@IP_FW_ADD = common dso_local global i32 0, align 4
@IP_OLD_FW_DEL = common dso_local global i32 0, align 4
@IP_FW_DEL = common dso_local global i32 0, align 4
@IP_OLD_FW_RESETLOG = common dso_local global i32 0, align 4
@IP_FW_RESETLOG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_get_command_and_version(%struct.sockopt* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ip_fw_64, align 8
  %12 = alloca i64, align 8
  store %struct.sockopt* %0, %struct.sockopt** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @IP_FW_VERSION_NONE, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %15 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IP_OLD_FW_GET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* @IP_FW_VERSION_0, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* @IP_FW_GET, align 4
  store i32 %21, i32* %8, align 4
  br label %76

22:                                               ; preds = %3
  %23 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IP_OLD_FW_FLUSH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i64, i64* @IP_FW_VERSION_0, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i32, i32* @IP_FW_FLUSH, align 4
  store i32 %30, i32* %8, align 4
  br label %75

31:                                               ; preds = %22
  %32 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %33 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IP_OLD_FW_ZERO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @IP_FW_VERSION_0, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* @IP_FW_ZERO, align 4
  store i32 %39, i32* %8, align 4
  br label %74

40:                                               ; preds = %31
  %41 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %42 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IP_OLD_FW_ADD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* @IP_FW_VERSION_0, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* @IP_FW_ADD, align 4
  store i32 %48, i32* %8, align 4
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %51 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IP_OLD_FW_DEL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, i64* @IP_FW_VERSION_0, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* @IP_FW_DEL, align 4
  store i32 %57, i32* %8, align 4
  br label %72

58:                                               ; preds = %49
  %59 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %60 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IP_OLD_FW_RESETLOG, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i64, i64* @IP_FW_VERSION_0, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i32, i32* @IP_FW_RESETLOG, align 4
  store i32 %66, i32* %8, align 4
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %69 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %55
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %37
  br label %75

75:                                               ; preds = %74, %28
  br label %76

76:                                               ; preds = %75, %19
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @IP_FW_VERSION_NONE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %76
  %81 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %82 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @proc_is64bit(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i64 8, i64* %12, align 8
  br label %88

87:                                               ; preds = %80
  store i64 4, i64* %12, align 8
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %90 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %95 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93, %88
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %4, align 4
  br label %126

101:                                              ; preds = %93
  %102 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @sooptcopyin(%struct.sockopt* %102, %struct.ip_fw_64* %11, i64 %103, i64 %104)
  store i32 %105, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %126

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %11, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %109, %76
  %113 = load i32*, i32** %6, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64*, i64** %7, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, i64* %10, align 8
  %123 = load i64*, i64** %7, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %107, %99
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, %struct.ip_fw_64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
