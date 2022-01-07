; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_states.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pfioc_states_32 = type { i32, i32 }
%struct.pfioc_states_64 = type { i32, i32 }
%struct.proc = type { i32 }
%struct.pf_state = type { i32, i32 }
%struct.pfsync_state = type { i32 }

@pf_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@state_list = common dso_local global i32 0, align 4
@PFTM_UNLINKED = common dso_local global i32 0, align 4
@entry_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pfioc_states_32*, %struct.pfioc_states_64*, %struct.proc*)* @pfioctl_ioc_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfioctl_ioc_states(i32 %0, %struct.pfioc_states_32* %1, %struct.pfioc_states_64* %2, %struct.proc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfioc_states_32*, align 8
  %7 = alloca %struct.pfioc_states_64*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pf_state*, align 8
  %12 = alloca %struct.pfsync_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pfioc_states_32* %1, %struct.pfioc_states_32** %6, align 8
  store %struct.pfioc_states_64* %2, %struct.pfioc_states_64** %7, align 8
  store %struct.proc* %3, %struct.proc** %8, align 8
  %17 = load %struct.proc*, %struct.proc** %8, align 8
  %18 = call i32 @proc_is64bit(%struct.proc* %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %139 [
    i32 128, label %20
  ]

20:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.pfioc_states_64*, %struct.pfioc_states_64** %7, align 8
  %25 = getelementptr inbounds %struct.pfioc_states_64, %struct.pfioc_states_64* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load %struct.pfioc_states_32*, %struct.pfioc_states_32** %6, align 8
  %29 = getelementptr inbounds %struct.pfioc_states_32, %struct.pfioc_states_32* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 0), align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  %44 = load %struct.pfioc_states_64*, %struct.pfioc_states_64** %7, align 8
  %45 = getelementptr inbounds %struct.pfioc_states_64, %struct.pfioc_states_64* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %50

46:                                               ; preds = %35
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.pfioc_states_32*, %struct.pfioc_states_32** %6, align 8
  %49 = getelementptr inbounds %struct.pfioc_states_32, %struct.pfioc_states_32* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %141

51:                                               ; preds = %31
  %52 = load i32, i32* @M_TEMP, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.pfsync_state* @_MALLOC(i32 4, i32 %52, i32 %55)
  store %struct.pfsync_state* %56, %struct.pfsync_state** %12, align 8
  %57 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %58 = icmp eq %struct.pfsync_state* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %10, align 4
  br label %141

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.pfioc_states_64*, %struct.pfioc_states_64** %7, align 8
  %66 = getelementptr inbounds %struct.pfioc_states_64, %struct.pfioc_states_64* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.pfioc_states_32*, %struct.pfioc_states_32** %6, align 8
  %70 = getelementptr inbounds %struct.pfioc_states_32, %struct.pfioc_states_32* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i32 [ %67, %64 ], [ %71, %68 ]
  store i32 %73, i32* %13, align 4
  %74 = call %struct.pf_state* @TAILQ_FIRST(i32* @state_list)
  store %struct.pf_state* %74, %struct.pf_state** %11, align 8
  br label %75

75:                                               ; preds = %116, %72
  %76 = load %struct.pf_state*, %struct.pf_state** %11, align 8
  %77 = icmp ne %struct.pf_state* %76, null
  br i1 %77, label %78, label %120

78:                                               ; preds = %75
  %79 = load %struct.pf_state*, %struct.pf_state** %11, align 8
  %80 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PFTM_UNLINKED, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = load i32, i32* %15, align 4
  %90 = zext i32 %89 to i64
  %91 = icmp ugt i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %120

93:                                               ; preds = %84
  %94 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %95 = load %struct.pf_state*, %struct.pf_state** %11, align 8
  %96 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pf_state*, %struct.pf_state** %11, align 8
  %99 = call i32 @pf_state_export(%struct.pfsync_state* %94, i32 %97, %struct.pf_state* %98)
  %100 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @copyout(%struct.pfsync_state* %100, i32 %101, i32 4)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %107 = load i32, i32* @M_TEMP, align 4
  %108 = call i32 @_FREE(%struct.pfsync_state* %106, i32 %107)
  br label %142

109:                                              ; preds = %93
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 4
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %109, %78
  %117 = load %struct.pf_state*, %struct.pf_state** %11, align 8
  %118 = load i32, i32* @entry_list, align 4
  %119 = call %struct.pf_state* @TAILQ_NEXT(%struct.pf_state* %117, i32 %118)
  store %struct.pf_state* %119, %struct.pf_state** %11, align 8
  br label %75

120:                                              ; preds = %92, %75
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 4, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.pfioc_states_64*, %struct.pfioc_states_64** %7, align 8
  %130 = getelementptr inbounds %struct.pfioc_states_64, %struct.pfioc_states_64* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  br label %135

131:                                              ; preds = %120
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.pfioc_states_32*, %struct.pfioc_states_32** %6, align 8
  %134 = getelementptr inbounds %struct.pfioc_states_32, %struct.pfioc_states_32* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.pfsync_state*, %struct.pfsync_state** %12, align 8
  %137 = load i32, i32* @M_TEMP, align 4
  %138 = call i32 @_FREE(%struct.pfsync_state* %136, i32 %137)
  br label %141

139:                                              ; preds = %4
  %140 = call i32 @VERIFY(i32 0)
  br label %141

141:                                              ; preds = %139, %135, %59, %50
  br label %142

142:                                              ; preds = %141, %105
  %143 = load i32, i32* %10, align 4
  ret i32 %143
}

declare dso_local i32 @proc_is64bit(%struct.proc*) #1

declare dso_local %struct.pfsync_state* @_MALLOC(i32, i32, i32) #1

declare dso_local %struct.pf_state* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @pf_state_export(%struct.pfsync_state*, i32, %struct.pf_state*) #1

declare dso_local i32 @copyout(%struct.pfsync_state*, i32, i32) #1

declare dso_local i32 @_FREE(%struct.pfsync_state*, i32) #1

declare dso_local %struct.pf_state* @TAILQ_NEXT(%struct.pf_state*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
