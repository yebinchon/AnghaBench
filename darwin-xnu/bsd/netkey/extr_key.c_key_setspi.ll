; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_setspi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_setspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@spihash = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.secasvar*, i32)* @key_setspi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_setspi(%struct.secasvar* %0, i32 %1) #0 {
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca i32, align 4
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @sadb_mutex, align 4
  %6 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %7 = call i32 @LCK_MTX_ASSERT(i32 %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %10 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %12 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %18 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %2
  %23 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %24 = load i32*, i32** @spihash, align 8
  %25 = call i32 @LIST_REMOVE(%struct.secasvar* %23, i32* %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32*, i32** @spihash, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @SPIHASH(i32 %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %32 = load i32*, i32** @spihash, align 8
  %33 = call i32 @LIST_INSERT_HEAD(i32* %30, %struct.secasvar* %31, i32* %32)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.secasvar*, i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.secasvar*, i32*) #1

declare dso_local i64 @SPIHASH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
