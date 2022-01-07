; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_netsrc.c_netsrc_policy_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_netsrc.c_netsrc_policy_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsrc_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.netsrc_rep = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.in6_addrpolicy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netsrc_req*, %struct.netsrc_rep*)* @netsrc_policy_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsrc_policy_common(%struct.netsrc_req* %0, %struct.netsrc_rep* %1) #0 {
  %3 = alloca %struct.netsrc_req*, align 8
  %4 = alloca %struct.netsrc_rep*, align 8
  %5 = alloca %struct.in6_addrpolicy*, align 8
  store %struct.netsrc_req* %0, %struct.netsrc_req** %3, align 8
  store %struct.netsrc_rep* %1, %struct.netsrc_rep** %4, align 8
  %6 = load %struct.netsrc_req*, %struct.netsrc_req** %3, align 8
  %7 = getelementptr inbounds %struct.netsrc_req, %struct.netsrc_req* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call %struct.in6_addrpolicy* @lookup_policy(i32* %8)
  store %struct.in6_addrpolicy* %9, %struct.in6_addrpolicy** %5, align 8
  %10 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %11 = icmp ne %struct.in6_addrpolicy* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %14 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %19 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %22 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %24 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %27 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %17, %12, %2
  %29 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %30 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call %struct.in6_addrpolicy* @lookup_policy(i32* %31)
  store %struct.in6_addrpolicy* %32, %struct.in6_addrpolicy** %5, align 8
  %33 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %34 = icmp ne %struct.in6_addrpolicy* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %37 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %42 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %45 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %47 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %50 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %35, %28
  ret void
}

declare dso_local %struct.in6_addrpolicy* @lookup_policy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
