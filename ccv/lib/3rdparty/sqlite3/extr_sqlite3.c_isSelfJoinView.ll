; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isSelfJoinView.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isSelfJoinView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SrcList_item* (%struct.TYPE_7__*, %struct.SrcList_item*)* @isSelfJoinView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SrcList_item* @isSelfJoinView(%struct.TYPE_7__* %0, %struct.SrcList_item* %1) #0 {
  %3 = alloca %struct.SrcList_item*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.SrcList_item*, align 8
  %6 = alloca %struct.SrcList_item*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.SrcList_item* %1, %struct.SrcList_item** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  store %struct.SrcList_item* %9, %struct.SrcList_item** %6, align 8
  br label %10

10:                                               ; preds = %69, %2
  %11 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %12 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %13 = icmp ult %struct.SrcList_item* %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %16 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %69

20:                                               ; preds = %14
  %21 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %22 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %69

27:                                               ; preds = %20
  %28 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %29 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %69

33:                                               ; preds = %27
  %34 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %35 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %38 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @sqlite3_stricmp(i64 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %69

43:                                               ; preds = %33
  %44 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %45 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %48 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @sqlite3_stricmp(i64 %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %69

53:                                               ; preds = %43
  %54 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %55 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %60 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @sqlite3ExprCompare(i32 0, i32 %58, i32 %63, i32 -1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %69

67:                                               ; preds = %53
  %68 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  store %struct.SrcList_item* %68, %struct.SrcList_item** %3, align 8
  br label %73

69:                                               ; preds = %66, %52, %42, %32, %26, %19
  %70 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %71 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %70, i32 1
  store %struct.SrcList_item* %71, %struct.SrcList_item** %6, align 8
  br label %10

72:                                               ; preds = %10
  store %struct.SrcList_item* null, %struct.SrcList_item** %3, align 8
  br label %73

73:                                               ; preds = %72, %67
  %74 = load %struct.SrcList_item*, %struct.SrcList_item** %3, align 8
  ret %struct.SrcList_item* %74
}

declare dso_local i64 @sqlite3_stricmp(i64, i64) #1

declare dso_local i64 @sqlite3ExprCompare(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
