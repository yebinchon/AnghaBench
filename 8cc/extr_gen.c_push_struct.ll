; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_push_struct.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_push_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sub $%d, #rsp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mov #rcx, -8(#rsp)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"mov #r11, -16(#rsp)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"mov #rax, #rcx\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"movq %d(#rcx), #r11\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"mov #r11, %d(#rsp)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"movl %d(#rcx), #r11\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"movl #r11d, %d(#rsp)\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"movb %d(#rcx), #r11\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"movb #r11b, %d(#rsp)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"mov -8(#rsp), #rcx\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"mov -16(#rsp), #r11\00", align 1
@stackpos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @push_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_struct(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @SAVE, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @align(i32 %6, i32 8)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %22, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %4, align 4
  br label %13

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %4, align 4
  br label %26

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %48, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %39

51:                                               ; preds = %39
  %52 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @stackpos, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* @stackpos, align 4
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @align(i32, i32) #1

declare dso_local i32 @emit(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
