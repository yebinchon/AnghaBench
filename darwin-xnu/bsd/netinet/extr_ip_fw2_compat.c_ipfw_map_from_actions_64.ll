; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_map_from_actions_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_fw2_compat.c_ipfw_map_from_actions_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_64 = type { i32, i32 }
%struct.ip_fw_compat_64 = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@IP_FW_F_ACCEPT_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_COUNT_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_PIPE_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_QUEUE_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_SKIPTO_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_DIVERT_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_TEE_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_FWD_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_DENY_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_REJECT_COMPAT = common dso_local global i32 0, align 4
@IP_FW_F_CHECK_S_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_64*, %struct.ip_fw_compat_64*)* @ipfw_map_from_actions_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_map_from_actions_64(%struct.ip_fw_64* %0, %struct.ip_fw_compat_64* %1) #0 {
  %3 = alloca %struct.ip_fw_64*, align 8
  %4 = alloca %struct.ip_fw_compat_64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.ip_fw_64* %0, %struct.ip_fw_64** %3, align 8
  store %struct.ip_fw_compat_64* %1, %struct.ip_fw_compat_64** %4, align 8
  %8 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %9 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %12 = getelementptr inbounds %struct.ip_fw_64, %struct.ip_fw_64* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ip_fw_64*, %struct.ip_fw_64** %3, align 8
  %16 = call %struct.TYPE_10__* @ACTION_PTR(%struct.ip_fw_64* %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %6, align 8
  br label %17

17:                                               ; preds = %152, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %163

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %150 [
    i32 138, label %24
    i32 136, label %30
    i32 132, label %36
    i32 131, label %47
    i32 129, label %58
    i32 134, label %69
    i32 128, label %80
    i32 133, label %91
    i32 135, label %127
    i32 130, label %133
    i32 137, label %144
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* @IP_FW_F_ACCEPT_COMPAT, align 4
  %26 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %27 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %151

30:                                               ; preds = %20
  %31 = load i32, i32* @IP_FW_F_COUNT_COMPAT, align 4
  %32 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %33 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %151

36:                                               ; preds = %20
  %37 = load i32, i32* @IP_FW_F_PIPE_COMPAT, align 4
  %38 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %39 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %46 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %151

47:                                               ; preds = %20
  %48 = load i32, i32* @IP_FW_F_QUEUE_COMPAT, align 4
  %49 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %50 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %57 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %151

58:                                               ; preds = %20
  %59 = load i32, i32* @IP_FW_F_SKIPTO_COMPAT, align 4
  %60 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %61 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %68 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  br label %151

69:                                               ; preds = %20
  %70 = load i32, i32* @IP_FW_F_DIVERT_COMPAT, align 4
  %71 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %72 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %79 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %151

80:                                               ; preds = %20
  %81 = load i32, i32* @IP_FW_F_TEE_COMPAT, align 4
  %82 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %83 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %90 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %151

91:                                               ; preds = %20
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = bitcast %struct.TYPE_10__* %92 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %7, align 8
  %94 = load i32, i32* @IP_FW_F_FWD_COMPAT, align 4
  %95 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %96 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %104 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %111 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %118 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %125 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  br label %151

127:                                              ; preds = %20
  %128 = load i32, i32* @IP_FW_F_DENY_COMPAT, align 4
  %129 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %130 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %151

133:                                              ; preds = %20
  %134 = load i32, i32* @IP_FW_F_REJECT_COMPAT, align 4
  %135 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %136 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %143 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %151

144:                                              ; preds = %20
  %145 = load i32, i32* @IP_FW_F_CHECK_S_COMPAT, align 4
  %146 = load %struct.ip_fw_compat_64*, %struct.ip_fw_compat_64** %4, align 8
  %147 = getelementptr inbounds %struct.ip_fw_compat_64, %struct.ip_fw_compat_64* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %151

150:                                              ; preds = %20
  br label %151

151:                                              ; preds = %150, %144, %133, %127, %91, %80, %69, %58, %47, %36, %30, %24
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = call i64 @F_LEN(%struct.TYPE_10__* %153)
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %5, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = call i64 @F_LEN(%struct.TYPE_10__* %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %160
  store %struct.TYPE_10__* %162, %struct.TYPE_10__** %6, align 8
  br label %17

163:                                              ; preds = %17
  ret void
}

declare dso_local %struct.TYPE_10__* @ACTION_PTR(%struct.ip_fw_64*) #1

declare dso_local i64 @F_LEN(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
