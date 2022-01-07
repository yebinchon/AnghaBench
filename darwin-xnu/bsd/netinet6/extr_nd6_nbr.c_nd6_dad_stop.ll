; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_stop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.dadq = type { i32 }

@nd6_dad_timer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_dad_stop(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.dadq*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %4 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %5 = call %struct.dadq* @nd6_dad_find(%struct.ifaddr* %4, i32* null)
  store %struct.dadq* %5, %struct.dadq** %3, align 8
  %6 = load %struct.dadq*, %struct.dadq** %3, align 8
  %7 = icmp ne %struct.dadq* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load i64, i64* @nd6_dad_timer, align 8
  %11 = inttoptr i64 %10 to void (i8*)*
  %12 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %13 = bitcast %struct.ifaddr* %12 to i8*
  %14 = call i32 @untimeout(void (i8*)* %11, i8* %13)
  %15 = load %struct.dadq*, %struct.dadq** %3, align 8
  %16 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %17 = call i32 @nd6_dad_detach(%struct.dadq* %15, %struct.ifaddr* %16)
  %18 = load %struct.dadq*, %struct.dadq** %3, align 8
  %19 = call i32 @DAD_REMREF(%struct.dadq* %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.dadq* @nd6_dad_find(%struct.ifaddr*, i32*) #1

declare dso_local i32 @untimeout(void (i8*)*, i8*) #1

declare dso_local i32 @nd6_dad_detach(%struct.dadq*, %struct.ifaddr*) #1

declare dso_local i32 @DAD_REMREF(%struct.dadq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
