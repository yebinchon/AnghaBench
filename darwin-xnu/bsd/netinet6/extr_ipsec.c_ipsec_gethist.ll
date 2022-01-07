; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_gethist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_gethist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_history = type { i32 }
%struct.mbuf = type { i32 }
%struct.ipsec_tag = type { i32, %struct.ipsec_history* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipsec_history* @ipsec_gethist(%struct.mbuf* %0, i32* %1) #0 {
  %3 = alloca %struct.ipsec_history*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ipsec_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = call %struct.ipsec_tag* @ipsec_findaux(%struct.mbuf* %7)
  store %struct.ipsec_tag* %8, %struct.ipsec_tag** %6, align 8
  %9 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %10 = icmp ne %struct.ipsec_tag* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ipsec_history* null, %struct.ipsec_history** %3, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %14 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.ipsec_history* null, %struct.ipsec_history** %3, align 8
  br label %33

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %23 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %31 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %30, i32 0, i32 1
  %32 = load %struct.ipsec_history*, %struct.ipsec_history** %31, align 8
  store %struct.ipsec_history* %32, %struct.ipsec_history** %3, align 8
  br label %33

33:                                               ; preds = %29, %17, %11
  %34 = load %struct.ipsec_history*, %struct.ipsec_history** %3, align 8
  ret %struct.ipsec_history* %34
}

declare dso_local %struct.ipsec_tag* @ipsec_findaux(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
