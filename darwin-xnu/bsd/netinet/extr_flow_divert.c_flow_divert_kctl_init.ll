; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_kctl_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_kctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ctl_reg = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@FLOW_DIVERT_CONTROL_NAME = common dso_local global i32 0, align 4
@CTL_FLAG_PRIVILEGED = common dso_local global i32 0, align 4
@CTL_FLAG_REG_EXTENDED = common dso_local global i32 0, align 4
@FD_CTL_SENDBUFF_SIZE = common dso_local global i32 0, align 4
@FD_CTL_RCVBUFF_SIZE = common dso_local global i32 0, align 4
@flow_divert_kctl_connect = common dso_local global i32 0, align 4
@flow_divert_kctl_disconnect = common dso_local global i32 0, align 4
@flow_divert_kctl_send = common dso_local global i32 0, align 4
@flow_divert_kctl_rcvd = common dso_local global i32 0, align 4
@g_flow_divert_kctl_ref = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"flow_divert_kctl_init - ctl_register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @flow_divert_kctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_kctl_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.kern_ctl_reg, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @memset(%struct.kern_ctl_reg* %2, i32 0, i32 40)
  %5 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @FLOW_DIVERT_CONTROL_NAME, align 4
  %8 = call i32 @strlcpy(i8* %6, i32 %7, i32 8)
  %9 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 7
  store i8 0, i8* %11, align 1
  %12 = load i32, i32* @CTL_FLAG_PRIVILEGED, align 4
  %13 = load i32, i32* @CTL_FLAG_REG_EXTENDED, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @FD_CTL_SENDBUFF_SIZE, align 4
  %17 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 7
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @FD_CTL_RCVBUFF_SIZE, align 4
  %19 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 6
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @flow_divert_kctl_connect, align 4
  %21 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @flow_divert_kctl_disconnect, align 4
  %23 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @flow_divert_kctl_send, align 4
  %25 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @flow_divert_kctl_rcvd, align 4
  %27 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = call i32 @ctl_register(%struct.kern_ctl_reg* %2, i32* @g_flow_divert_kctl_ref)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %0
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @FDLOG(i32 %32, i32* @nil_pcb, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %1, align 4
  br label %37

36:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.kern_ctl_reg*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @ctl_register(%struct.kern_ctl_reg*, i32*) #1

declare dso_local i32 @FDLOG(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
