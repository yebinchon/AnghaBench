; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WQL_LINK = common dso_local global i64 0, align 8
@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@WQ_ITERATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i8*, %struct.waitq_link*)* @waitq_unlink_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_unlink_cb(%struct.waitq* %0, i8* %1, %struct.waitq_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.waitq_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.waitq_link*, align 8
  %10 = alloca %struct.waitq_link*, align 8
  %11 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %16 = call i64 @wql_type(%struct.waitq_link* %15)
  %17 = load i64, i64* @WQL_LINK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %49, %21
  %23 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %24 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.waitq_link* @wql_get_link(i32 %26)
  store %struct.waitq_link* %27, %struct.waitq_link** %10, align 8
  %28 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %29 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.waitq_link* @wql_get_link(i32 %31)
  store %struct.waitq_link* %32, %struct.waitq_link** %9, align 8
  %33 = load %struct.waitq*, %struct.waitq** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %36 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %37 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %38 = call i32 @waitq_maybe_remove_link(%struct.waitq* %33, i32 %34, %struct.waitq_link* %35, %struct.waitq_link* %36, %struct.waitq_link* %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %40 = call i32 @wql_put_link(%struct.waitq_link* %39)
  %41 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %42 = call i32 @wql_put_link(%struct.waitq_link* %41)
  %43 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %44 = call i32 @wql_is_valid(%struct.waitq_link* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %22
  %47 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  store i32 %47, i32* %4, align 4
  br label %55

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %22, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %46, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @wql_type(%struct.waitq_link*) #1

declare dso_local %struct.waitq_link* @wql_get_link(i32) #1

declare dso_local i32 @waitq_maybe_remove_link(%struct.waitq*, i32, %struct.waitq_link*, %struct.waitq_link*, %struct.waitq_link*) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

declare dso_local i32 @wql_is_valid(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
