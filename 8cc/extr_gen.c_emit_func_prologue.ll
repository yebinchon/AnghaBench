; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_func_prologue.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_func_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c".global %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"mov #rsp, #rbp\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sub $%d, #rsp\00", align 1
@stackpos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @emit_func_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_func_prologue(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @SAVE, align 4
  %9 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @emit_noindent(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @emit_noindent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_reg_nums(i32 %38)
  %40 = call i64 (...) @emit_regsave_area()
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %21
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @push_func_params(i32 %48, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vec_len(i32 %53)
  %55 = mul nsw i32 %54, 8
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %91, %45
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vec_len(i32 %62)
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %58
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call %struct.TYPE_6__* @vec_get(i32 %68, i32 %69)
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %6, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @align(i32 %75, i32 8)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = srem i32 %77, 8
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %3, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %65
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %58

94:                                               ; preds = %58
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @stackpos, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* @stackpos, align 4
  br label %103

103:                                              ; preds = %97, %94
  ret void
}

declare dso_local i32 @emit(i8*, ...) #1

declare dso_local i32 @emit_noindent(i8*, i32) #1

declare dso_local i32 @push(i8*) #1

declare dso_local i32 @set_reg_nums(i32) #1

declare dso_local i64 @emit_regsave_area(...) #1

declare dso_local i32 @push_func_params(i32, i32) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local %struct.TYPE_6__* @vec_get(i32, i32) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
