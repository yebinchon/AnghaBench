; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c_format_oob.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c_format_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsan_violation = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.san_type_desc*, %struct.san_type_desc* }
%struct.san_type_desc = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"OOB array access\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"  idx %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"  aty: ty = %s, signed = %d, width = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"  ity: ty = %s, signed = %d, width = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ubsan_violation*, i8*, i64)* @format_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @format_oob(%struct.ubsan_violation* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ubsan_violation*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.san_type_desc*, align 8
  %9 = alloca %struct.san_type_desc*, align 8
  %10 = alloca i64, align 8
  store %struct.ubsan_violation* %0, %struct.ubsan_violation** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.ubsan_violation*, %struct.ubsan_violation** %4, align 8
  %12 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.san_type_desc*, %struct.san_type_desc** %14, align 8
  store %struct.san_type_desc* %15, %struct.san_type_desc** %8, align 8
  %16 = load %struct.ubsan_violation*, %struct.ubsan_violation** %4, align 8
  %17 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.san_type_desc*, %struct.san_type_desc** %19, align 8
  store %struct.san_type_desc* %20, %struct.san_type_desc** %9, align 8
  %21 = load %struct.ubsan_violation*, %struct.ubsan_violation** %4, align 8
  %22 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %27, %28
  %30 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %26, i64 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %10, align 8
  %40 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %35, i64 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.san_type_desc*, %struct.san_type_desc** %8, align 8
  %50 = getelementptr inbounds %struct.san_type_desc, %struct.san_type_desc* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.san_type_desc*, %struct.san_type_desc** %8, align 8
  %53 = getelementptr inbounds %struct.san_type_desc, %struct.san_type_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.san_type_desc*, %struct.san_type_desc** %8, align 8
  %56 = getelementptr inbounds %struct.san_type_desc, %struct.san_type_desc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %45, i64 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %54, i32 %58)
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %65, %66
  %68 = load %struct.san_type_desc*, %struct.san_type_desc** %9, align 8
  %69 = getelementptr inbounds %struct.san_type_desc, %struct.san_type_desc* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.san_type_desc*, %struct.san_type_desc** %9, align 8
  %72 = getelementptr inbounds %struct.san_type_desc, %struct.san_type_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.san_type_desc*, %struct.san_type_desc** %9, align 8
  %75 = getelementptr inbounds %struct.san_type_desc, %struct.san_type_desc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 1, %76
  %78 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %64, i64 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %70, i32 %73, i32 %77)
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
