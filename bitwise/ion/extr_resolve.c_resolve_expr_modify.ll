; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_modify.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }

@.str = private unnamed_addr constant [25 x i8] c"Cannot modify non-lvalue\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot modify non-modifiable type\00", align 1
@TYPE_PTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"%s only valid for integer and pointer types\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, %struct.TYPE_13__* } @resolve_expr_modify(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_14__, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call { i32, %struct.TYPE_13__* } @resolve_expr(i32 %9)
  %11 = bitcast %struct.TYPE_14__* %4 to { i32, %struct.TYPE_13__* }*
  %12 = getelementptr inbounds { i32, %struct.TYPE_13__* }, { i32, %struct.TYPE_13__* }* %11, i32 0, i32 0
  %13 = extractvalue { i32, %struct.TYPE_13__* } %10, 0
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds { i32, %struct.TYPE_13__* }, { i32, %struct.TYPE_13__* }* %11, i32 0, i32 1
  %15 = extractvalue { i32, %struct.TYPE_13__* } %10, 1
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call i32 @complete_type(%struct.TYPE_13__* %18)
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @fatal_error(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @fatal_error(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = call i64 @is_integer_type(%struct.TYPE_13__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TYPE_PTR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @token_kind_name(i32 %55)
  %57 = call i32 (i32, i8*, ...) @fatal_error(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %48, %42, %38
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call { i32, %struct.TYPE_13__* } @operand_rvalue(%struct.TYPE_13__* %59)
  %61 = bitcast %struct.TYPE_14__* %2 to { i32, %struct.TYPE_13__* }*
  %62 = getelementptr inbounds { i32, %struct.TYPE_13__* }, { i32, %struct.TYPE_13__* }* %61, i32 0, i32 0
  %63 = extractvalue { i32, %struct.TYPE_13__* } %60, 0
  store i32 %63, i32* %62, align 8
  %64 = getelementptr inbounds { i32, %struct.TYPE_13__* }, { i32, %struct.TYPE_13__* }* %61, i32 0, i32 1
  %65 = extractvalue { i32, %struct.TYPE_13__* } %60, 1
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %64, align 8
  %66 = bitcast %struct.TYPE_14__* %2 to { i32, %struct.TYPE_13__* }*
  %67 = load { i32, %struct.TYPE_13__* }, { i32, %struct.TYPE_13__* }* %66, align 8
  ret { i32, %struct.TYPE_13__* } %67
}

declare dso_local { i32, %struct.TYPE_13__* } @resolve_expr(i32) #1

declare dso_local i32 @complete_type(%struct.TYPE_13__*) #1

declare dso_local i32 @fatal_error(i32, i8*, ...) #1

declare dso_local i64 @is_integer_type(%struct.TYPE_13__*) #1

declare dso_local i32 @token_kind_name(i32) #1

declare dso_local { i32, %struct.TYPE_13__* } @operand_rvalue(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
