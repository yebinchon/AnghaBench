; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_restore_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_restore_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i32, %struct.mbuf* }
%struct.TYPE_4__ = type { i64 }

@M_EXT = common dso_local global i64 0, align 8
@AUDIT_CONTENTS_SIZE = common dso_local global i64 0, align 8
@MCA_SAVED_MBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.TYPE_4__*, i64)* @mcl_audit_restore_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcl_audit_restore_mbuf(%struct.mbuf* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call %struct.mbuf* @MCA_SAVED_MBUF_PTR(%struct.TYPE_4__* %9)
  store %struct.mbuf* %10, %struct.mbuf** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %3
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 2
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @M_EXT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = call i32* @m_get_rfa(%struct.mbuf* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = call i64 @MBUF_IS_COMPOSITE(%struct.mbuf* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %22, %13
  %31 = phi i1 [ false, %22 ], [ false, %13 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AUDIT_CONTENTS_SIZE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @VERIFY(i32 %39)
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %43 = load i32, i32* @MCA_SAVED_MBUF_SIZE, align 4
  %44 = call i32 @bcopy(%struct.mbuf* %41, %struct.mbuf* %42, i32 %43)
  %45 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 2
  store %struct.mbuf* %45, %struct.mbuf** %47, align 8
  br label %54

48:                                               ; preds = %3
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %30
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = call i32 @_MCHECK(%struct.mbuf* %55)
  ret void
}

declare dso_local %struct.mbuf* @MCA_SAVED_MBUF_PTR(%struct.TYPE_4__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @m_get_rfa(%struct.mbuf*) #1

declare dso_local i64 @MBUF_IS_COMPOSITE(%struct.mbuf*) #1

declare dso_local i32 @bcopy(%struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @_MCHECK(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
