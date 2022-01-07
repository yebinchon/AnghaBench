; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq_link = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@WQSET_NOT_LINKED = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LINK_WALK_ONE_LEVEL = common dso_local global i32 0, align 4
@WQL_ALL = common dso_local global i32 0, align 4
@waitq_inset_cb = common dso_local global i32 0, align 4
@WQ_ITERATE_FOUND = common dso_local global i64 0, align 8
@KERN_ALREADY_IN_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.waitq*, i64, %struct.waitq_link*)* @waitq_link_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @waitq_link_internal(%struct.waitq* %0, i64 %1, %struct.waitq_link* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.waitq_link*, align 8
  %8 = alloca %struct.waitq_link*, align 8
  %9 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %7, align 8
  %10 = load %struct.waitq*, %struct.waitq** %5, align 8
  %11 = call i32 @waitq_held(%struct.waitq* %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @WQSET_NOT_LINKED, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.waitq*, %struct.waitq** %5, align 8
  %23 = getelementptr inbounds %struct.waitq, %struct.waitq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.waitq*, %struct.waitq** %5, align 8
  %29 = getelementptr inbounds %struct.waitq, %struct.waitq* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %30, i64* %4, align 8
  br label %80

31:                                               ; preds = %3
  %32 = load %struct.waitq*, %struct.waitq** %5, align 8
  %33 = getelementptr inbounds %struct.waitq, %struct.waitq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.waitq_link* @wql_get_link(i64 %34)
  store %struct.waitq_link* %35, %struct.waitq_link** %8, align 8
  %36 = load %struct.waitq_link*, %struct.waitq_link** %8, align 8
  %37 = icmp ne %struct.waitq_link* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.waitq*, %struct.waitq** %5, align 8
  %41 = getelementptr inbounds %struct.waitq, %struct.waitq* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %42, i64* %4, align 8
  br label %80

43:                                               ; preds = %31
  %44 = load %struct.waitq_link*, %struct.waitq_link** %8, align 8
  %45 = call i32 @wql_put_link(%struct.waitq_link* %44)
  %46 = load i32, i32* @LINK_WALK_ONE_LEVEL, align 4
  %47 = load %struct.waitq*, %struct.waitq** %5, align 8
  %48 = load %struct.waitq*, %struct.waitq** %5, align 8
  %49 = getelementptr inbounds %struct.waitq, %struct.waitq* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @WQL_ALL, align 4
  %52 = bitcast i64* %6 to i8*
  %53 = load i32, i32* @waitq_inset_cb, align 4
  %54 = call i64 @walk_waitq_links(i32 %46, %struct.waitq* %47, i64 %50, i32 %51, i8* %52, i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @WQ_ITERATE_FOUND, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i64, i64* @KERN_ALREADY_IN_SET, align 8
  store i64 %59, i64* %4, align 8
  br label %80

60:                                               ; preds = %43
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %63 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.waitq*, %struct.waitq** %5, align 8
  %66 = getelementptr inbounds %struct.waitq, %struct.waitq* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %69 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %72 = call i32 @wql_mkvalid(%struct.waitq_link* %71)
  %73 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %74 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.waitq*, %struct.waitq** %5, align 8
  %78 = getelementptr inbounds %struct.waitq, %struct.waitq* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %60, %58, %38, %26
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_held(%struct.waitq*) #1

declare dso_local %struct.waitq_link* @wql_get_link(i64) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

declare dso_local i64 @walk_waitq_links(i32, %struct.waitq*, i64, i32, i8*, i32) #1

declare dso_local i32 @wql_mkvalid(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
