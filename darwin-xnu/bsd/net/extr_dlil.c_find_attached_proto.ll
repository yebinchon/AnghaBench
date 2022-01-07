; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_find_attached_proto.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_find_attached_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_proto = type { i64 }
%struct.ifnet = type { i32* }

@IFNET_LCK_ASSERT_OWNED = common dso_local global i32 0, align 4
@next_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.if_proto* (%struct.ifnet*, i64)* @find_attached_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.if_proto* @find_attached_proto(%struct.ifnet* %0, i64 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.if_proto*, align 8
  %6 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.if_proto* null, %struct.if_proto** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @proto_hash_value(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = load i32, i32* @IFNET_LCK_ASSERT_OWNED, align 4
  %11 = call i32 @ifnet_lock_assert(%struct.ifnet* %9, i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call %struct.if_proto* @SLIST_FIRST(i32* %21)
  store %struct.if_proto* %22, %struct.if_proto** %5, align 8
  br label %23

23:                                               ; preds = %16, %2
  br label %24

24:                                               ; preds = %35, %23
  %25 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %26 = icmp ne %struct.if_proto* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %29 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %37 = load i32, i32* @next_hash, align 4
  %38 = call %struct.if_proto* @SLIST_NEXT(%struct.if_proto* %36, i32 %37)
  store %struct.if_proto* %38, %struct.if_proto** %5, align 8
  br label %24

39:                                               ; preds = %33
  %40 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %41 = icmp ne %struct.if_proto* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %44 = call i32 @if_proto_ref(%struct.if_proto* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  ret %struct.if_proto* %46
}

declare dso_local i64 @proto_hash_value(i64) #1

declare dso_local i32 @ifnet_lock_assert(%struct.ifnet*, i32) #1

declare dso_local %struct.if_proto* @SLIST_FIRST(i32*) #1

declare dso_local %struct.if_proto* @SLIST_NEXT(%struct.if_proto*, i32) #1

declare dso_local i32 @if_proto_ref(%struct.if_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
