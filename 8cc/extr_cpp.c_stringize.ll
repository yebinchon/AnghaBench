; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_stringize.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_stringize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TSTRING = common dso_local global i32 0, align 4
@ENC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, i32*)* @stringize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @stringize(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32* (...) @make_buffer()
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @vec_len(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_8__* @vec_get(i32* %16, i32 %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @buf_len(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @buf_printf(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22, %15
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = call i32 @tok2s(%struct.TYPE_8__* %32)
  %34 = call i32 (i32*, i8*, ...) @buf_printf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @buf_write(i32* %39, i8 signext 0)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = call %struct.TYPE_8__* @copy_token(%struct.TYPE_8__* %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %8, align 8
  %43 = load i32, i32* @TSTRING, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @buf_body(i32* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @buf_len(i32* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @ENC_NONE, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %57
}

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local %struct.TYPE_8__* @vec_get(i32*, i32) #1

declare dso_local i64 @buf_len(i32*) #1

declare dso_local i32 @buf_printf(i32*, i8*, ...) #1

declare dso_local i32 @tok2s(%struct.TYPE_8__*) #1

declare dso_local i32 @buf_write(i32*, i8 signext) #1

declare dso_local %struct.TYPE_8__* @copy_token(%struct.TYPE_8__*) #1

declare dso_local i32 @buf_body(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
