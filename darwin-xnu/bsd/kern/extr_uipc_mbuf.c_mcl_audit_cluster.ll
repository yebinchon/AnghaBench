; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_cluster.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@mclverify = common dso_local global i64 0, align 8
@MCACHE_FREE_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i64, i64)* @mcl_audit_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcl_audit_cluster(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* @mclverify, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @MCACHE_FREE_PATTERN, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @mcache_set_pattern(i32 %22, i8* %23, i64 %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @mcl_audit_verify_nextptr(%struct.TYPE_3__* %30, i32* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %36, align 8
  br label %37

37:                                               ; preds = %29, %26
  br label %50

38:                                               ; preds = %5
  %39 = load i64, i64* @mclverify, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @mcl_audit_verify_nextptr(%struct.TYPE_3__* %42, i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @mcache_audit_free_verify_set(i32* %45, i8* %46, i32 0, i64 %47)
  br label %49

49:                                               ; preds = %41, %38
  br label %50

50:                                               ; preds = %49, %37
  ret void
}

declare dso_local i32 @mcache_set_pattern(i32, i8*, i64) #1

declare dso_local i32 @mcl_audit_verify_nextptr(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @mcache_audit_free_verify_set(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
