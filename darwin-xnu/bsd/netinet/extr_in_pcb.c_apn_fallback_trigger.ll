; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_apn_fallback_trigger.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_apn_fallback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32 }
%struct.kev_msg = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.kev_netevent_apnfallbk_data* }
%struct.kev_netevent_apnfallbk_data = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }

@last_apn_fallback = common dso_local global i32 0, align 4
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_NETEVENT_SUBCLASS = common dso_local global i32 0, align 4
@KEV_NETEVENT_APNFALLBACK = common dso_local global i32 0, align 4
@SOF_DELEGATED = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"APN fallback notification issued.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.socket*)* @apn_fallback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apn_fallback_trigger(i32 %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kev_msg, align 8
  %7 = alloca %struct.kev_netevent_apnfallbk_data, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.socket* %1, %struct.socket** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 (...) @net_uptime()
  store i32 %9, i32* @last_apn_fallback, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @proc_pid(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @uuid_clear(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @proc_getexecutableuuid(i32 %14, i32 %15, i32 4)
  %17 = bitcast %struct.kev_msg* %6 to %struct.kev_netevent_apnfallbk_data*
  %18 = call i32 @bzero(%struct.kev_netevent_apnfallbk_data* %17, i32 32)
  %19 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %20 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %22 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @KEV_NETEVENT_SUBCLASS, align 4
  %24 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @KEV_NETEVENT_APNFALLBACK, align 4
  %26 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = call i32 @bzero(%struct.kev_netevent_apnfallbk_data* %7, i32 32)
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SOF_DELEGATED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load %struct.socket*, %struct.socket** %4, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kev_netevent_apnfallbk_data, %struct.kev_netevent_apnfallbk_data* %7, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.kev_netevent_apnfallbk_data, %struct.kev_netevent_apnfallbk_data* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @uuid_copy(i32 %40, i32 %43)
  br label %56

45:                                               ; preds = %2
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.kev_netevent_apnfallbk_data, %struct.kev_netevent_apnfallbk_data* %7, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.kev_netevent_apnfallbk_data, %struct.kev_netevent_apnfallbk_data* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.socket*, %struct.socket** %4, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @uuid_copy(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %45, %34
  %57 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store %struct.kev_netevent_apnfallbk_data* %7, %struct.kev_netevent_apnfallbk_data** %60, align 8
  %61 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 32, i32* %64, align 8
  %65 = bitcast %struct.kev_msg* %6 to %struct.kev_netevent_apnfallbk_data*
  %66 = call i32 @kev_post_msg(%struct.kev_netevent_apnfallbk_data* %65)
  %67 = load i32, i32* @LOG_INFO, align 4
  %68 = call i32 @apn_fallbk_log(i32 ptrtoint ([35 x i8]* @.str to i32))
  ret void
}

declare dso_local i32 @net_uptime(...) #1

declare dso_local i32 @proc_pid(i32) #1

declare dso_local i32 @uuid_clear(i32) #1

declare dso_local i32 @proc_getexecutableuuid(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.kev_netevent_apnfallbk_data*, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @kev_post_msg(%struct.kev_netevent_apnfallbk_data*) #1

declare dso_local i32 @apn_fallbk_log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
