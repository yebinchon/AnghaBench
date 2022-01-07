; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_cecservice.c_cecservice_logging_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_cecservice.c_cecservice_logging_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cecservice_log_initialised = common dso_local global i32 0, align 4
@cechost_log_category = common dso_local global i32 0, align 4
@VCOS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cecservice-client\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CEC HOST: log initialised\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cecservice_logging_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cecservice_logging_init() #0 {
  %1 = load i32, i32* @cecservice_log_initialised, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @VCOS_LOG_WARN, align 4
  %5 = call i32 @vcos_log_set_level(i32* @cechost_log_category, i32 %4)
  %6 = call i32 @vcos_log_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* @cechost_log_category)
  %7 = call i32 @vc_cec_log_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @cecservice_log_initialised, align 4
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @vcos_log_set_level(i32*, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32*) #1

declare dso_local i32 @vc_cec_log_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
