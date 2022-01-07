; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_copy_struct.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_copy_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mov #rax, #rcx\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"movq %d(#rcx), #r11\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"movq #r11, %d(#rax)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"movl %d(#rcx), #r11\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"movl #r11, %d(#rax)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"movb %d(#rcx), #r11\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"movb #r11, %d(#rax)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*)* @emit_copy_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_copy_struct(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = call i32 @emit_addr(%struct.TYPE_7__* %8)
  %10 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i32 @emit_addr(%struct.TYPE_7__* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 8
  store i32 %28, i32* %5, align 4
  br label %13

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %5, align 4
  br label %30

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %47

63:                                               ; preds = %47
  %64 = call i32 @pop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @pop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @push(i8*) #1

declare dso_local i32 @emit_addr(%struct.TYPE_7__*) #1

declare dso_local i32 @emit(i8*, ...) #1

declare dso_local i32 @pop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
