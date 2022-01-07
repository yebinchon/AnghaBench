; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_init.c_ipc_bootstrap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_init.c_ipc_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipc_lck_grp_attr = common dso_local global i32 0, align 4
@ipc_lck_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ipc\00", align 1
@ipc_lck_attr = common dso_local global i32 0, align 4
@ipc_port_timestamp_data = common dso_local global i64 0, align 8
@ipc_space_max = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ipc spaces\00", align 1
@ipc_space_zone = common dso_local global i32 0, align 4
@Z_NOENCRYPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ipc_port_max = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ipc ports\00", align 1
@ipc_object_zones = common dso_local global i32* null, align 8
@IOT_PORT = common dso_local global i64 0, align 8
@Z_CALLERACCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ipc_pset_max = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ipc port sets\00", align 1
@IOT_PORT_SET = common dso_local global i64 0, align 8
@IKM_SAVED_KMSG_SIZE = common dso_local global i32 0, align 4
@MACH_PORT_QLIMIT_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"ipc kmsgs\00", align 1
@ipc_kmsg_zone = common dso_local global i32 0, align 4
@Z_CACHING_ENABLED = common dso_local global i32 0, align 4
@ipc_space_kernel = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@ipc_space_reply = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_bootstrap() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @lck_grp_attr_setdefault(i32* @ipc_lck_grp_attr)
  %3 = call i32 @lck_grp_init(i32* @ipc_lck_grp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @ipc_lck_grp_attr)
  %4 = call i32 @lck_attr_setdefault(i32* @ipc_lck_attr)
  %5 = call i32 (...) @ipc_port_multiple_lock_init()
  store i64 0, i64* @ipc_port_timestamp_data, align 8
  %6 = load i32, i32* @ipc_space_max, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i32 @zinit(i32 4, i32 %9, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* @ipc_space_zone, align 4
  %11 = load i32, i32* @ipc_space_zone, align 4
  %12 = load i32, i32* @Z_NOENCRYPT, align 4
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @zone_change(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @ipc_port_max, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @zinit(i32 4, i32 %18, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** @ipc_object_zones, align 8
  %21 = load i64, i64* @IOT_PORT, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32*, i32** @ipc_object_zones, align 8
  %24 = load i64, i64* @IOT_PORT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @Z_CALLERACCT, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @zone_change(i32 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** @ipc_object_zones, align 8
  %31 = load i64, i64* @IOT_PORT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @Z_NOENCRYPT, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @zone_change(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @ipc_pset_max, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @zinit(i32 4, i32 %40, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** @ipc_object_zones, align 8
  %43 = load i64, i64* @IOT_PORT_SET, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32*, i32** @ipc_object_zones, align 8
  %46 = load i64, i64* @IOT_PORT_SET, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @Z_NOENCRYPT, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @zone_change(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @IKM_SAVED_KMSG_SIZE, align 4
  %53 = load i32, i32* @ipc_port_max, align 4
  %54 = load i32, i32* @MACH_PORT_QLIMIT_DEFAULT, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @IKM_SAVED_KMSG_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* @IKM_SAVED_KMSG_SIZE, align 4
  %59 = call i32 @zinit(i32 %52, i32 %57, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %59, i32* @ipc_kmsg_zone, align 4
  %60 = load i32, i32* @ipc_kmsg_zone, align 4
  %61 = load i32, i32* @Z_CALLERACCT, align 4
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @zone_change(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @ipc_kmsg_zone, align 4
  %65 = load i32, i32* @Z_CACHING_ENABLED, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @zone_change(i32 %64, i32 %65, i32 %66)
  %68 = call i64 @ipc_space_create_special(i32* @ipc_space_kernel)
  store i64 %68, i64* %1, align 8
  %69 = load i64, i64* %1, align 8
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = call i64 @ipc_space_create_special(i32* @ipc_space_reply)
  store i64 %74, i64* %1, align 8
  %75 = load i64, i64* %1, align 8
  %76 = load i64, i64* @KERN_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = call i32 (...) @mig_init()
  %81 = call i32 (...) @ipc_table_init()
  %82 = call i32 (...) @ipc_voucher_init()
  %83 = call i32 (...) @semaphore_init()
  %84 = call i32 (...) @mk_timer_init()
  %85 = call i32 (...) @host_notify_init()
  ret void
}

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @lck_attr_setdefault(i32*) #1

declare dso_local i32 @ipc_port_multiple_lock_init(...) #1

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i32) #1

declare dso_local i64 @ipc_space_create_special(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mig_init(...) #1

declare dso_local i32 @ipc_table_init(...) #1

declare dso_local i32 @ipc_voucher_init(...) #1

declare dso_local i32 @semaphore_init(...) #1

declare dso_local i32 @mk_timer_init(...) #1

declare dso_local i32 @host_notify_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
