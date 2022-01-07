; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_entry_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.entry_template*, i32* }
%struct.entry_template = type { i32*, i32, i32, i32, i32 }

@LEDGER_NAME_MAX = common dso_local global i64 0, align 8
@LF_ENTRY_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_entry_add(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.entry_template*, align 8
  %12 = alloca %struct.entry_template*, align 8
  %13 = alloca %struct.entry_template*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load i64, i64* @LEDGER_NAME_MAX, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %4
  store i32 -1, i32* %5, align 4
  br label %135

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = call i32 @template_lock(%struct.TYPE_7__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %31
  store i32 0, i32* %16, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 %46, 24
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @os_mul_overflow(i32 %48, i32 2, i32* %16)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = call i32 @template_unlock(%struct.TYPE_7__* %52)
  store i32 -1, i32* %5, align 4
  br label %135

54:                                               ; preds = %41
  %55 = load i32, i32* %16, align 4
  %56 = call %struct.entry_template* @kalloc(i32 %55)
  store %struct.entry_template* %56, %struct.entry_template** %12, align 8
  %57 = load %struct.entry_template*, %struct.entry_template** %12, align 8
  %58 = icmp eq %struct.entry_template* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = call i32 @template_unlock(%struct.TYPE_7__* %60)
  store i32 -1, i32* %5, align 4
  br label %135

62:                                               ; preds = %54
  %63 = load %struct.entry_template*, %struct.entry_template** %12, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.entry_template*, %struct.entry_template** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @memcpy(%struct.entry_template* %63, %struct.entry_template* %66, i32 %67)
  %69 = load %struct.entry_template*, %struct.entry_template** %12, align 8
  %70 = bitcast %struct.entry_template* %69 to i8*
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @memset(i8* %73, i32 0, i32 %74)
  %76 = load i32, i32* %14, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load %struct.entry_template*, %struct.entry_template** %82, align 8
  store %struct.entry_template* %83, %struct.entry_template** %13, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = call i32 @TEMPLATE_INUSE(i32 %84, %struct.TYPE_7__* %85)
  %87 = load %struct.entry_template*, %struct.entry_template** %12, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store %struct.entry_template* %87, %struct.entry_template** %89, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = call i32 @TEMPLATE_IDLE(i32 %90, %struct.TYPE_7__* %91)
  %93 = load %struct.entry_template*, %struct.entry_template** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @kfree(%struct.entry_template* %93, i32 %94)
  br label %96

96:                                               ; preds = %62, %31
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load %struct.entry_template*, %struct.entry_template** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %99, i64 %102
  store %struct.entry_template* %103, %struct.entry_template** %11, align 8
  %104 = load %struct.entry_template*, %struct.entry_template** %11, align 8
  %105 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* @LEDGER_NAME_MAX, align 8
  %109 = call i32 @strlcpy(i32 %106, i8* %107, i64 %108)
  %110 = load %struct.entry_template*, %struct.entry_template** %11, align 8
  %111 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i64, i64* @LEDGER_NAME_MAX, align 8
  %115 = call i32 @strlcpy(i32 %112, i8* %113, i64 %114)
  %116 = load %struct.entry_template*, %struct.entry_template** %11, align 8
  %117 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %9, align 8
  %120 = load i64, i64* @LEDGER_NAME_MAX, align 8
  %121 = call i32 @strlcpy(i32 %118, i8* %119, i64 %120)
  %122 = load i32, i32* @LF_ENTRY_ACTIVE, align 4
  %123 = load %struct.entry_template*, %struct.entry_template** %11, align 8
  %124 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.entry_template*, %struct.entry_template** %11, align 8
  %126 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = trunc i64 %129 to i32
  store i32 %131, i32* %10, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = call i32 @template_unlock(%struct.TYPE_7__* %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %96, %59, %51, %30
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @template_lock(%struct.TYPE_7__*) #1

declare dso_local i64 @os_mul_overflow(i32, i32, i32*) #1

declare dso_local i32 @template_unlock(%struct.TYPE_7__*) #1

declare dso_local %struct.entry_template* @kalloc(i32) #1

declare dso_local i32 @memcpy(%struct.entry_template*, %struct.entry_template*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TEMPLATE_INUSE(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @TEMPLATE_IDLE(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.entry_template*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
