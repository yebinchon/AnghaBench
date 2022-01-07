; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rn_match_ifscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rn_match_ifscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i32 }
%struct.matchleaf_arg = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@RTF_IFSCOPE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @rn_match_ifscope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn_match_ifscope(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.matchleaf_arg*, align 8
  %8 = alloca i32, align 4
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %10 = bitcast %struct.radix_node* %9 to %struct.rtentry*
  store %struct.rtentry* %10, %struct.rtentry** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.matchleaf_arg*
  store %struct.matchleaf_arg* %12, %struct.matchleaf_arg** %7, align 8
  %13 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %14 = call %struct.TYPE_6__* @rt_key(%struct.rtentry* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTF_IFSCOPE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AF_INET, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AF_INET6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %60

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AF_INET, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %38 = call %struct.TYPE_6__* @rt_key(%struct.rtentry* %37)
  %39 = call %struct.TYPE_7__* @SINIFSCOPE(%struct.TYPE_6__* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.matchleaf_arg*, %struct.matchleaf_arg** %7, align 8
  %43 = getelementptr inbounds %struct.matchleaf_arg, %struct.matchleaf_arg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  br label %58

47:                                               ; preds = %32
  %48 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %49 = call %struct.TYPE_6__* @rt_key(%struct.rtentry* %48)
  %50 = call %struct.TYPE_8__* @SIN6IFSCOPE(%struct.TYPE_6__* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.matchleaf_arg*, %struct.matchleaf_arg** %7, align 8
  %54 = getelementptr inbounds %struct.matchleaf_arg, %struct.matchleaf_arg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %47, %36
  %59 = phi i32 [ %46, %36 ], [ %57, %47 ]
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %31
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_6__* @rt_key(%struct.rtentry*) #1

declare dso_local %struct.TYPE_7__* @SINIFSCOPE(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_8__* @SIN6IFSCOPE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
