; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_CompositeTypeColumnDefList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_CompositeTypeColumnDefList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@InvalidOid = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @CompositeTypeColumnDefList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CompositeTypeColumnDefList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %9 = load i32, i32* @InvalidOid, align 4
  store i32 %9, i32* %4, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @typeidTypeRelid(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32* @relation_open(i32 %13, i32 %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_7__* @RelationGetDescr(i32* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %38, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %25, i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %24
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = call i32 @attributeFormToColumnDef(%struct.TYPE_8__* %35)
  %37 = call i32* @lappend(i32* %34, i32 %36)
  store i32* %37, i32** %7, align 8
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @AccessShareLock, align 4
  %44 = call i32 @relation_close(i32* %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  ret i32* %45
}

declare dso_local i32 @typeidTypeRelid(i32) #1

declare dso_local i32* @relation_open(i32, i32) #1

declare dso_local %struct.TYPE_7__* @RelationGetDescr(i32*) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @attributeFormToColumnDef(%struct.TYPE_8__*) #1

declare dso_local i32 @relation_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
