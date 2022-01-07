; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ctl_reg = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"network statistics kctl\00", align 1
@nstat_lck_grp = common dso_local global i32 0, align 4
@nstat_mtx = common dso_local global i32 0, align 4
@NET_STAT_CONTROL_NAME = common dso_local global i32 0, align 4
@CTL_FLAG_REG_EXTENDED = common dso_local global i32 0, align 4
@CTL_FLAG_REG_CRIT = common dso_local global i32 0, align 4
@nstat_sendspace = common dso_local global i32 0, align 4
@nstat_recvspace = common dso_local global i32 0, align 4
@nstat_control_connect = common dso_local global i32 0, align 4
@nstat_control_disconnect = common dso_local global i32 0, align 4
@nstat_control_send = common dso_local global i32 0, align 4
@nstat_ctlref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nstat_control_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nstat_control_register() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.kern_ctl_reg, align 4
  %3 = call i32* (...) @lck_grp_attr_alloc_init()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @lck_grp_attr_setdefault(i32* %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %7, i32* @nstat_lck_grp, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @lck_grp_attr_free(i32* %8)
  %10 = load i32, i32* @nstat_lck_grp, align 4
  %11 = call i32 @lck_mtx_init(i32* @nstat_mtx, i32 %10, i32* null)
  %12 = call i32 @bzero(%struct.kern_ctl_reg* %2, i32 28)
  %13 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NET_STAT_CONTROL_NAME, align 4
  %16 = call i32 @strlcpy(i32 %14, i32 %15, i32 4)
  %17 = load i32, i32* @CTL_FLAG_REG_EXTENDED, align 4
  %18 = load i32, i32* @CTL_FLAG_REG_CRIT, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @nstat_sendspace, align 4
  %22 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @nstat_recvspace, align 4
  %24 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @nstat_control_connect, align 4
  %26 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @nstat_control_disconnect, align 4
  %28 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @nstat_control_send, align 4
  %30 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = call i32 @ctl_register(%struct.kern_ctl_reg* %2, i32* @nstat_ctlref)
  ret void
}

declare dso_local i32* @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32*) #1

declare dso_local i32 @lck_grp_attr_free(i32*) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32*) #1

declare dso_local i32 @bzero(%struct.kern_ctl_reg*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ctl_register(%struct.kern_ctl_reg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
