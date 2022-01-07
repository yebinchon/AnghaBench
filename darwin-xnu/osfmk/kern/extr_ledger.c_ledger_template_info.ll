; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_template_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_template_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ledger_template_info = type { i32, i32, i32 }
%struct.entry_template = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.entry_template* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LEDGER_NAME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_template_info(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ledger_template_info*, align 8
  %7 = alloca %struct.entry_template*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = call %struct.TYPE_7__* (...) @current_task()
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %101

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 12
  %38 = trunc i64 %37 to i32
  %39 = call %struct.ledger_template_info* @kalloc(i32 %38)
  store %struct.ledger_template_info* %39, %struct.ledger_template_info** %6, align 8
  %40 = load %struct.ledger_template_info*, %struct.ledger_template_info** %6, align 8
  %41 = icmp eq %struct.ledger_template_info* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %3, align 4
  br label %101

44:                                               ; preds = %33
  %45 = load %struct.ledger_template_info*, %struct.ledger_template_info** %6, align 8
  %46 = bitcast %struct.ledger_template_info* %45 to i8*
  %47 = load i8**, i8*** %4, align 8
  store i8* %46, i8** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @template_lock(%struct.TYPE_6__* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.entry_template*, %struct.entry_template** %55, align 8
  store %struct.entry_template* %56, %struct.entry_template** %7, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %93, %44
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %57
  %63 = load %struct.ledger_template_info*, %struct.ledger_template_info** %6, align 8
  %64 = call i32 @memset(%struct.ledger_template_info* %63, i32 0, i32 12)
  %65 = load %struct.ledger_template_info*, %struct.ledger_template_info** %6, align 8
  %66 = getelementptr inbounds %struct.ledger_template_info, %struct.ledger_template_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.entry_template*, %struct.entry_template** %7, align 8
  %69 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LEDGER_NAME_MAX, align 4
  %72 = call i32 @strlcpy(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.ledger_template_info*, %struct.ledger_template_info** %6, align 8
  %74 = getelementptr inbounds %struct.ledger_template_info, %struct.ledger_template_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.entry_template*, %struct.entry_template** %7, align 8
  %77 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LEDGER_NAME_MAX, align 4
  %80 = call i32 @strlcpy(i32 %75, i32 %78, i32 %79)
  %81 = load %struct.ledger_template_info*, %struct.ledger_template_info** %6, align 8
  %82 = getelementptr inbounds %struct.ledger_template_info, %struct.ledger_template_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.entry_template*, %struct.entry_template** %7, align 8
  %85 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @LEDGER_NAME_MAX, align 4
  %88 = call i32 @strlcpy(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.entry_template*, %struct.entry_template** %7, align 8
  %90 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %89, i32 1
  store %struct.entry_template* %90, %struct.entry_template** %7, align 8
  %91 = load %struct.ledger_template_info*, %struct.ledger_template_info** %6, align 8
  %92 = getelementptr inbounds %struct.ledger_template_info, %struct.ledger_template_info* %91, i32 1
  store %struct.ledger_template_info* %92, %struct.ledger_template_info** %6, align 8
  br label %93

93:                                               ; preds = %62
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %57

96:                                               ; preds = %57
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = call i32 @template_unlock(%struct.TYPE_6__* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %42, %19
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_7__* @current_task(...) #1

declare dso_local %struct.ledger_template_info* @kalloc(i32) #1

declare dso_local i32 @template_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.ledger_template_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @template_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
