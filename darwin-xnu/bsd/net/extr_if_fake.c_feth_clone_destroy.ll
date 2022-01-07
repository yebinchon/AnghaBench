; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @feth_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feth_clone_destroy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @feth_lock()
  %6 = load i32, i32* %3, align 4
  %7 = call i32* @ifnet_get_if_fake(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @feth_is_detaching(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = call i32 (...) @feth_unlock()
  store i32 0, i32* %2, align 4
  br label %24

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @feth_set_detaching(i32* %17)
  %19 = call i32 (...) @feth_unlock()
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @feth_config(i32 %20, i32* null)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ifnet_detach(i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %16, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @feth_lock(...) #1

declare dso_local i32* @ifnet_get_if_fake(i32) #1

declare dso_local i64 @feth_is_detaching(i32*) #1

declare dso_local i32 @feth_unlock(...) #1

declare dso_local i32 @feth_set_detaching(i32*) #1

declare dso_local i32 @feth_config(i32, i32*) #1

declare dso_local i32 @ifnet_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
