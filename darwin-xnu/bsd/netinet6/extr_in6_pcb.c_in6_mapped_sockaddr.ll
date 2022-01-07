; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_mapped_sockaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_mapped_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.inpcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_mapped_sockaddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.inpcb* @sotoinpcb(%struct.socket* %8)
  store %struct.inpcb* %9, %struct.inpcb** %6, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %11 = icmp eq %struct.inpcb* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INP_IPV4, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %24 = call i32 @in_getsockaddr(%struct.socket* %22, %struct.sockaddr** %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %29 = call i32 @in6_sin_2_v4mapsin6_in_sock(%struct.sockaddr** %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %21
  br label %35

31:                                               ; preds = %14
  %32 = load %struct.socket*, %struct.socket** %4, align 8
  %33 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %34 = call i32 @in6_getsockaddr(%struct.socket* %32, %struct.sockaddr** %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @in_getsockaddr(%struct.socket*, %struct.sockaddr**) #1

declare dso_local i32 @in6_sin_2_v4mapsin6_in_sock(%struct.sockaddr**) #1

declare dso_local i32 @in6_getsockaddr(%struct.socket*, %struct.sockaddr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
