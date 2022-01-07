; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_sa_chgstate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_sa_chgstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"key_sa_chgstate called with sav == NULL\00", align 1
@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_sa_chgstate(%struct.secasvar* %0, i64 %1) #0 {
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca i64, align 8
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %6 = icmp eq %struct.secasvar* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %11 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %41

16:                                               ; preds = %9
  %17 = load i32, i32* @sadb_mutex, align 4
  %18 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %19 = call i32 @LCK_MTX_ASSERT(i32 %17, i32 %18)
  %20 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %21 = call i64 @__LIST_CHAINED(%struct.secasvar* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %25 = load i32, i32* @chain, align 4
  %26 = call i32 @LIST_REMOVE(%struct.secasvar* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %30 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %32 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %39 = load i32, i32* @chain, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* %37, %struct.secasvar* %38, i32 %39)
  br label %41

41:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i64 @__LIST_CHAINED(%struct.secasvar*) #1

declare dso_local i32 @LIST_REMOVE(%struct.secasvar*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.secasvar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
