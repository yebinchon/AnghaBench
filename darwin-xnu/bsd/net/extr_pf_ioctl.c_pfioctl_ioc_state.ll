; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pfioc_state = type { %struct.pfsync_state }
%struct.pfsync_state = type { i32, i32, i32, i32 }
%struct.proc = type { i32 }
%struct.pf_state = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pf_state_key = type { %struct.TYPE_3__*, i32 }
%struct.pfi_kif = type { i32 }
%struct.pf_state_cmp = type { i32, i32 }

@PFTM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pf_state_pl = common dso_local global i32 0, align 4
@PR_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pf_state_key_pl = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PFI_KIF_REF_NONE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@pf_default_rule = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pfioc_state*, %struct.proc*)* @pfioctl_ioc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfioctl_ioc_state(i32 %0, %struct.pfioc_state* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfioc_state*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfsync_state*, align 8
  %9 = alloca %struct.pf_state*, align 8
  %10 = alloca %struct.pf_state_key*, align 8
  %11 = alloca %struct.pfi_kif*, align 8
  %12 = alloca %struct.pf_state*, align 8
  %13 = alloca %struct.pf_state_cmp, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pfioc_state* %1, %struct.pfioc_state** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %120 [
    i32 129, label %15
    i32 128, label %93
  ]

15:                                               ; preds = %3
  %16 = load %struct.pfioc_state*, %struct.pfioc_state** %5, align 8
  %17 = getelementptr inbounds %struct.pfioc_state, %struct.pfioc_state* %16, i32 0, i32 0
  store %struct.pfsync_state* %17, %struct.pfsync_state** %8, align 8
  %18 = load %struct.pfsync_state*, %struct.pfsync_state** %8, align 8
  %19 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PFTM_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %7, align 4
  br label %122

25:                                               ; preds = %15
  %26 = load i32, i32* @PR_WAITOK, align 4
  %27 = call %struct.pf_state_key* @pool_get(i32* @pf_state_pl, i32 %26)
  %28 = bitcast %struct.pf_state_key* %27 to %struct.pf_state*
  store %struct.pf_state* %28, %struct.pf_state** %9, align 8
  %29 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %30 = icmp eq %struct.pf_state* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %7, align 4
  br label %122

33:                                               ; preds = %25
  %34 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %35 = bitcast %struct.pf_state* %34 to %struct.pf_state_key*
  %36 = call i32 @bzero(%struct.pf_state_key* %35, i32 16)
  %37 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %38 = bitcast %struct.pf_state* %37 to %struct.pf_state_key*
  %39 = call %struct.pf_state_key* @pf_alloc_state_key(%struct.pf_state_key* %38, i32* null)
  store %struct.pf_state_key* %39, %struct.pf_state_key** %10, align 8
  %40 = icmp eq %struct.pf_state_key* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %43 = bitcast %struct.pf_state* %42 to %struct.pf_state_key*
  %44 = call i32 @pool_put(i32* @pf_state_pl, %struct.pf_state_key* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %7, align 4
  br label %122

46:                                               ; preds = %33
  %47 = load %struct.pfsync_state*, %struct.pfsync_state** %8, align 8
  %48 = load %struct.pf_state_key*, %struct.pf_state_key** %10, align 8
  %49 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %50 = bitcast %struct.pf_state* %49 to %struct.pf_state_key*
  %51 = call i32 @pf_state_import(%struct.pfsync_state* %47, %struct.pf_state_key* %48, %struct.pf_state_key* %50)
  %52 = load %struct.pfsync_state*, %struct.pfsync_state** %8, align 8
  %53 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.pfi_kif* @pfi_kif_get(i32 %54)
  store %struct.pfi_kif* %55, %struct.pfi_kif** %11, align 8
  %56 = load %struct.pfi_kif*, %struct.pfi_kif** %11, align 8
  %57 = icmp eq %struct.pfi_kif* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %60 = bitcast %struct.pf_state* %59 to %struct.pf_state_key*
  %61 = call i32 @pool_put(i32* @pf_state_pl, %struct.pf_state_key* %60)
  %62 = load %struct.pf_state_key*, %struct.pf_state_key** %10, align 8
  %63 = call i32 @pool_put(i32* @pf_state_key_pl, %struct.pf_state_key* %62)
  %64 = load i32, i32* @ENOENT, align 4
  store i32 %64, i32* %7, align 4
  br label %122

65:                                               ; preds = %46
  %66 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %67 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %66, i32 0, i32 1
  %68 = call i32 @TAILQ_INIT(i32* %67)
  %69 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %70 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load %struct.pfi_kif*, %struct.pfi_kif** %11, align 8
  %74 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %75 = bitcast %struct.pf_state* %74 to %struct.pf_state_key*
  %76 = call i32 @pf_insert_state(%struct.pfi_kif* %73, %struct.pf_state_key* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load %struct.pfi_kif*, %struct.pfi_kif** %11, align 8
  %80 = load i32, i32* @PFI_KIF_REF_NONE, align 4
  %81 = call i32 @pfi_kif_unref(%struct.pfi_kif* %79, i32 %80)
  %82 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %83 = bitcast %struct.pf_state* %82 to %struct.pf_state_key*
  %84 = call i32 @pool_put(i32* @pf_state_pl, %struct.pf_state_key* %83)
  %85 = load i32, i32* @EEXIST, align 4
  store i32 %85, i32* %7, align 4
  br label %122

86:                                               ; preds = %65
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pf_default_rule, i32 0, i32 0), align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pf_default_rule, i32 0, i32 0), align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pf_default_rule, i32 0, i32 0), align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @VERIFY(i32 %91)
  br label %122

93:                                               ; preds = %3
  %94 = load %struct.pfioc_state*, %struct.pfioc_state** %5, align 8
  %95 = getelementptr inbounds %struct.pfioc_state, %struct.pfioc_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.pf_state_cmp, %struct.pf_state_cmp* %13, i32 0, i32 1
  %99 = call i32 @bcopy(i32 %97, i32* %98, i32 4)
  %100 = load %struct.pfioc_state*, %struct.pfioc_state** %5, align 8
  %101 = getelementptr inbounds %struct.pfioc_state, %struct.pfioc_state* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.pf_state_cmp, %struct.pf_state_cmp* %13, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = call %struct.pf_state_key* @pf_find_state_byid(%struct.pf_state_cmp* %13)
  %106 = bitcast %struct.pf_state_key* %105 to %struct.pf_state*
  store %struct.pf_state* %106, %struct.pf_state** %12, align 8
  %107 = load %struct.pf_state*, %struct.pf_state** %12, align 8
  %108 = icmp eq %struct.pf_state* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = load i32, i32* @ENOENT, align 4
  store i32 %110, i32* %7, align 4
  br label %122

111:                                              ; preds = %93
  %112 = load %struct.pfioc_state*, %struct.pfioc_state** %5, align 8
  %113 = getelementptr inbounds %struct.pfioc_state, %struct.pfioc_state* %112, i32 0, i32 0
  %114 = load %struct.pf_state*, %struct.pf_state** %12, align 8
  %115 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load %struct.pf_state*, %struct.pf_state** %12, align 8
  %118 = bitcast %struct.pf_state* %117 to %struct.pf_state_key*
  %119 = call i32 @pf_state_export(%struct.pfsync_state* %113, %struct.TYPE_3__* %116, %struct.pf_state_key* %118)
  br label %122

120:                                              ; preds = %3
  %121 = call i32 @VERIFY(i32 0)
  br label %122

122:                                              ; preds = %120, %111, %109, %86, %78, %58, %41, %31, %23
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local %struct.pf_state_key* @pool_get(i32*, i32) #1

declare dso_local i32 @bzero(%struct.pf_state_key*, i32) #1

declare dso_local %struct.pf_state_key* @pf_alloc_state_key(%struct.pf_state_key*, i32*) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_state_key*) #1

declare dso_local i32 @pf_state_import(%struct.pfsync_state*, %struct.pf_state_key*, %struct.pf_state_key*) #1

declare dso_local %struct.pfi_kif* @pfi_kif_get(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @pf_insert_state(%struct.pfi_kif*, %struct.pf_state_key*) #1

declare dso_local i32 @pfi_kif_unref(%struct.pfi_kif*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local %struct.pf_state_key* @pf_find_state_byid(%struct.pf_state_cmp*) #1

declare dso_local i32 @pf_state_export(%struct.pfsync_state*, %struct.TYPE_3__*, %struct.pf_state_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
