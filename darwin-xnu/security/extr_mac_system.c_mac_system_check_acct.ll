; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_system.c_mac_system_check_acct.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_system.c_mac_system_check_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32* }

@system_check_acct = common dso_local global i32 0, align 4
@mac_system_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_system_check_acct(i32 %0, %struct.vnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %6 = load i32, i32* @system_check_acct, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = icmp ne %struct.vnode* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32* [ %14, %11 ], [ null, %15 ]
  %18 = call i32 @MAC_CHECK(i32 %6, i32 %7, %struct.vnode* %8, i32* %17)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @MAC_CHECK(i32, i32, %struct.vnode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
