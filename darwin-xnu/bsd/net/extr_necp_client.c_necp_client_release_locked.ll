; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_release_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_release_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_client*)* @necp_client_release_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_release_locked(%struct.necp_client* %0) #0 {
  %2 = alloca %struct.necp_client*, align 8
  %3 = alloca i32, align 4
  store %struct.necp_client* %0, %struct.necp_client** %2, align 8
  %4 = load %struct.necp_client*, %struct.necp_client** %2, align 8
  %5 = call i32 @NECP_CLIENT_ASSERT_LOCKED(%struct.necp_client* %4)
  %6 = load %struct.necp_client*, %struct.necp_client** %2, align 8
  %7 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.necp_client*, %struct.necp_client** %2, align 8
  %10 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.necp_client*, %struct.necp_client** %2, align 8
  %16 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.necp_client*, %struct.necp_client** %2, align 8
  %22 = call i32 @necp_client_free(%struct.necp_client* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @NECP_CLIENT_ASSERT_LOCKED(%struct.necp_client*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @necp_client_free(%struct.necp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
