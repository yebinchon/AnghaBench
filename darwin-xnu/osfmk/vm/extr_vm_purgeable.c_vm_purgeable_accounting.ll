; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_accounting.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_accounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@VM_PURGABLE_DENY = common dso_local global i64 0, align 8
@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i64 0, align 8
@VM_PURGABLE_VOLATILE = common dso_local global i32 0, align 4
@VM_PURGABLE_EMPTY = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@VM_PURGABLE_NONVOLATILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"vm_purgeable_accounting(%p): unexpected old_state=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_purgeable_accounting(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call %struct.TYPE_11__* @VM_OBJECT_OWNER(%struct.TYPE_10__* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %2
  br label %172

34:                                               ; preds = %27
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = call i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_10__* %35, i32* %9, i32* %10, i32* %11, i32* %12, i64* %13)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i64, i64* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @vm_compressor_pager_get_count(i32* %53)
  store i32 %54, i32* %8, align 4
  br label %56

55:                                               ; preds = %45, %34
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @VM_PURGABLE_VOLATILE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @VM_PURGABLE_EMPTY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %60, %56
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @ptoa_64(i32 %71)
  %73 = call i32 @ledger_debit(i32 %67, i32 %68, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ptoa_64(i32 %78)
  %80 = call i32 @ledger_debit(i32 %76, i32 %77, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i32 @ptoa_64(i32 %87)
  %89 = call i32 @ledger_credit(i32 %83, i32 %84, i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ptoa_64(i32 %94)
  %96 = call i32 @ledger_credit(i32 %92, i32 %93, i32 %95)
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %64
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @task_ledgers, i32 0, i32 0), align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @ptoa_64(i32 %108)
  %110 = call i32 @ledger_credit(i32 %102, i32 %103, i32 %109)
  br label %111

111:                                              ; preds = %99, %64
  br label %169

112:                                              ; preds = %60
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @VM_PURGABLE_NONVOLATILE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %164

116:                                              ; preds = %112
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %121, %122
  %124 = call i32 @ptoa_64(i32 %123)
  %125 = call i32 @ledger_debit(i32 %119, i32 %120, i32 %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @ptoa_64(i32 %130)
  %132 = call i32 @ledger_debit(i32 %128, i32 %129, i32 %131)
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %116
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @task_ledgers, i32 0, i32 0), align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i32 @ptoa_64(i32 %144)
  %146 = call i32 @ledger_debit(i32 %138, i32 %139, i32 %145)
  br label %147

147:                                              ; preds = %135, %116
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = sub nsw i32 %152, %153
  %155 = call i32 @ptoa_64(i32 %154)
  %156 = call i32 @ledger_credit(i32 %150, i32 %151, i32 %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @ptoa_64(i32 %161)
  %163 = call i32 @ledger_credit(i32 %159, i32 %160, i32 %162)
  br label %168

164:                                              ; preds = %112
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %147
  br label %169

169:                                              ; preds = %168, %111
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_10__* %170)
  br label %172

172:                                              ; preds = %169, %33
  ret void
}

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @VM_OBJECT_OWNER(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_10__*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @vm_compressor_pager_get_count(i32*) #1

declare dso_local i32 @ledger_debit(i32, i32, i32) #1

declare dso_local i32 @ptoa_64(i32) #1

declare dso_local i32 @ledger_credit(i32, i32, i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
