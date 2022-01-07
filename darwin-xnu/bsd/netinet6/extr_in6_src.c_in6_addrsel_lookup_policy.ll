; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_addrsel_lookup_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_addrsel_lookup_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addrpolicy = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@defaultaddrpolicy = common dso_local global %struct.in6_addrpolicy zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_addrpolicy* @in6_addrsel_lookup_policy(%struct.sockaddr_in6* %0) #0 {
  %2 = alloca %struct.sockaddr_in6*, align 8
  %3 = alloca %struct.in6_addrpolicy*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %2, align 8
  store %struct.in6_addrpolicy* null, %struct.in6_addrpolicy** %3, align 8
  %4 = call i32 (...) @ADDRSEL_LOCK()
  %5 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %6 = call %struct.in6_addrpolicy* @match_addrsel_policy(%struct.sockaddr_in6* %5)
  store %struct.in6_addrpolicy* %6, %struct.in6_addrpolicy** %3, align 8
  %7 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %3, align 8
  %8 = icmp eq %struct.in6_addrpolicy* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.in6_addrpolicy* @defaultaddrpolicy, %struct.in6_addrpolicy** %3, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %3, align 8
  %12 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %10, %9
  %16 = call i32 (...) @ADDRSEL_UNLOCK()
  %17 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %3, align 8
  ret %struct.in6_addrpolicy* %17
}

declare dso_local i32 @ADDRSEL_LOCK(...) #1

declare dso_local %struct.in6_addrpolicy* @match_addrsel_policy(%struct.sockaddr_in6*) #1

declare dso_local i32 @ADDRSEL_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
