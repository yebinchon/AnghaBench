; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_dinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_dinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain = type { i32 }
%struct.protosw = type { i32 }

@DOM_INITIALIZED = common dso_local global i32 0, align 4
@keydomain = common dso_local global %struct.domain* null, align 8
@keysw = common dso_local global %struct.protosw* null, align 8
@key_proto_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain*)* @key_dinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_dinit(%struct.domain* %0) #0 {
  %2 = alloca %struct.domain*, align 8
  %3 = alloca %struct.protosw*, align 8
  %4 = alloca i32, align 4
  store %struct.domain* %0, %struct.domain** %2, align 8
  %5 = load %struct.domain*, %struct.domain** %2, align 8
  %6 = getelementptr inbounds %struct.domain, %struct.domain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DOM_INITIALIZED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load %struct.domain*, %struct.domain** @keydomain, align 8
  %15 = icmp eq %struct.domain* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.domain*, %struct.domain** %2, align 8
  store %struct.domain* %18, %struct.domain** @keydomain, align 8
  store i32 0, i32* %4, align 4
  %19 = load %struct.protosw*, %struct.protosw** @keysw, align 8
  %20 = getelementptr inbounds %struct.protosw, %struct.protosw* %19, i64 0
  store %struct.protosw* %20, %struct.protosw** %3, align 8
  br label %21

21:                                               ; preds = %29, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @key_proto_count, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.protosw*, %struct.protosw** %3, align 8
  %27 = load %struct.domain*, %struct.domain** %2, align 8
  %28 = call i32 @net_add_proto(%struct.protosw* %26, %struct.domain* %27, i32 1)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = load %struct.protosw*, %struct.protosw** %3, align 8
  %33 = getelementptr inbounds %struct.protosw, %struct.protosw* %32, i32 1
  store %struct.protosw* %33, %struct.protosw** %3, align 8
  br label %21

34:                                               ; preds = %21
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @net_add_proto(%struct.protosw*, %struct.domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
