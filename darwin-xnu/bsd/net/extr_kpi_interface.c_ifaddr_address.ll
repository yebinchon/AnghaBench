; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifaddr_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifaddr_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifaddr_address(%struct.TYPE_6__* %0, %struct.sockaddr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = icmp eq %struct.sockaddr* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = call i32 @IFA_LOCK_SPIN(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call i32 @IFA_UNLOCK(%struct.TYPE_6__* %24)
  %26 = load i32, i32* @ENOTSUP, align 4
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %43

41:                                               ; preds = %27
  %42 = load i64, i64* %7, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i64 [ %40, %35 ], [ %42, %41 ]
  store i64 %44, i64* %8, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @bcopy(%struct.TYPE_7__* %47, %struct.sockaddr* %48, i64 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = call i32 @IFA_UNLOCK(%struct.TYPE_6__* %59)
  %61 = load i32, i32* @EMSGSIZE, align 4
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %43
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = call i32 @IFA_UNLOCK(%struct.TYPE_6__* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %58, %23, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @IFA_LOCK_SPIN(%struct.TYPE_6__*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_7__*, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
