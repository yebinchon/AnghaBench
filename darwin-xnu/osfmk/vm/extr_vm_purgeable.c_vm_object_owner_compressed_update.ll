; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_object_owner_compressed_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_object_owner_compressed_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@VM_OBJECT_LEDGER_TAG_NONE = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [72 x i8] c"vm_purgeable_compressed_update(): unexpected purgable %d for object %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_owner_compressed_update(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call %struct.TYPE_11__* @VM_OBJECT_OWNER(%struct.TYPE_10__* %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 131
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = icmp eq %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %27, %17, %2
  br label %121

36:                                               ; preds = %32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = call i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_10__* %37, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %115 [
    i32 131, label %42
    i32 129, label %50
    i32 128, label %94
    i32 130, label %94
  ]

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VM_OBJECT_LEDGER_TAG_NONE, align 4
  %47 = icmp ne i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %36, %42
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ptoa_64(i32 %58)
  %60 = call i32 @ledger_credit(i32 %56, i32 %57, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @task_ledgers, i32 0, i32 0), align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ptoa_64(i32 %68)
  %70 = call i32 @ledger_credit(i32 %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %63, %53
  br label %93

72:                                               ; preds = %50
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @ptoa_64(i32 %78)
  %80 = call i32 @ledger_debit(i32 %75, i32 %76, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %72
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @task_ledgers, i32 0, i32 0), align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 0, %88
  %90 = call i32 @ptoa_64(i32 %89)
  %91 = call i32 @ledger_debit(i32 %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %83, %72
  br label %93

93:                                               ; preds = %92, %71
  br label %121

94:                                               ; preds = %36, %36
  %95 = load i32, i32* %4, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @ptoa_64(i32 %102)
  %104 = call i32 @ledger_credit(i32 %100, i32 %101, i32 %103)
  br label %114

105:                                              ; preds = %94
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %4, align 4
  %111 = sub nsw i32 0, %110
  %112 = call i32 @ptoa_64(i32 %111)
  %113 = call i32 @ledger_debit(i32 %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %105, %97
  br label %121

115:                                              ; preds = %36
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = call i32 @panic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %118, %struct.TYPE_10__* %119)
  br label %121

121:                                              ; preds = %35, %115, %114, %93
  ret void
}

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @VM_OBJECT_OWNER(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_10__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ledger_credit(i32, i32, i32) #1

declare dso_local i32 @ptoa_64(i32) #1

declare dso_local i32 @ledger_debit(i32, i32, i32) #1

declare dso_local i32 @panic(i8*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
