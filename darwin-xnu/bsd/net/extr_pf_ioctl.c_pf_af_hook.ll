; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_af_hook.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_af_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip_fw_args = type { i32 }

@intcoproc_unrestricted = common dso_local global i32 0, align 4
@NET_THREAD_HELD_PF = common dso_local global i32 0, align 4
@net_thread_marks_none = common dso_local global i64 0, align 8
@pf_perim_lock = common dso_local global i32 0, align 4
@pf_is_enabled = common dso_local global i32 0, align 4
@pf_lock = common dso_local global i32 0, align 4
@PKTF_LOOP = common dso_local global i32 0, align 4
@lo_ifp = common dso_local global %struct.ifnet* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_af_hook(%struct.ifnet* %0, %struct.mbuf** %1, %struct.mbuf** %2, i32 %3, i32 %4, %struct.ip_fw_args* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_fw_args*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ifnet*, align 8
  %18 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %8, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %9, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ip_fw_args* %5, %struct.ip_fw_args** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %19, %struct.ifnet** %17, align 8
  %20 = load i32, i32* @intcoproc_unrestricted, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %24 = icmp ne %struct.ifnet* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %27 = call i64 @IFNET_IS_INTCOPROC(%struct.ifnet* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %144

30:                                               ; preds = %25, %22, %6
  %31 = load i32, i32* @NET_THREAD_HELD_PF, align 4
  %32 = call i64 @net_thread_marks_push(i32 %31)
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @net_thread_marks_none, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @pf_perim_lock, align 4
  %38 = call i32 @lck_rw_lock_shared(i32 %37)
  %39 = load i32, i32* @pf_is_enabled, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %133

42:                                               ; preds = %36
  %43 = load i32, i32* @pf_lock, align 4
  %44 = call i32 @lck_mtx_lock(i32 %43)
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %47 = icmp ne %struct.mbuf** %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  %51 = icmp ne %struct.mbuf* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  %55 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %55, align 8
  %57 = icmp eq %struct.mbuf* %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  br label %60

60:                                               ; preds = %52, %48, %45
  %61 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %61, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = load %struct.mbuf*, %struct.mbuf** %63, align 8
  store %struct.mbuf* %64, %struct.mbuf** %15, align 8
  %65 = icmp ne %struct.mbuf* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %67, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %69, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %74, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PKTF_LOOP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load %struct.ifnet*, %struct.ifnet** @lo_ifp, align 8
  store %struct.ifnet* %83, %struct.ifnet** %17, align 8
  br label %84

84:                                               ; preds = %82, %73, %70
  %85 = load i32, i32* %11, align 4
  switch i32 %85, label %86 [
  ]

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %88, align 8
  %90 = icmp ne %struct.mbuf* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %93 = icmp ne %struct.mbuf* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %95, align 8
  store %struct.mbuf* %96, %struct.mbuf** %18, align 8
  br label %97

97:                                               ; preds = %102, %94
  %98 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 0
  %100 = load %struct.mbuf*, %struct.mbuf** %99, align 8
  %101 = icmp ne %struct.mbuf* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 0
  %105 = load %struct.mbuf*, %struct.mbuf** %104, align 8
  store %struct.mbuf* %105, %struct.mbuf** %18, align 8
  br label %97

106:                                              ; preds = %97
  %107 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 0
  store %struct.mbuf* %107, %struct.mbuf** %109, align 8
  br label %110

110:                                              ; preds = %106, %91, %87
  %111 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %112 = icmp ne %struct.mbuf** %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %115 = load %struct.mbuf*, %struct.mbuf** %114, align 8
  %116 = icmp ne %struct.mbuf* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %118, align 8
  %120 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %119, %struct.mbuf** %120, align 8
  br label %124

121:                                              ; preds = %113
  %122 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %123 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %122, %struct.mbuf** %123, align 8
  br label %124

124:                                              ; preds = %121, %117
  br label %125

125:                                              ; preds = %124, %110
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* @net_thread_marks_none, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @pf_lock, align 4
  %131 = call i32 @lck_mtx_unlock(i32 %130)
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %41
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* @net_thread_marks_none, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @pf_perim_lock, align 4
  %139 = call i32 @lck_rw_done(i32 %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i64, i64* %16, align 8
  %142 = call i32 @net_thread_marks_pop(i64 %141)
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %29
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i64 @IFNET_IS_INTCOPROC(%struct.ifnet*) #1

declare dso_local i64 @net_thread_marks_push(i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @net_thread_marks_pop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
