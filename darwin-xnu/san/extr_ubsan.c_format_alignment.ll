; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c_format_alignment.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c_format_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsan_violation = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.san_type_desc* }
%struct.san_type_desc = type { i8* }

@.str = private unnamed_addr constant [26 x i8] c"mis-aligned %s of 0x%llx\0A\00", align 1
@align_kinds = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"  expected %d-byte alignment, type = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ubsan_violation*, i8*, i64)* @format_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @format_alignment(%struct.ubsan_violation* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ubsan_violation*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.san_type_desc*, align 8
  store %struct.ubsan_violation* %0, %struct.ubsan_violation** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.ubsan_violation*, %struct.ubsan_violation** %4, align 8
  %10 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.san_type_desc*, %struct.san_type_desc** %12, align 8
  store %struct.san_type_desc* %13, %struct.san_type_desc** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %17, %18
  %20 = load i8**, i8*** @align_kinds, align 8
  %21 = load %struct.ubsan_violation*, %struct.ubsan_violation** %4, align 8
  %22 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i8*, i8** %20, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.ubsan_violation*, %struct.ubsan_violation** %4, align 8
  %29 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %16, i64 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %37, %38
  %40 = load %struct.ubsan_violation*, %struct.ubsan_violation** %4, align 8
  %41 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  %46 = load %struct.san_type_desc*, %struct.san_type_desc** %8, align 8
  %47 = getelementptr inbounds %struct.san_type_desc, %struct.san_type_desc* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %36, i64 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %48)
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  ret i64 %52
}

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
