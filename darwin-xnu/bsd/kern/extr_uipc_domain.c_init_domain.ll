; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_init_domain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_init_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain = type { i32, i64, i32 (%struct.domain*)*, i32, i32, i32* }

@DOM_ATTACHED = common dso_local global i32 0, align 4
@DOM_INITIALIZED = common dso_local global i32 0, align 4
@domain_proto_mtx_grp = common dso_local global i32 0, align 4
@domain_proto_mtx_attr = common dso_local global i32 0, align 4
@_max_linkhdr = common dso_local global i32 0, align 4
@max_linkhdr = common dso_local global i32 0, align 4
@_max_protohdr = common dso_local global i64 0, align 8
@max_protohdr = common dso_local global i64 0, align 8
@max_hdr = common dso_local global i64 0, align 8
@MHLEN = common dso_local global i64 0, align 8
@max_datalen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain*)* @init_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_domain(%struct.domain* %0) #0 {
  %2 = alloca %struct.domain*, align 8
  store %struct.domain* %0, %struct.domain** %2, align 8
  %3 = load %struct.domain*, %struct.domain** %2, align 8
  %4 = getelementptr inbounds %struct.domain, %struct.domain* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @DOM_ATTACHED, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @VERIFY(i32 %7)
  %9 = load %struct.domain*, %struct.domain** %2, align 8
  %10 = getelementptr inbounds %struct.domain, %struct.domain* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DOM_INITIALIZED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %1
  %16 = load %struct.domain*, %struct.domain** %2, align 8
  %17 = getelementptr inbounds %struct.domain, %struct.domain* %16, i32 0, i32 4
  %18 = load i32, i32* @domain_proto_mtx_grp, align 4
  %19 = load i32, i32* @domain_proto_mtx_attr, align 4
  %20 = call i32 @lck_mtx_init(i32* %17, i32 %18, i32 %19)
  %21 = load %struct.domain*, %struct.domain** %2, align 8
  %22 = getelementptr inbounds %struct.domain, %struct.domain* %21, i32 0, i32 4
  %23 = load %struct.domain*, %struct.domain** %2, align 8
  %24 = getelementptr inbounds %struct.domain, %struct.domain* %23, i32 0, i32 5
  store i32* %22, i32** %24, align 8
  %25 = load %struct.domain*, %struct.domain** %2, align 8
  %26 = getelementptr inbounds %struct.domain, %struct.domain* %25, i32 0, i32 3
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.domain*, %struct.domain** %2, align 8
  %29 = getelementptr inbounds %struct.domain, %struct.domain* %28, i32 0, i32 2
  %30 = load i32 (%struct.domain*)*, i32 (%struct.domain*)** %29, align 8
  %31 = icmp ne i32 (%struct.domain*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %15
  %33 = load %struct.domain*, %struct.domain** %2, align 8
  %34 = getelementptr inbounds %struct.domain, %struct.domain* %33, i32 0, i32 2
  %35 = load i32 (%struct.domain*)*, i32 (%struct.domain*)** %34, align 8
  %36 = load %struct.domain*, %struct.domain** %2, align 8
  %37 = call i32 %35(%struct.domain* %36)
  br label %38

38:                                               ; preds = %32, %15
  %39 = load i32, i32* @DOM_INITIALIZED, align 4
  %40 = load %struct.domain*, %struct.domain** %2, align 8
  %41 = getelementptr inbounds %struct.domain, %struct.domain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %1
  %45 = load i32, i32* @_max_linkhdr, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 16, i32* @_max_linkhdr, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* @max_linkhdr, align 4
  store i32 %49, i32* @_max_linkhdr, align 4
  %50 = load %struct.domain*, %struct.domain** %2, align 8
  %51 = getelementptr inbounds %struct.domain, %struct.domain* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @_max_protohdr, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.domain*, %struct.domain** %2, align 8
  %57 = getelementptr inbounds %struct.domain, %struct.domain* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* @_max_protohdr, align 8
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i64, i64* @max_protohdr, align 8
  store i64 %60, i64* @_max_protohdr, align 8
  %61 = load i32, i32* @max_linkhdr, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @max_protohdr, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* @max_hdr, align 8
  %65 = load i64, i64* @MHLEN, align 8
  %66 = load i64, i64* @max_hdr, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* @max_datalen, align 8
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
