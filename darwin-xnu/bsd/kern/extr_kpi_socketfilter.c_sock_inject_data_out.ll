; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sock_inject_data_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sock_inject_data_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@sock_data_filt_flag_oob = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_inject_data_out(%struct.TYPE_4__* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOTSUP, align 4
  store i32 %20, i32* %6, align 4
  br label %37

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @sock_data_filt_flag_oob, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @MSG_OOB, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %31 = ptrtoint %struct.sockaddr* %30 to i64
  %32 = inttoptr i64 %31 to %struct.sockaddr*
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @sosend(%struct.TYPE_4__* %29, %struct.sockaddr* %32, i32* null, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %19
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @sosend(%struct.TYPE_4__*, %struct.sockaddr*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
