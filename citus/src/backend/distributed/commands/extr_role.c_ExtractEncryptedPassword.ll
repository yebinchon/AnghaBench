; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_role.c_ExtractEncryptedPassword.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_role.c_ExtractEncryptedPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AuthIdRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@AUTHOID = common dso_local global i32 0, align 4
@Anum_pg_authid_rolpassword = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ExtractEncryptedPassword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ExtractEncryptedPassword(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @AuthIdRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @heap_open(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @RelationGetDescr(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @AUTHOID, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @SearchSysCache1(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %38

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @Anum_pg_authid_rolpassword, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @heap_getattr(i32 %22, i32 %23, i32 %24, i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = call i32 @heap_close(i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ReleaseSysCache(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i8* null, i8** %2, align 8
  br label %38

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @TextDatumGetCString(i32 %35)
  %37 = call i8* @pstrdup(i32 %36)
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %34, %33, %20
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
