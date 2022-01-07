; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_policy_check.c_hook_policy_initbsd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_policy_check.c_hook_policy_initbsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_policy_conf = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"hook_policy_initbsd: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_policy_conf*)* @hook_policy_initbsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook_policy_initbsd(%struct.mac_policy_conf* %0) #0 {
  %2 = alloca %struct.mac_policy_conf*, align 8
  store %struct.mac_policy_conf* %0, %struct.mac_policy_conf** %2, align 8
  %3 = load %struct.mac_policy_conf*, %struct.mac_policy_conf** %2, align 8
  %4 = getelementptr inbounds %struct.mac_policy_conf, %struct.mac_policy_conf* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %5)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
