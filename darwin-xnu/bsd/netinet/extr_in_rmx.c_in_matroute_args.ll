; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_rmx.c_in_matroute_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_rmx.c_in_matroute_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.radix_node_head = type { i32 }
%struct.rtentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, %struct.radix_node_head*, i32*, i8*)* @in_matroute_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @in_matroute_args(i8* %0, %struct.radix_node_head* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.radix_node_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.radix_node*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.radix_node_head* %1, %struct.radix_node_head** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call %struct.radix_node* @rn_match_args(i8* %10, %struct.radix_node_head* %11, i32* %12, i8* %13)
  store %struct.radix_node* %14, %struct.radix_node** %9, align 8
  %15 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %16 = icmp ne %struct.radix_node* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %19 = bitcast %struct.radix_node* %18 to %struct.rtentry*
  %20 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %19)
  %21 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %22 = call i32 @in_validate(%struct.radix_node* %21)
  %23 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %24 = bitcast %struct.radix_node* %23 to %struct.rtentry*
  %25 = call i32 @RT_UNLOCK(%struct.rtentry* %24)
  br label %26

26:                                               ; preds = %17, %4
  %27 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  ret %struct.radix_node* %27
}

declare dso_local %struct.radix_node* @rn_match_args(i8*, %struct.radix_node_head*, i32*, i8*) #1

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @in_validate(%struct.radix_node*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
