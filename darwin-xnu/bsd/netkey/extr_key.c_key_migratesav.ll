; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_migratesav.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_migratesav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i64, %struct.secashead* }
%struct.secashead = type { i32* }

@SADB_SASTATE_MATURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@secasvar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasvar*, %struct.secashead*)* @key_migratesav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_migratesav(%struct.secasvar* %0, %struct.secashead* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.secasvar*, align 8
  %5 = alloca %struct.secashead*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %4, align 8
  store %struct.secashead* %1, %struct.secashead** %5, align 8
  %6 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %7 = icmp eq %struct.secasvar* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load %struct.secashead*, %struct.secashead** %5, align 8
  %10 = icmp eq %struct.secashead* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %13 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SADB_SASTATE_MATURE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %8, %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %11
  %20 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %21 = call i64 @__LIST_CHAINED(%struct.secasvar* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %25 = load i32, i32* @chain, align 4
  %26 = call i32 @LIST_REMOVE(%struct.secasvar* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.secashead*, %struct.secashead** %5, align 8
  %29 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %30 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %29, i32 0, i32 1
  store %struct.secashead* %28, %struct.secashead** %30, align 8
  %31 = load %struct.secashead*, %struct.secashead** %5, align 8
  %32 = getelementptr inbounds %struct.secashead, %struct.secashead* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @SADB_SASTATE_MATURE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %37 = load i32, i32* @secasvar, align 4
  %38 = load i32, i32* @chain, align 4
  %39 = call i32 @LIST_INSERT_TAIL(i32* %35, %struct.secasvar* %36, i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %27, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @__LIST_CHAINED(%struct.secasvar*) #1

declare dso_local i32 @LIST_REMOVE(%struct.secasvar*, i32) #1

declare dso_local i32 @LIST_INSERT_TAIL(i32*, %struct.secasvar*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
