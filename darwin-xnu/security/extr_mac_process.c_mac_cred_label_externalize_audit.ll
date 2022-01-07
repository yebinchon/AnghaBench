; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_process.c_mac_cred_label_externalize_audit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_process.c_mac_cred_label_externalize_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.mac = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@cred = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_cred_label_externalize_audit(%struct.proc* %0, %struct.mac* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.mac*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.mac* %1, %struct.mac** %4, align 8
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = call %struct.TYPE_4__* @kauth_cred_proc_ref(%struct.proc* %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* @cred, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mac*, %struct.mac** %4, align 8
  %14 = getelementptr inbounds %struct.mac, %struct.mac* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mac*, %struct.mac** %4, align 8
  %17 = getelementptr inbounds %struct.mac, %struct.mac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MAC_EXTERNALIZE_AUDIT(i32 %9, i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = call i32 @kauth_cred_unref(%struct.TYPE_4__** %5)
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local %struct.TYPE_4__* @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i32 @MAC_EXTERNALIZE_AUDIT(i32, i32, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
