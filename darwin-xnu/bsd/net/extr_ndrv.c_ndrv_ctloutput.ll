; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_ctloutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i32, i32, i32 }
%struct.ndrv_cb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*)* @ndrv_ctloutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndrv_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ndrv_cb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.ndrv_cb* @sotondrvcb(%struct.socket* %8)
  store %struct.ndrv_cb* %9, %struct.ndrv_cb** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %11 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %40 [
    i32 130, label %13
    i32 128, label %28
    i32 131, label %32
    i32 129, label %36
  ]

13:                                               ; preds = %2
  %14 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %15 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %20 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.ndrv_cb*, %struct.ndrv_cb** %6, align 8
  %27 = call i32 @ndrv_delspec(%struct.ndrv_cb* %26)
  store i32 %27, i32* %7, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.ndrv_cb*, %struct.ndrv_cb** %6, align 8
  %30 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %31 = call i32 @ndrv_setspec(%struct.ndrv_cb* %29, %struct.sockopt* %30)
  store i32 %31, i32* %7, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.ndrv_cb*, %struct.ndrv_cb** %6, align 8
  %34 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %35 = call i32 @ndrv_do_add_multicast(%struct.ndrv_cb* %33, %struct.sockopt* %34)
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.ndrv_cb*, %struct.ndrv_cb** %6, align 8
  %38 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %39 = call i32 @ndrv_do_remove_multicast(%struct.ndrv_cb* %37, %struct.sockopt* %38)
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @ENOTSUP, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %36, %32, %28, %25
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ndrv_cb* @sotondrvcb(%struct.socket*) #1

declare dso_local i32 @ndrv_delspec(%struct.ndrv_cb*) #1

declare dso_local i32 @ndrv_setspec(%struct.ndrv_cb*, %struct.sockopt*) #1

declare dso_local i32 @ndrv_do_add_multicast(%struct.ndrv_cb*, %struct.sockopt*) #1

declare dso_local i32 @ndrv_do_remove_multicast(%struct.ndrv_cb*, %struct.sockopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
