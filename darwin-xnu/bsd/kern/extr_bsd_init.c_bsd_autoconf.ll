; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_init.c_bsd_autoconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_init.c_bsd_autoconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseudo_init = type { i32, i32 (i32)* }

@.str = private unnamed_addr constant [30 x i8] c"bsd_autoconf: calling kminit\0A\00", align 1
@pseudo_inits = common dso_local global %struct.pseudo_init* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsd_autoconf() #0 {
  %1 = alloca %struct.pseudo_init*, align 8
  %2 = call i32 @kprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @kminit()
  %4 = load %struct.pseudo_init*, %struct.pseudo_init** @pseudo_inits, align 8
  store %struct.pseudo_init* %4, %struct.pseudo_init** %1, align 8
  br label %5

5:                                                ; preds = %18, %0
  %6 = load %struct.pseudo_init*, %struct.pseudo_init** %1, align 8
  %7 = getelementptr inbounds %struct.pseudo_init, %struct.pseudo_init* %6, i32 0, i32 1
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.pseudo_init*, %struct.pseudo_init** %1, align 8
  %12 = getelementptr inbounds %struct.pseudo_init, %struct.pseudo_init* %11, i32 0, i32 1
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load %struct.pseudo_init*, %struct.pseudo_init** %1, align 8
  %15 = getelementptr inbounds %struct.pseudo_init, %struct.pseudo_init* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %13(i32 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load %struct.pseudo_init*, %struct.pseudo_init** %1, align 8
  %20 = getelementptr inbounds %struct.pseudo_init, %struct.pseudo_init* %19, i32 1
  store %struct.pseudo_init* %20, %struct.pseudo_init** %1, align 8
  br label %5

21:                                               ; preds = %5
  %22 = call i32 (...) @IOKitBSDInit()
  ret i32 %22
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @kminit(...) #1

declare dso_local i32 @IOKitBSDInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
