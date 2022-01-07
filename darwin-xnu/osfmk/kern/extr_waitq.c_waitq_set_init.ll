; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i32, i8*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.waitq_link = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.waitq_set* }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@WQT_SET = common dso_local global i32 0, align 4
@SYNC_POLICY_PREPOST = common dso_local global i32 0, align 4
@WQL_WQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't allocate link object for waitq set: %p\00", align 1
@WQSET_NOT_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @waitq_set_init(%struct.waitq_set* %0, i32 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.waitq_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.waitq_link*, align 8
  %11 = alloca i64, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %13 = call i32 @memset(%struct.waitq_set* %12, i32 0, i32 32)
  %14 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %15 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %14, i32 0, i32 2
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @waitq_init(%struct.TYPE_6__* %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @KERN_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %5, align 8
  br label %88

23:                                               ; preds = %4
  %24 = load i32, i32* @WQT_SET, align 4
  %25 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %26 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SYNC_POLICY_PREPOST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %34 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %37 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp eq i8* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %49

42:                                               ; preds = %23
  %43 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %44 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %48 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i64*, i64** %8, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %82

52:                                               ; preds = %49
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @WQL_WQS, align 4
  %60 = call %struct.waitq_link* @wql_get_reserved(i64 %58, i32 %59)
  store %struct.waitq_link* %60, %struct.waitq_link** %10, align 8
  %61 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %62 = icmp ne %struct.waitq_link* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %65 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.waitq_set* %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i64*, i64** %8, align 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %69 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %70 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store %struct.waitq_set* %68, %struct.waitq_set** %71, align 8
  %72 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %73 = call i32 @wql_mkvalid(%struct.waitq_link* %72)
  %74 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %75 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %79 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %81 = call i32 @wql_put_link(%struct.waitq_link* %80)
  br label %86

82:                                               ; preds = %52, %49
  %83 = load i32, i32* @WQSET_NOT_LINKED, align 4
  %84 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %85 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %66
  %87 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %86, %21
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @memset(%struct.waitq_set*, i32, i32) #1

declare dso_local i64 @waitq_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.waitq_link* @wql_get_reserved(i64, i32) #1

declare dso_local i32 @panic(i8*, %struct.waitq_set*) #1

declare dso_local i32 @wql_mkvalid(%struct.waitq_link*) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
