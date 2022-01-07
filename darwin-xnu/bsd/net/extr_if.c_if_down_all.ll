; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_down_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_down_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@IFNET_FAMILY_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_down_all() #0 {
  %1 = alloca %struct.ifnet**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @IFNET_FAMILY_ANY, align 4
  %5 = call i64 @ifnet_list_get_all(i32 %4, %struct.ifnet*** %1, i64* %2)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %0
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.ifnet**, %struct.ifnet*** %1, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %13, i64 %14
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  %17 = call i32 @if_down(%struct.ifnet* %16)
  %18 = load %struct.ifnet**, %struct.ifnet*** %1, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %18, i64 %19
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  %22 = call i32 @dlil_proto_unplumb_all(%struct.ifnet* %21)
  br label %23

23:                                               ; preds = %12
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.ifnet**, %struct.ifnet*** %1, align 8
  %28 = call i32 @ifnet_list_free(%struct.ifnet** %27)
  br label %29

29:                                               ; preds = %26, %0
  ret i32 0
}

declare dso_local i64 @ifnet_list_get_all(i32, %struct.ifnet***, i64*) #1

declare dso_local i32 @if_down(%struct.ifnet*) #1

declare dso_local i32 @dlil_proto_unplumb_all(%struct.ifnet*) #1

declare dso_local i32 @ifnet_list_free(%struct.ifnet**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
