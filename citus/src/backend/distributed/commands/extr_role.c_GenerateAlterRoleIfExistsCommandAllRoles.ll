; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_role.c_GenerateAlterRoleIfExistsCommandAllRoles.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_role.c_GenerateAlterRoleIfExistsCommandAllRoles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AuthIdRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@ForwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GenerateAlterRoleIfExistsCommandAllRoles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @AuthIdRelationId, align 4
  %9 = load i32, i32* @AccessShareLock, align 4
  %10 = call i32 @heap_open(i32 %8, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @RelationGetDescr(i32 %11)
  store i32 %12, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %13 = load i32*, i32** @NIL, align 8
  store i32* %13, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @heap_beginscan_catalog(i32 %14, i32 0, i32* null)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %32, %31, %0
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ForwardScanDirection, align 4
  %19 = call i32* @heap_getnext(i32 %17, i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @GETSTRUCT(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @NameStr(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @IsReservedName(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %16

32:                                               ; preds = %21
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i8* @GenerateAlterRoleIfExistsCommand(i32* %33, i32 %34)
  store i8* %35, i8** %5, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32* @lappend(i32* %36, i8* %37)
  store i32* %38, i32** %4, align 8
  br label %16

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @heap_endscan(i32 %40)
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @AccessShareLock, align 4
  %44 = call i32 @heap_close(i32 %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  ret i32* %45
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @heap_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i64 @IsReservedName(i8*) #1

declare dso_local i8* @GenerateAlterRoleIfExistsCommand(i32*, i32) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i32 @heap_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
