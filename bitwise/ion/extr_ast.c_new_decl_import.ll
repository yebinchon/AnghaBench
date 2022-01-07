; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_ast.c_new_decl_import.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_ast.c_new_decl_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i8*, i8* }

@DECL_IMPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @new_decl_import(i32 %0, i8* %1, i32 %2, i8** %3, i64 %4, i32 %5, i8** %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  store i64 %7, i64* %16, align 8
  %18 = load i32, i32* @DECL_IMPORT, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_6__* @new_decl(i32 %18, i32 %19, i32* null)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %17, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i8**, i8*** %12, align 8
  %29 = call i8* @AST_DUP(i8** %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  store i8* %29, i8** %32, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load i8**, i8*** %15, align 8
  %42 = call i8* @AST_DUP(i8** %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i64 %46, i64* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  ret %struct.TYPE_6__* %50
}

declare dso_local %struct.TYPE_6__* @new_decl(i32, i32, i32*) #1

declare dso_local i8* @AST_DUP(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
