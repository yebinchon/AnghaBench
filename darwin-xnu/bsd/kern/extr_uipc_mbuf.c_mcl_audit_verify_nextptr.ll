; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_verify_nextptr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_verify_nextptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MCACHE_FREE_PATTERN = common dso_local global i64 0, align 8
@mclverify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"mcl_audit: buffer %p modified after free at offset 0: %p out of range [%p-%p)\0A%s\0A\00", align 1
@mbutl = common dso_local global i32 0, align 4
@embutl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*)* @mcl_audit_verify_nextptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcl_audit_verify_nextptr(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @MBUF_IN_MAP(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* @MCACHE_FREE_PATTERN, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = icmp ne i8* %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @mclverify, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @mbutl, align 4
  %25 = load i32, i32* @embutl, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @mcache_dump_mca(%struct.TYPE_4__* %26)
  %28 = call i32 @panic(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23, i32 %24, i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %19, %16, %7, %2
  ret void
}

declare dso_local i32 @MBUF_IN_MAP(i8*) #1

declare dso_local i32 @panic(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mcache_dump_mca(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
