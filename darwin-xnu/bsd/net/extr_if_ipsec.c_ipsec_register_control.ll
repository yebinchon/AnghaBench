; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_register_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_register_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ctl_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64* }

@IPSEC_CONTROL_NAME = common dso_local global i32 0, align 4
@ipsec_family = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"ipsec_register_control - mbuf_tag_id_find_internal failed: %d\0A\00", align 1
@ipsec_pcb_size = common dso_local global i32 0, align 4
@IPSEC_PCB_ZONE_MAX = common dso_local global i32 0, align 4
@IPSEC_PCB_ZONE_NAME = common dso_local global i32 0, align 4
@ipsec_pcb_zone = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"ipsec_register_control - zinit(ipsec_pcb) failed\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@ipsec_head = common dso_local global i32 0, align 4
@CTL_FLAG_PRIVILEGED = common dso_local global i32 0, align 4
@ipsec_ctl_bind = common dso_local global i32 0, align 4
@ipsec_ctl_connect = common dso_local global i32 0, align 4
@ipsec_ctl_disconnect = common dso_local global i32 0, align 4
@ipsec_ctl_send = common dso_local global i32 0, align 4
@ipsec_ctl_setopt = common dso_local global i32 0, align 4
@ipsec_ctl_getopt = common dso_local global i32 0, align 4
@ipsec_kctlref = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ipsec_register_control - ctl_register failed: %d\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@ipsec_attach_proto = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"ipsec_register_control - proto_register_plumber(PF_INET, %d) failed: %d\0A\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"ipsec_register_control - proto_register_plumber(PF_INET6, %d) failed: %d\0A\00", align 1
@ipsec_lck_attr = common dso_local global i32 0, align 4
@ipsec_lck_grp_attr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"ipsec\00", align 1
@ipsec_lck_grp = common dso_local global i32 0, align 4
@ipsec_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipsec_register_control() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.kern_ctl_reg, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @IPSEC_CONTROL_NAME, align 4
  %5 = call i64 @mbuf_tag_id_find(i32 %4, i32* @ipsec_family)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i64, i64* %3, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %1, align 8
  br label %94

12:                                               ; preds = %0
  store i32 4, i32* @ipsec_pcb_size, align 4
  %13 = load i32, i32* @ipsec_pcb_size, align 4
  %14 = load i32, i32* @IPSEC_PCB_ZONE_MAX, align 4
  %15 = load i32, i32* @ipsec_pcb_size, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* @IPSEC_PCB_ZONE_NAME, align 4
  %18 = call i32* @zinit(i32 %13, i32 %16, i32 0, i32 %17)
  store i32* %18, i32** @ipsec_pcb_zone, align 8
  %19 = load i32*, i32** @ipsec_pcb_zone, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @ENOMEM, align 8
  store i64 %23, i64* %1, align 8
  br label %94

24:                                               ; preds = %12
  %25 = call i32 @TAILQ_INIT(i32* @ipsec_head)
  %26 = call i32 @bzero(%struct.kern_ctl_reg* %2, i32 48)
  %27 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 9
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @IPSEC_CONTROL_NAME, align 4
  %30 = call i32 @strlcpy(i64* %28, i32 %29, i32 8)
  %31 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 9
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 7
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @CTL_FLAG_PRIVILEGED, align 4
  %35 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 8
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 0
  store i32 65536, i32* %36, align 8
  %37 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 1
  store i32 65536, i32* %37, align 4
  %38 = load i32, i32* @ipsec_ctl_bind, align 4
  %39 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 7
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @ipsec_ctl_connect, align 4
  %41 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 6
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @ipsec_ctl_disconnect, align 4
  %43 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 5
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @ipsec_ctl_send, align 4
  %45 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @ipsec_ctl_setopt, align 4
  %47 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @ipsec_ctl_getopt, align 4
  %49 = getelementptr inbounds %struct.kern_ctl_reg, %struct.kern_ctl_reg* %2, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = call i64 @ctl_register(%struct.kern_ctl_reg* %2, i32* @ipsec_kctlref)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %24
  %54 = load i64, i64* %3, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %3, align 8
  store i64 %56, i64* %1, align 8
  br label %94

57:                                               ; preds = %24
  %58 = load i32, i32* @PF_INET, align 4
  %59 = load i32, i32* @ipsec_family, align 4
  %60 = load i32, i32* @ipsec_attach_proto, align 4
  %61 = call i64 @proto_register_plumber(i32 %58, i32 %59, i32 %60, i32* null)
  store i64 %61, i64* %3, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* @ipsec_family, align 4
  %65 = load i64, i64* %3, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %64, i64 %65)
  %67 = load i32, i32* @ipsec_kctlref, align 4
  %68 = call i32 @ctl_deregister(i32 %67)
  %69 = load i64, i64* %3, align 8
  store i64 %69, i64* %1, align 8
  br label %94

70:                                               ; preds = %57
  %71 = load i32, i32* @PF_INET6, align 4
  %72 = load i32, i32* @ipsec_family, align 4
  %73 = load i32, i32* @ipsec_attach_proto, align 4
  %74 = call i64 @proto_register_plumber(i32 %71, i32 %72, i32 %73, i32* null)
  store i64 %74, i64* %3, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load i32, i32* @PF_INET, align 4
  %78 = load i32, i32* @ipsec_family, align 4
  %79 = call i32 @proto_unregister_plumber(i32 %77, i32 %78)
  %80 = load i32, i32* @ipsec_kctlref, align 4
  %81 = call i32 @ctl_deregister(i32 %80)
  %82 = load i32, i32* @ipsec_family, align 4
  %83 = load i64, i64* %3, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %82, i64 %83)
  %85 = load i64, i64* %3, align 8
  store i64 %85, i64* %1, align 8
  br label %94

86:                                               ; preds = %70
  %87 = call i32 (...) @lck_attr_alloc_init()
  store i32 %87, i32* @ipsec_lck_attr, align 4
  %88 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %88, i32* @ipsec_lck_grp_attr, align 4
  %89 = load i32, i32* @ipsec_lck_grp_attr, align 4
  %90 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  store i32 %90, i32* @ipsec_lck_grp, align 4
  %91 = load i32, i32* @ipsec_lck_grp, align 4
  %92 = load i32, i32* @ipsec_lck_attr, align 4
  %93 = call i32 @lck_mtx_init(i32* @ipsec_lock, i32 %91, i32 %92)
  store i64 0, i64* %1, align 8
  br label %94

94:                                               ; preds = %86, %76, %63, %53, %21, %8
  %95 = load i64, i64* %1, align 8
  ret i64 %95
}

declare dso_local i64 @mbuf_tag_id_find(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @zinit(i32, i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @bzero(%struct.kern_ctl_reg*, i32) #1

declare dso_local i32 @strlcpy(i64*, i32, i32) #1

declare dso_local i64 @ctl_register(%struct.kern_ctl_reg*, i32*) #1

declare dso_local i64 @proto_register_plumber(i32, i32, i32, i32*) #1

declare dso_local i32 @ctl_deregister(i32) #1

declare dso_local i32 @proto_unregister_plumber(i32, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
