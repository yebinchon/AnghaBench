; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_save_literal.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_save_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, float }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"movb $%d, %d(#rbp)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"movw $%d, %d(#rbp)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"movl $%d, %d(#rbp)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"movl $%lu, %d(#rbp)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"movl $%u, %d(#rbp)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"internal error: <%s> <%s> <%d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @emit_save_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_save_literal(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %78 [
    i32 137, label %11
    i32 136, label %22
    i32 128, label %28
    i32 133, label %34
    i32 130, label %40
    i32 131, label %40
    i32 129, label %40
    i32 134, label %54
    i32 135, label %62
    i32 132, label %62
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20)
  br label %85

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26)
  br label %85

28:                                               ; preds = %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %31, i32 %32)
  br label %85

34:                                               ; preds = %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %37, i32 %38)
  br label %85

40:                                               ; preds = %3, %3, %3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, 4294967295
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %44, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = ashr i64 %49, 32
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 4
  %53 = call i32 @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %50, i32 %52)
  br label %85

54:                                               ; preds = %3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 8
  store float %57, float* %7, align 4
  %58 = bitcast float* %7 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %59, i32 %60)
  br label %85

62:                                               ; preds = %3, %3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = bitcast float* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, 4294967295
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %67, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = bitcast float* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = ashr i64 %73, 32
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 4
  %77 = call i32 @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %74, i32 %76)
  br label %85

78:                                               ; preds = %3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = call i32 @node2s(%struct.TYPE_8__* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = call i8* @ty2s(%struct.TYPE_7__* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %80, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %62, %54, %40, %34, %28, %22, %11
  ret void
}

declare dso_local i32 @emit(i8*, i64, i32) #1

declare dso_local i32 @error(i8*, i32, i8*, i32) #1

declare dso_local i32 @node2s(%struct.TYPE_8__*) #1

declare dso_local i8* @ty2s(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
