; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_register_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_register_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ctl_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64* }

@NETAGENT_CONTROL_NAME = common dso_local global i32 0, align 4
@OSMT_DEFAULT = common dso_local global i32 0, align 4
@netagent_malloc_tag = common dso_local global i32 0, align 4
@netagent_family = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mbuf_tag_id_find_internal failed: %d\00", align 1
@CTL_FLAG_PRIVILEGED = common dso_local global i32 0, align 4
@netagent_ctl_connect = common dso_local global i32 0, align 4
@netagent_ctl_disconnect = common dso_local global i32 0, align 4
@netagent_ctl_send = common dso_local global i32 0, align 4
@netagent_ctl_rcvd = common dso_local global i32 0, align 4
@netagent_ctl_setopt = common dso_local global i32 0, align 4
@netagent_ctl_getopt = common dso_local global i32 0, align 4
@netagent_kctlref = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ctl_register failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @netagent_register_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netagent_register_control() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.kern_ctl_reg, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @NETAGENT_CONTROL_NAME, align 4
  %5 = load i32, i32* @OSMT_DEFAULT, align 4
  %6 = call i32 @OSMalloc_Tagalloc(i32 %4, i32 %5)
  store i32 %6, i32* @netagent_malloc_tag, align 4
  %7 = load i32, i32* @NETAGENT_CONTROL_NAME, align 4
  %8 = call i64 @mbuf_tag_id_find(i32 %7, i32* @netagent_family)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @NETAGENTLOG(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %3, align 8
  store i64 %15, i64* %1, align 8
  br label %50

16:                                               ; preds = %0
  %17 = call i32 @bzero(%struct.kern_ctl_reg* %2, i32 48)
  %18 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 9
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* @NETAGENT_CONTROL_NAME, align 4
  %21 = call i32 @strlcpy(i64* %19, i32 %20, i32 8)
  %22 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 9
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 7
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @CTL_FLAG_PRIVILEGED, align 4
  %26 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 8
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 0
  store i32 65536, i32* %27, align 8
  %28 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 1
  store i32 65536, i32* %28, align 4
  %29 = load i32, i32* @netagent_ctl_connect, align 4
  %30 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 7
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @netagent_ctl_disconnect, align 4
  %32 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 6
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @netagent_ctl_send, align 4
  %34 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @netagent_ctl_rcvd, align 4
  %36 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @netagent_ctl_setopt, align 4
  %38 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @netagent_ctl_getopt, align 4
  %40 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = call i64 @ctl_register(%struct.kern_ctl_reg* %2, i32* @netagent_kctlref)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %16
  %45 = load i32, i32* @LOG_ERR, align 4
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @NETAGENTLOG(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %3, align 8
  store i64 %48, i64* %1, align 8
  br label %50

49:                                               ; preds = %16
  store i64 0, i64* %1, align 8
  br label %50

50:                                               ; preds = %49, %44, %11
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

declare dso_local i32 @OSMalloc_Tagalloc(i32, i32) #1

declare dso_local i64 @mbuf_tag_id_find(i32, i32*) #1

declare dso_local i32 @NETAGENTLOG(i32, i8*, i64) #1

declare dso_local i32 @bzero(%struct.kern_ctl_reg*, i32) #1

declare dso_local i32 @strlcpy(i64*, i32, i32) #1

declare dso_local i64 @ctl_register(%struct.kern_ctl_reg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
