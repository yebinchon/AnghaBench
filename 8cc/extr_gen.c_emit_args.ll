; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_args.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@SAVE = common dso_local global i32 0, align 4
@KIND_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @emit_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_args(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @SAVE, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %56, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @vec_len(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_6__* @vec_get(i32* %13, i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KIND_STRUCT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %12
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call i32 @emit_addr(%struct.TYPE_6__* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @push_struct(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %12
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i64 @is_flotype(%struct.TYPE_7__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = call i32 @emit_expr(%struct.TYPE_6__* %43)
  %45 = call i32 @push_xmm(i32 0)
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 8
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = call i32 @emit_expr(%struct.TYPE_6__* %49)
  %51 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 8
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %7

59:                                               ; preds = %7
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @vec_len(i32*) #1

declare dso_local %struct.TYPE_6__* @vec_get(i32*, i32) #1

declare dso_local i32 @emit_addr(%struct.TYPE_6__*) #1

declare dso_local i64 @push_struct(i32) #1

declare dso_local i64 @is_flotype(%struct.TYPE_7__*) #1

declare dso_local i32 @emit_expr(%struct.TYPE_6__*) #1

declare dso_local i32 @push_xmm(i32) #1

declare dso_local i32 @push(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
