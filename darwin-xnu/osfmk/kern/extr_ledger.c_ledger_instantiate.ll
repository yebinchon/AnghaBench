; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_instantiate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.ledger_entry*, i64, %struct.TYPE_14__* }
%struct.ledger_entry = type { %struct.TYPE_13__, i8*, i8*, i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, %struct.entry_template*, i64, i32 }
%struct.entry_template = type { i32*, i32 }

@LEDGER_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@ledger_cnt = common dso_local global i32 0, align 4
@LEDGER_CREATE_INACTIVE_ENTRIES = common dso_local global i32 0, align 4
@LF_ENTRY_ACTIVE = common dso_local global i32 0, align 4
@LEDGER_ACTION_CALLBACK = common dso_local global i32 0, align 4
@LEDGER_LIMIT_INFINITY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ledger_instantiate(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ledger_entry*, align 8
  %10 = alloca %struct.entry_template*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = call i32 @template_lock(%struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i32 @template_unlock(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @zalloc(i64 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %6, align 8
  br label %34

32:                                               ; preds = %2
  %33 = call %struct.TYPE_15__* (...) @pmap_ledger_alloc()
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %6, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = icmp eq %struct.TYPE_15__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = call i32 @ledger_template_dereference(%struct.TYPE_14__* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @LEDGER_NULL, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %3, align 8
  br label %136

41:                                               ; preds = %34
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %44, align 8
  %45 = load i32, i32* @ledger_cnt, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @ledger_cnt, align 4
  %47 = sext i32 %45 to i64
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = call i32 @template_lock(%struct.TYPE_14__* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ule i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %129, %41
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %132

74:                                               ; preds = %68
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.ledger_entry*, %struct.ledger_entry** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %77, i64 %79
  store %struct.ledger_entry* %80, %struct.ledger_entry** %9, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.entry_template*, %struct.entry_template** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %83, i64 %85
  store %struct.entry_template* %86, %struct.entry_template** %10, align 8
  %87 = load %struct.entry_template*, %struct.entry_template** %10, align 8
  %88 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %91 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @LEDGER_CREATE_INACTIVE_ENTRIES, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %74
  %96 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %97 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %96, i32 0, i32 5
  %98 = load i32, i32* @LF_ENTRY_ACTIVE, align 4
  %99 = call i32 @flag_clear(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %74
  %101 = load %struct.entry_template*, %struct.entry_template** %10, align 8
  %102 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %107 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %106, i32 0, i32 5
  %108 = load i32, i32* @LEDGER_ACTION_CALLBACK, align 4
  %109 = call i32 @flag_set(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %112 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %114 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load i8*, i8** @LEDGER_LIMIT_INFINITY, align 8
  %116 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %117 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** @LEDGER_LIMIT_INFINITY, align 8
  %119 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %120 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %122 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.ledger_entry*, %struct.ledger_entry** %9, align 8
  %126 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %110
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %68

132:                                              ; preds = %68
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = call i32 @template_unlock(%struct.TYPE_14__* %133)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %3, align 8
  br label %136

136:                                              ; preds = %132, %37
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %137
}

declare dso_local i32 @template_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @template_unlock(%struct.TYPE_14__*) #1

declare dso_local i64 @zalloc(i64) #1

declare dso_local %struct.TYPE_15__* @pmap_ledger_alloc(...) #1

declare dso_local i32 @ledger_template_dereference(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flag_clear(i32*, i32) #1

declare dso_local i32 @flag_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
