; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_assign_struct_ref.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_assign_struct_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"internal error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @emit_assign_struct_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_assign_struct_ref(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @SAVE, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %67 [
    i32 129, label %11
    i32 130, label %27
    i32 128, label %40
    i32 131, label %52
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = call i32 @ensure_lvar_init(%struct.TYPE_13__* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @emit_lsave(%struct.TYPE_12__* %14, i32 %25)
  br label %71

27:                                               ; preds = %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @emit_gsave(i32 %30, %struct.TYPE_12__* %31, i32 %38)
  br label %71

40:                                               ; preds = %3
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %45, %50
  call void @emit_assign_struct_ref(%struct.TYPE_13__* %43, %struct.TYPE_12__* %44, i32 %51)
  br label %71

52:                                               ; preds = %3
  %53 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @emit_expr(i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @do_emit_assign_deref(%struct.TYPE_12__* %58, i32 %65)
  br label %71

67:                                               ; preds = %3
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = call i32 @node2s(%struct.TYPE_13__* %68)
  %70 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %52, %40, %27, %11
  ret void
}

declare dso_local i32 @ensure_lvar_init(%struct.TYPE_13__*) #1

declare dso_local i32 @emit_lsave(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @emit_gsave(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @push(i8*) #1

declare dso_local i32 @emit_expr(i32) #1

declare dso_local i32 @do_emit_assign_deref(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @node2s(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
